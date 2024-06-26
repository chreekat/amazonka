{-# LANGUAGE TemplateHaskell #-}

-- Module      : Gen.Types.Config
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla xtPublic License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.Types.Config where

import Control.Error
import Control.Lens hiding ((.=))
import Data.Aeson
import Data.List ((\\))
import qualified Data.List as List
import Data.Ord
import Data.String (fromString)
import Data.Text (Text)
import qualified Data.Text as Text
import Data.Time
import GHC.Generics (Generic)
import GHC.TypeLits
import Gen.TH
import Gen.Text
import Gen.Types.Ann
import Gen.Types.Data
import Gen.Types.Id
import Gen.Types.Map
import Gen.Types.NS
import Gen.Types.Service
import Gen.Types.TypeOf
import System.FilePath ((</>))
import qualified System.FilePath as FilePath
import Text.EDE (Template)

data Replace = Replace
  { _replaceName :: Id,
    _replaceUnderive :: [Derive]
  }
  deriving (Eq, Show, Generic)

makeLenses ''Replace

instance FromJSON Replace where
  parseJSON = gParseJSON' (lower & field %~ (. stripPrefix "replace"))

instance TypeOf Replace where
  typeOf Replace {..} =
    TType (typeId _replaceName) (derivingBase \\ _replaceUnderive)

data Override = Override
  { -- | Rename type
    _renamedTo :: Maybe Id,
    -- | Existing type that supplants this type
    _replacedBy :: Maybe Replace,
    -- | Required fields
    _requiredFields :: [Id],
    -- | Optional fields
    _optionalFields :: [Id],
    -- | Rename fields
    _renamedFields :: Map Id Id
  }
  deriving (Eq, Show)

makeLenses ''Override

instance FromJSON Override where
  parseJSON = withObject "override" $ \o ->
    Override
      <$> (o .:? "renamedTo" <&> fmap (\unsafe -> Id unsafe unsafe))
      <*> o .:? "replacedBy"
      <*> o .:? "requiredFields" .!= mempty
      <*> o .:? "optionalFields" .!= mempty
      <*> o .:? "renamedFields" .!= mempty

defaultOverride :: Override
defaultOverride =
  Override
    { _renamedTo = Nothing,
      _replacedBy = Nothing,
      _requiredFields = mempty,
      _optionalFields = mempty,
      _renamedFields = mempty
    }

newtype Version (v :: Symbol) = Version {semver :: Text}
  deriving (Eq, Show)

instance ToJSON (Version v) where
  toJSON (Version v) = toJSON v

type LibraryVer = Version "library"

type ClientVer = Version "client"

data Versions = Versions
  { _libraryVersion :: LibraryVer,
    _clientVersion :: ClientVer
  }
  deriving (Show)

makeClassy ''Versions

data Config = Config
  { _libraryName :: Text,
    _operationModules :: [NS],
    -- | Custom plugin functions to be applied to the generated 'AWSRequest.request'
    -- instance body. Each function is of the form @Request a -> Request a@.
    --
    -- Using a wildcard key of @*@ in the configuration results in the plugins
    -- being applied to _all_ operations. The wildcard is only applied if no
    -- matching operation name is found in the map.
    _operationPlugins :: Map Id [Text],
    _typeModules :: [NS],
    _typeOverrides :: Map Id Override,
    _ignoredWaiters :: Set Id,
    _ignoredPaginators :: Set Id,
    _extraDependencies :: [Text]
  }

makeClassy ''Config

instance FromJSON Config where
  parseJSON = withObject "config" $ \o ->
    Config
      <$> o .: "libraryName"
      <*> o .:? "operationModules" .!= mempty
      <*> o .:? "operationPlugins" .!= mempty
      <*> o .:? "typeModules" .!= mempty
      <*> o .:? "typeOverrides" .!= mempty
      <*> o .:? "ignoredWaiters" .!= mempty
      <*> o .:? "ignoredPaginators" .!= mempty
      <*> o .:? "extraDependencies" .!= mempty

data Library = Library
  { _versions' :: Versions,
    _config' :: Config,
    _service' :: Service Identity SData SData WData,
    _instance' :: Fun
  }

makeLenses ''Library

instance HasMetadata Library Identity where
  metadata = service' . metadata'

instance HasService Library Identity SData SData WData where
  service = service'

instance HasConfig Library where
  config = config'

instance HasVersions Library where
  versions = versions'

instance ToJSON Library where
  toJSON l = Object (x <> y)
    where
      y = case toJSON (l ^. metadata) of
        Object obj -> obj
        oops -> error $ "metadata: expected JSON object, got " ++ show oops
      x =
        mconcat
          [ "documentation" .= (l ^. documentation),
            "libraryName" .= (l ^. libraryName),
            "libraryNamespace" .= (l ^. libraryNS),
            "libraryHyphenated" .= nsHyphenate (l ^. libraryNS),
            "libraryVersion" .= (l ^. libraryVersion),
            "clientVersion" .= (l ^. clientVersion),
            "serviceInstance" .= (l ^. instance'),
            "typeModules" .= List.sort (l ^. typeModules),
            "operationModules" .= List.sort (l ^. operationModules),
            "exposedModules" .= List.sort (l ^. exposedModules),
            "otherModules" .= List.sort (l ^. otherModules),
            "extraDependencies" .= List.sort (l ^. extraDependencies),
            "operations" .= (l ^.. operations . each),
            "shapes" .= List.sort (l ^.. shapes . each),
            "waiters" .= (l ^.. waiters . each)
          ]

-- FIXME: Remove explicit construction of getters, just use functions.
libraryNS, typesNS, waitersNS, fixturesNS, lensNS :: Getter Library NS
libraryNS = serviceAbbrev . to (mappend "Network.AWS" . mkNS)
typesNS = libraryNS . to (<> "Types")
waitersNS = libraryNS . to (<> "Waiters")
fixturesNS = serviceAbbrev . to (mappend "Test.AWS.Gen" . mkNS)
lensNS = libraryNS . to (<> "Lens")

otherModules :: Getter Library [NS]
otherModules = to f
  where
    f x =
      x ^. operationModules
        <> x ^. typeModules
        <> mapMaybe (shapeNS x) (x ^.. shapes . each)
    shapeNS x s@(Prod _ _ _) = Just $ (x ^. typesNS) <> ((mkNS . typeId) $ identifier s)
    shapeNS x s@(Sum _ _ _) = Just $ (x ^. typesNS) <> ((mkNS . typeId) $ identifier s)
    shapeNS _ (Fun _) = Nothing

exposedModules :: Getter Library [NS]
exposedModules = to f
  where
    f x =
      let ns = x ^. libraryNS
       in x ^. typesNS :
          x ^. lensNS :
          x ^. waitersNS :
          x ^.. operations . each . to (operationNS ns . view opName)

data Templates = Templates
  { cabalTemplate :: Template,
    tocTemplate :: Template,
    waitersTemplate :: Template,
    readmeTemplate :: Template,
    operationTemplate :: Template,
    typesTemplate :: Template,
    lensTemplate :: Template,
    sumTemplate :: Template,
    productTemplate :: Template,
    testMainTemplate :: Template,
    testNamespaceTemplate :: Template,
    testInternalTemplate :: Template,
    fixturesTemplate :: Template,
    fixtureRequestTemplate :: Template,
    blankTemplate :: Template
  }

data Model = Model
  { _modelName :: Text,
    _modelVersions :: [UTCTime],
    _modelVersion :: UTCTime,
    _modelPath :: FilePath
  }
  deriving (Eq, Show)

makeLenses ''Model

configFile, annexFile :: Model -> FilePath
configFile = flip FilePath.addExtension "json" . Text.unpack . _modelName
annexFile = configFile

serviceFile, waitersFile, pagersFile :: Model -> FilePath
serviceFile = flip FilePath.combine "service-2.json" . _modelPath
waitersFile = flip FilePath.combine "waiters-2.json" . _modelPath
pagersFile = flip FilePath.combine "paginators-1.json" . _modelPath

loadModel :: FilePath -> [FilePath] -> Either String Model
loadModel path xs = do
  version <- headErr ("No valid model versions found in " ++ show xs) sortedVersions

  pure
    Model
      { _modelName = fromString (FilePath.takeFileName path),
        _modelVersions = map fst sortedVersions,
        _modelVersion = fst version,
        _modelPath = path </> snd version
      }
  where
    sortedVersions =
      List.sortOn Down (mapMaybe parseVersion xs)

    parseVersion date =
      (,date)
        <$> parseTimeM
          True
          defaultTimeLocale
          (iso8601DateFormat Nothing)
          (FilePath.takeFileName date)
