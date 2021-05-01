{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.PipelineExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.PipelineExecutionStatus
  ( PipelineExecutionStatus
      ( ..,
        PipelineExecutionStatus_Executing,
        PipelineExecutionStatus_Failed,
        PipelineExecutionStatus_Stopped,
        PipelineExecutionStatus_Stopping,
        PipelineExecutionStatus_Succeeded
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PipelineExecutionStatus = PipelineExecutionStatus'
  { fromPipelineExecutionStatus ::
      Prelude.Text
  }
  deriving
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic,
      Prelude.Hashable,
      Prelude.NFData,
      Prelude.FromText,
      Prelude.ToText,
      Prelude.ToByteString,
      Prelude.ToLog,
      Prelude.ToHeader,
      Prelude.ToQuery,
      Prelude.FromJSON,
      Prelude.FromJSONKey,
      Prelude.ToJSON,
      Prelude.ToJSONKey,
      Prelude.FromXML,
      Prelude.ToXML
    )

pattern PipelineExecutionStatus_Executing :: PipelineExecutionStatus
pattern PipelineExecutionStatus_Executing = PipelineExecutionStatus' "Executing"

pattern PipelineExecutionStatus_Failed :: PipelineExecutionStatus
pattern PipelineExecutionStatus_Failed = PipelineExecutionStatus' "Failed"

pattern PipelineExecutionStatus_Stopped :: PipelineExecutionStatus
pattern PipelineExecutionStatus_Stopped = PipelineExecutionStatus' "Stopped"

pattern PipelineExecutionStatus_Stopping :: PipelineExecutionStatus
pattern PipelineExecutionStatus_Stopping = PipelineExecutionStatus' "Stopping"

pattern PipelineExecutionStatus_Succeeded :: PipelineExecutionStatus
pattern PipelineExecutionStatus_Succeeded = PipelineExecutionStatus' "Succeeded"

{-# COMPLETE
  PipelineExecutionStatus_Executing,
  PipelineExecutionStatus_Failed,
  PipelineExecutionStatus_Stopped,
  PipelineExecutionStatus_Stopping,
  PipelineExecutionStatus_Succeeded,
  PipelineExecutionStatus'
  #-}