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
-- Module      : Network.AWS.MediaConvert.Types.DvbSubtitleShadowColor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DvbSubtitleShadowColor
  ( DvbSubtitleShadowColor
      ( ..,
        DvbSubtitleShadowColor_AUTO,
        DvbSubtitleShadowColor_BLACK,
        DvbSubtitleShadowColor_NONE,
        DvbSubtitleShadowColor_WHITE
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

-- | Specifies the color of the shadow cast by the captions. All burn-in and
-- DVB-Sub font settings must match.
newtype DvbSubtitleShadowColor = DvbSubtitleShadowColor'
  { fromDvbSubtitleShadowColor ::
      Core.Text
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
      Core.FromText,
      Core.ToText,
      Core.ToByteString,
      Core.ToLog,
      Core.ToHeader,
      Core.ToQuery,
      Core.FromJSON,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromXML,
      Core.ToXML
    )

pattern DvbSubtitleShadowColor_AUTO :: DvbSubtitleShadowColor
pattern DvbSubtitleShadowColor_AUTO = DvbSubtitleShadowColor' "AUTO"

pattern DvbSubtitleShadowColor_BLACK :: DvbSubtitleShadowColor
pattern DvbSubtitleShadowColor_BLACK = DvbSubtitleShadowColor' "BLACK"

pattern DvbSubtitleShadowColor_NONE :: DvbSubtitleShadowColor
pattern DvbSubtitleShadowColor_NONE = DvbSubtitleShadowColor' "NONE"

pattern DvbSubtitleShadowColor_WHITE :: DvbSubtitleShadowColor
pattern DvbSubtitleShadowColor_WHITE = DvbSubtitleShadowColor' "WHITE"

{-# COMPLETE
  DvbSubtitleShadowColor_AUTO,
  DvbSubtitleShadowColor_BLACK,
  DvbSubtitleShadowColor_NONE,
  DvbSubtitleShadowColor_WHITE,
  DvbSubtitleShadowColor'
  #-}
