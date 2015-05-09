{-# LANGUAGE LambdaCase        #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ViewPatterns      #-}

-- Module      : Compiler.Rewrite.Prefix
-- Copyright   : (c) 2013-2015 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

module Compiler.Rewrite.Prefix
    ( prefixes
    ) where

import           Compiler.Formatting
import           Compiler.Text
import           Compiler.Types
import           Control.Lens
import           Control.Monad.Except
import           Control.Monad.State
import           Data.CaseInsensitive (CI)
import qualified Data.CaseInsensitive as CI
import           Data.Hashable
import qualified Data.HashMap.Strict  as Map
import qualified Data.HashSet         as Set
import           Data.Maybe
import           Data.Monoid
import           Data.Text            (Text)
import qualified Data.Text            as Text
import           Data.Text.Manipulate

type Prefixes = StateT (Map (CI Text) (Set (CI Text))) (Either Error)

-- FIXME: some assurances about stability of prefixes.

prefixes :: Map Id (ShapeF a) -> Either Error (Map Id Text)
prefixes = (`evalStateT` mempty) . kvTraverseMaybe go
  where
    go :: Id -> ShapeF a -> Prefixes (Maybe Text)
    go (view memberId -> n) = \case
        Struct _ s  -> Just <$> do
            let hs = heuristics n
                xs = keys (^. ciId) (s ^. members)
            uniq n hs xs

        Enum   _ vs -> Just <$> do
            let hs = mempty : heuristics n
                xs = keys CI.mk vs
            uniq n hs xs

        _           -> return Nothing

    uniq :: Text -> [CI Text] -> Set (CI Text) -> Prefixes Text
    uniq n [] xs = do
        s <- get
        let hs  = heuristics n
            f h = sformat ("\n" % soriginal % " => " % shown) h (Map.lookup h s)
        throwError $
            format ("Error prefixing: " % stext %
                    ", fields: "        % shown %
                    scomma)
                   n (Set.toList xs) (map f hs)

    uniq n (h:hs) xs = do
        m <- gets (Map.lookup h)
        case m of
            Just ys | overlap ys xs
                -> uniq n hs xs
            _   -> modify (Map.insertWith (<>) h xs) >> return (CI.original h)

    overlap :: (Eq a, Hashable a) => Set a -> Set a -> Bool
    overlap xs ys = not . Set.null $ Set.intersection xs ys

    keys :: (Eq b, Hashable b) => (a -> b) -> Map a c -> Set b
    keys f = Set.fromList . map f . Map.keys

-- | Acronym preference list.
heuristics :: Text -> [CI Text]
heuristics (camelAcronym -> n) = map CI.mk (rules ++ ordinals)
  where
    -- Append an ordinal to the generated acronyms.
    ordinals = concatMap (\i -> map (\x -> mappend x (num i)) rules) [1..3]

    -- Acronym preference list.
    rules = catMaybes [r1, r2, r3, r4, r5]

    -- SomeTestTType -> STT
    r1 = toAcronym n

    -- SomeTestTType -> S
    r3 = Text.toUpper <$> safeHead n

    -- SomeTestTType -> Som
    r2 | Text.length n <= 3 = Just n
       | otherwise          = Just (Text.take 3 n)

    -- Some -> Some || SomeTestTType -> Some
    r4 = upperHead <$> listToMaybe (splitWords n)

    -- VpcPeeringInfo -> VPCPI
    r5 = toAcronym (upperAcronym n)

    num :: Int -> Text
    num = Text.pack . show
