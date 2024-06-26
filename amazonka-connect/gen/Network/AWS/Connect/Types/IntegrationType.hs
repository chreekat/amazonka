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
-- Module      : Network.AWS.Connect.Types.IntegrationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.IntegrationType
  ( IntegrationType
      ( ..,
        IntegrationType_EVENT,
        IntegrationType_PINPOINT_APP,
        IntegrationType_VOICE_ID,
        IntegrationType_WISDOM_ASSISTANT,
        IntegrationType_WISDOM_KNOWLEDGE_BASE
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype IntegrationType = IntegrationType'
  { fromIntegrationType ::
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

pattern IntegrationType_EVENT :: IntegrationType
pattern IntegrationType_EVENT = IntegrationType' "EVENT"

pattern IntegrationType_PINPOINT_APP :: IntegrationType
pattern IntegrationType_PINPOINT_APP = IntegrationType' "PINPOINT_APP"

pattern IntegrationType_VOICE_ID :: IntegrationType
pattern IntegrationType_VOICE_ID = IntegrationType' "VOICE_ID"

pattern IntegrationType_WISDOM_ASSISTANT :: IntegrationType
pattern IntegrationType_WISDOM_ASSISTANT = IntegrationType' "WISDOM_ASSISTANT"

pattern IntegrationType_WISDOM_KNOWLEDGE_BASE :: IntegrationType
pattern IntegrationType_WISDOM_KNOWLEDGE_BASE = IntegrationType' "WISDOM_KNOWLEDGE_BASE"

{-# COMPLETE
  IntegrationType_EVENT,
  IntegrationType_PINPOINT_APP,
  IntegrationType_VOICE_ID,
  IntegrationType_WISDOM_ASSISTANT,
  IntegrationType_WISDOM_KNOWLEDGE_BASE,
  IntegrationType'
  #-}
