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
-- Module      : Network.AWS.IoT.DeleteJobTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified job template.
module Network.AWS.IoT.DeleteJobTemplate
  ( -- * Creating a Request
    DeleteJobTemplate (..),
    newDeleteJobTemplate,

    -- * Request Lenses
    deleteJobTemplate_jobTemplateId,

    -- * Destructuring the Response
    DeleteJobTemplateResponse (..),
    newDeleteJobTemplateResponse,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoT.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteJobTemplate' smart constructor.
data DeleteJobTemplate = DeleteJobTemplate'
  { -- | The unique identifier of the job template to delete.
    jobTemplateId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteJobTemplate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobTemplateId', 'deleteJobTemplate_jobTemplateId' - The unique identifier of the job template to delete.
newDeleteJobTemplate ::
  -- | 'jobTemplateId'
  Prelude.Text ->
  DeleteJobTemplate
newDeleteJobTemplate pJobTemplateId_ =
  DeleteJobTemplate' {jobTemplateId = pJobTemplateId_}

-- | The unique identifier of the job template to delete.
deleteJobTemplate_jobTemplateId :: Lens.Lens' DeleteJobTemplate Prelude.Text
deleteJobTemplate_jobTemplateId = Lens.lens (\DeleteJobTemplate' {jobTemplateId} -> jobTemplateId) (\s@DeleteJobTemplate' {} a -> s {jobTemplateId = a} :: DeleteJobTemplate)

instance Core.AWSRequest DeleteJobTemplate where
  type
    AWSResponse DeleteJobTemplate =
      DeleteJobTemplateResponse
  request = Request.delete defaultService
  response =
    Response.receiveNull DeleteJobTemplateResponse'

instance Prelude.Hashable DeleteJobTemplate

instance Prelude.NFData DeleteJobTemplate

instance Core.ToHeaders DeleteJobTemplate where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DeleteJobTemplate where
  toPath DeleteJobTemplate' {..} =
    Prelude.mconcat
      ["/job-templates/", Core.toBS jobTemplateId]

instance Core.ToQuery DeleteJobTemplate where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteJobTemplateResponse' smart constructor.
data DeleteJobTemplateResponse = DeleteJobTemplateResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteJobTemplateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteJobTemplateResponse ::
  DeleteJobTemplateResponse
newDeleteJobTemplateResponse =
  DeleteJobTemplateResponse'

instance Prelude.NFData DeleteJobTemplateResponse
