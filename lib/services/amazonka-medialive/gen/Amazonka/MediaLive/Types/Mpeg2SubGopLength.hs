{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.MediaLive.Types.Mpeg2SubGopLength
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaLive.Types.Mpeg2SubGopLength
  ( Mpeg2SubGopLength
      ( ..,
        Mpeg2SubGopLength_DYNAMIC,
        Mpeg2SubGopLength_FIXED
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Mpeg2 Sub Gop Length
newtype Mpeg2SubGopLength = Mpeg2SubGopLength'
  { fromMpeg2SubGopLength ::
      Data.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Data.FromText,
      Data.ToText,
      Data.ToByteString,
      Data.ToLog,
      Data.ToHeader,
      Data.ToQuery,
      Data.FromJSON,
      Data.FromJSONKey,
      Data.ToJSON,
      Data.ToJSONKey,
      Data.FromXML,
      Data.ToXML
    )

pattern Mpeg2SubGopLength_DYNAMIC :: Mpeg2SubGopLength
pattern Mpeg2SubGopLength_DYNAMIC = Mpeg2SubGopLength' "DYNAMIC"

pattern Mpeg2SubGopLength_FIXED :: Mpeg2SubGopLength
pattern Mpeg2SubGopLength_FIXED = Mpeg2SubGopLength' "FIXED"

{-# COMPLETE
  Mpeg2SubGopLength_DYNAMIC,
  Mpeg2SubGopLength_FIXED,
  Mpeg2SubGopLength'
  #-}
