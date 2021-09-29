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
-- Module      : Network.AWS.MediaConvert.Types.DashIsoIntervalCadence
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DashIsoIntervalCadence
  ( DashIsoIntervalCadence
      ( ..,
        DashIsoIntervalCadence_FOLLOW_CUSTOM,
        DashIsoIntervalCadence_FOLLOW_IFRAME
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

-- | The cadence MediaConvert follows for generating thumbnails. If set to
-- FOLLOW_IFRAME, MediaConvert generates thumbnails for each IDR frame in
-- the output (matching the GOP cadence). If set to FOLLOW_CUSTOM,
-- MediaConvert generates thumbnails according to the interval you specify
-- in thumbnailInterval.
newtype DashIsoIntervalCadence = DashIsoIntervalCadence'
  { fromDashIsoIntervalCadence ::
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

pattern DashIsoIntervalCadence_FOLLOW_CUSTOM :: DashIsoIntervalCadence
pattern DashIsoIntervalCadence_FOLLOW_CUSTOM = DashIsoIntervalCadence' "FOLLOW_CUSTOM"

pattern DashIsoIntervalCadence_FOLLOW_IFRAME :: DashIsoIntervalCadence
pattern DashIsoIntervalCadence_FOLLOW_IFRAME = DashIsoIntervalCadence' "FOLLOW_IFRAME"

{-# COMPLETE
  DashIsoIntervalCadence_FOLLOW_CUSTOM,
  DashIsoIntervalCadence_FOLLOW_IFRAME,
  DashIsoIntervalCadence'
  #-}
