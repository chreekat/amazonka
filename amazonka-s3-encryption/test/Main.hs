{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Main
-- Copyright   : (c) 2013-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Main (main) where

import Test.AWS.S3.Encryption.Envelope
import Test.Tasty

main :: IO ()
main =
  defaultMain $
    testGroup
      "S3-encryption"
      [ testGroup "envelope" envelopeTests
      ]
