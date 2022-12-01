{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.SWF.Types.CancelTimerFailedEventAttributes
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SWF.Types.CancelTimerFailedEventAttributes where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SWF.Types.CancelTimerFailedCause

-- | Provides the details of the @CancelTimerFailed@ event.
--
-- /See:/ 'newCancelTimerFailedEventAttributes' smart constructor.
data CancelTimerFailedEventAttributes = CancelTimerFailedEventAttributes'
  { -- | The timerId provided in the @CancelTimer@ decision that failed.
    timerId :: Prelude.Text,
    -- | The cause of the failure. This information is generated by the system
    -- and can be useful for diagnostic purposes.
    --
    -- If @cause@ is set to @OPERATION_NOT_PERMITTED@, the decision failed
    -- because it lacked sufficient permissions. For details and example IAM
    -- policies, see
    -- <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>
    -- in the /Amazon SWF Developer Guide/.
    cause :: CancelTimerFailedCause,
    -- | The ID of the @DecisionTaskCompleted@ event corresponding to the
    -- decision task that resulted in the @CancelTimer@ decision to cancel this
    -- timer. This information can be useful for diagnosing problems by tracing
    -- back the chain of events leading up to this event.
    decisionTaskCompletedEventId :: Prelude.Integer
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CancelTimerFailedEventAttributes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'timerId', 'cancelTimerFailedEventAttributes_timerId' - The timerId provided in the @CancelTimer@ decision that failed.
--
-- 'cause', 'cancelTimerFailedEventAttributes_cause' - The cause of the failure. This information is generated by the system
-- and can be useful for diagnostic purposes.
--
-- If @cause@ is set to @OPERATION_NOT_PERMITTED@, the decision failed
-- because it lacked sufficient permissions. For details and example IAM
-- policies, see
-- <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>
-- in the /Amazon SWF Developer Guide/.
--
-- 'decisionTaskCompletedEventId', 'cancelTimerFailedEventAttributes_decisionTaskCompletedEventId' - The ID of the @DecisionTaskCompleted@ event corresponding to the
-- decision task that resulted in the @CancelTimer@ decision to cancel this
-- timer. This information can be useful for diagnosing problems by tracing
-- back the chain of events leading up to this event.
newCancelTimerFailedEventAttributes ::
  -- | 'timerId'
  Prelude.Text ->
  -- | 'cause'
  CancelTimerFailedCause ->
  -- | 'decisionTaskCompletedEventId'
  Prelude.Integer ->
  CancelTimerFailedEventAttributes
newCancelTimerFailedEventAttributes
  pTimerId_
  pCause_
  pDecisionTaskCompletedEventId_ =
    CancelTimerFailedEventAttributes'
      { timerId =
          pTimerId_,
        cause = pCause_,
        decisionTaskCompletedEventId =
          pDecisionTaskCompletedEventId_
      }

-- | The timerId provided in the @CancelTimer@ decision that failed.
cancelTimerFailedEventAttributes_timerId :: Lens.Lens' CancelTimerFailedEventAttributes Prelude.Text
cancelTimerFailedEventAttributes_timerId = Lens.lens (\CancelTimerFailedEventAttributes' {timerId} -> timerId) (\s@CancelTimerFailedEventAttributes' {} a -> s {timerId = a} :: CancelTimerFailedEventAttributes)

-- | The cause of the failure. This information is generated by the system
-- and can be useful for diagnostic purposes.
--
-- If @cause@ is set to @OPERATION_NOT_PERMITTED@, the decision failed
-- because it lacked sufficient permissions. For details and example IAM
-- policies, see
-- <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>
-- in the /Amazon SWF Developer Guide/.
cancelTimerFailedEventAttributes_cause :: Lens.Lens' CancelTimerFailedEventAttributes CancelTimerFailedCause
cancelTimerFailedEventAttributes_cause = Lens.lens (\CancelTimerFailedEventAttributes' {cause} -> cause) (\s@CancelTimerFailedEventAttributes' {} a -> s {cause = a} :: CancelTimerFailedEventAttributes)

-- | The ID of the @DecisionTaskCompleted@ event corresponding to the
-- decision task that resulted in the @CancelTimer@ decision to cancel this
-- timer. This information can be useful for diagnosing problems by tracing
-- back the chain of events leading up to this event.
cancelTimerFailedEventAttributes_decisionTaskCompletedEventId :: Lens.Lens' CancelTimerFailedEventAttributes Prelude.Integer
cancelTimerFailedEventAttributes_decisionTaskCompletedEventId = Lens.lens (\CancelTimerFailedEventAttributes' {decisionTaskCompletedEventId} -> decisionTaskCompletedEventId) (\s@CancelTimerFailedEventAttributes' {} a -> s {decisionTaskCompletedEventId = a} :: CancelTimerFailedEventAttributes)

instance
  Core.FromJSON
    CancelTimerFailedEventAttributes
  where
  parseJSON =
    Core.withObject
      "CancelTimerFailedEventAttributes"
      ( \x ->
          CancelTimerFailedEventAttributes'
            Prelude.<$> (x Core..: "timerId")
            Prelude.<*> (x Core..: "cause")
            Prelude.<*> (x Core..: "decisionTaskCompletedEventId")
      )

instance
  Prelude.Hashable
    CancelTimerFailedEventAttributes
  where
  hashWithSalt
    _salt
    CancelTimerFailedEventAttributes' {..} =
      _salt `Prelude.hashWithSalt` timerId
        `Prelude.hashWithSalt` cause
        `Prelude.hashWithSalt` decisionTaskCompletedEventId

instance
  Prelude.NFData
    CancelTimerFailedEventAttributes
  where
  rnf CancelTimerFailedEventAttributes' {..} =
    Prelude.rnf timerId
      `Prelude.seq` Prelude.rnf cause
      `Prelude.seq` Prelude.rnf decisionTaskCompletedEventId
