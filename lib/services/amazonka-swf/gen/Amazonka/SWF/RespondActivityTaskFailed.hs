{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.SWF.RespondActivityTaskFailed
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Used by workers to tell the service that the ActivityTask identified by
-- the @taskToken@ has failed with @reason@ (if specified). The @reason@
-- and @details@ appear in the @ActivityTaskFailed@ event added to the
-- workflow history.
--
-- A task is considered open from the time that it is scheduled until it is
-- closed. Therefore a task is reported as open while a worker is
-- processing it. A task is closed after it has been specified in a call to
-- RespondActivityTaskCompleted, RespondActivityTaskCanceled,
-- RespondActivityTaskFailed, or the task has
-- <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types timed out>.
--
-- __Access Control__
--
-- You can use IAM policies to control this action\'s access to Amazon SWF
-- resources as follows:
--
-- -   Use a @Resource@ element with the domain name to limit the action to
--     only specified domains.
--
-- -   Use an @Action@ element to allow or deny permission to call this
--     action.
--
-- -   You cannot use an IAM policy to constrain this action\'s parameters.
--
-- If the caller doesn\'t have sufficient permissions to invoke the action,
-- or the parameter values fall outside the specified constraints, the
-- action fails. The associated event attribute\'s @cause@ parameter is set
-- to @OPERATION_NOT_PERMITTED@. For details and example IAM policies, see
-- <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>
-- in the /Amazon SWF Developer Guide/.
module Amazonka.SWF.RespondActivityTaskFailed
  ( -- * Creating a Request
    RespondActivityTaskFailed (..),
    newRespondActivityTaskFailed,

    -- * Request Lenses
    respondActivityTaskFailed_details,
    respondActivityTaskFailed_reason,
    respondActivityTaskFailed_taskToken,

    -- * Destructuring the Response
    RespondActivityTaskFailedResponse (..),
    newRespondActivityTaskFailedResponse,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SWF.Types

-- | /See:/ 'newRespondActivityTaskFailed' smart constructor.
data RespondActivityTaskFailed = RespondActivityTaskFailed'
  { -- | Detailed information about the failure.
    details :: Prelude.Maybe Prelude.Text,
    -- | Description of the error that may assist in diagnostics.
    reason :: Prelude.Maybe Prelude.Text,
    -- | The @taskToken@ of the ActivityTask.
    --
    -- @taskToken@ is generated by the service and should be treated as an
    -- opaque value. If the task is passed to another process, its @taskToken@
    -- must also be passed. This enables it to provide its progress and respond
    -- with results.
    taskToken :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RespondActivityTaskFailed' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'details', 'respondActivityTaskFailed_details' - Detailed information about the failure.
--
-- 'reason', 'respondActivityTaskFailed_reason' - Description of the error that may assist in diagnostics.
--
-- 'taskToken', 'respondActivityTaskFailed_taskToken' - The @taskToken@ of the ActivityTask.
--
-- @taskToken@ is generated by the service and should be treated as an
-- opaque value. If the task is passed to another process, its @taskToken@
-- must also be passed. This enables it to provide its progress and respond
-- with results.
newRespondActivityTaskFailed ::
  -- | 'taskToken'
  Prelude.Text ->
  RespondActivityTaskFailed
newRespondActivityTaskFailed pTaskToken_ =
  RespondActivityTaskFailed'
    { details =
        Prelude.Nothing,
      reason = Prelude.Nothing,
      taskToken = pTaskToken_
    }

-- | Detailed information about the failure.
respondActivityTaskFailed_details :: Lens.Lens' RespondActivityTaskFailed (Prelude.Maybe Prelude.Text)
respondActivityTaskFailed_details = Lens.lens (\RespondActivityTaskFailed' {details} -> details) (\s@RespondActivityTaskFailed' {} a -> s {details = a} :: RespondActivityTaskFailed)

-- | Description of the error that may assist in diagnostics.
respondActivityTaskFailed_reason :: Lens.Lens' RespondActivityTaskFailed (Prelude.Maybe Prelude.Text)
respondActivityTaskFailed_reason = Lens.lens (\RespondActivityTaskFailed' {reason} -> reason) (\s@RespondActivityTaskFailed' {} a -> s {reason = a} :: RespondActivityTaskFailed)

-- | The @taskToken@ of the ActivityTask.
--
-- @taskToken@ is generated by the service and should be treated as an
-- opaque value. If the task is passed to another process, its @taskToken@
-- must also be passed. This enables it to provide its progress and respond
-- with results.
respondActivityTaskFailed_taskToken :: Lens.Lens' RespondActivityTaskFailed Prelude.Text
respondActivityTaskFailed_taskToken = Lens.lens (\RespondActivityTaskFailed' {taskToken} -> taskToken) (\s@RespondActivityTaskFailed' {} a -> s {taskToken = a} :: RespondActivityTaskFailed)

instance Core.AWSRequest RespondActivityTaskFailed where
  type
    AWSResponse RespondActivityTaskFailed =
      RespondActivityTaskFailedResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveNull
      RespondActivityTaskFailedResponse'

instance Prelude.Hashable RespondActivityTaskFailed where
  hashWithSalt _salt RespondActivityTaskFailed' {..} =
    _salt `Prelude.hashWithSalt` details
      `Prelude.hashWithSalt` reason
      `Prelude.hashWithSalt` taskToken

instance Prelude.NFData RespondActivityTaskFailed where
  rnf RespondActivityTaskFailed' {..} =
    Prelude.rnf details
      `Prelude.seq` Prelude.rnf reason
      `Prelude.seq` Prelude.rnf taskToken

instance Core.ToHeaders RespondActivityTaskFailed where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SimpleWorkflowService.RespondActivityTaskFailed" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON RespondActivityTaskFailed where
  toJSON RespondActivityTaskFailed' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("details" Core..=) Prelude.<$> details,
            ("reason" Core..=) Prelude.<$> reason,
            Prelude.Just ("taskToken" Core..= taskToken)
          ]
      )

instance Core.ToPath RespondActivityTaskFailed where
  toPath = Prelude.const "/"

instance Core.ToQuery RespondActivityTaskFailed where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newRespondActivityTaskFailedResponse' smart constructor.
data RespondActivityTaskFailedResponse = RespondActivityTaskFailedResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RespondActivityTaskFailedResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newRespondActivityTaskFailedResponse ::
  RespondActivityTaskFailedResponse
newRespondActivityTaskFailedResponse =
  RespondActivityTaskFailedResponse'

instance
  Prelude.NFData
    RespondActivityTaskFailedResponse
  where
  rnf _ = ()
