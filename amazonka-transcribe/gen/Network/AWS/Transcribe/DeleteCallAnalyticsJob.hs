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
-- Module      : Network.AWS.Transcribe.DeleteCallAnalyticsJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a call analytics job using its name.
module Network.AWS.Transcribe.DeleteCallAnalyticsJob
  ( -- * Creating a Request
    DeleteCallAnalyticsJob (..),
    newDeleteCallAnalyticsJob,

    -- * Request Lenses
    deleteCallAnalyticsJob_callAnalyticsJobName,

    -- * Destructuring the Response
    DeleteCallAnalyticsJobResponse (..),
    newDeleteCallAnalyticsJobResponse,

    -- * Response Lenses
    deleteCallAnalyticsJobResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Transcribe.Types

-- | /See:/ 'newDeleteCallAnalyticsJob' smart constructor.
data DeleteCallAnalyticsJob = DeleteCallAnalyticsJob'
  { -- | The name of the call analytics job you want to delete.
    callAnalyticsJobName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteCallAnalyticsJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'callAnalyticsJobName', 'deleteCallAnalyticsJob_callAnalyticsJobName' - The name of the call analytics job you want to delete.
newDeleteCallAnalyticsJob ::
  -- | 'callAnalyticsJobName'
  Prelude.Text ->
  DeleteCallAnalyticsJob
newDeleteCallAnalyticsJob pCallAnalyticsJobName_ =
  DeleteCallAnalyticsJob'
    { callAnalyticsJobName =
        pCallAnalyticsJobName_
    }

-- | The name of the call analytics job you want to delete.
deleteCallAnalyticsJob_callAnalyticsJobName :: Lens.Lens' DeleteCallAnalyticsJob Prelude.Text
deleteCallAnalyticsJob_callAnalyticsJobName = Lens.lens (\DeleteCallAnalyticsJob' {callAnalyticsJobName} -> callAnalyticsJobName) (\s@DeleteCallAnalyticsJob' {} a -> s {callAnalyticsJobName = a} :: DeleteCallAnalyticsJob)

instance Core.AWSRequest DeleteCallAnalyticsJob where
  type
    AWSResponse DeleteCallAnalyticsJob =
      DeleteCallAnalyticsJobResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteCallAnalyticsJobResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteCallAnalyticsJob

instance Prelude.NFData DeleteCallAnalyticsJob

instance Core.ToHeaders DeleteCallAnalyticsJob where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Transcribe.DeleteCallAnalyticsJob" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteCallAnalyticsJob where
  toJSON DeleteCallAnalyticsJob' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "CallAnalyticsJobName"
                  Core..= callAnalyticsJobName
              )
          ]
      )

instance Core.ToPath DeleteCallAnalyticsJob where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteCallAnalyticsJob where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteCallAnalyticsJobResponse' smart constructor.
data DeleteCallAnalyticsJobResponse = DeleteCallAnalyticsJobResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteCallAnalyticsJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteCallAnalyticsJobResponse_httpStatus' - The response's http status code.
newDeleteCallAnalyticsJobResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteCallAnalyticsJobResponse
newDeleteCallAnalyticsJobResponse pHttpStatus_ =
  DeleteCallAnalyticsJobResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteCallAnalyticsJobResponse_httpStatus :: Lens.Lens' DeleteCallAnalyticsJobResponse Prelude.Int
deleteCallAnalyticsJobResponse_httpStatus = Lens.lens (\DeleteCallAnalyticsJobResponse' {httpStatus} -> httpStatus) (\s@DeleteCallAnalyticsJobResponse' {} a -> s {httpStatus = a} :: DeleteCallAnalyticsJobResponse)

instance
  Prelude.NFData
    DeleteCallAnalyticsJobResponse
