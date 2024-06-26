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
-- Module      : Network.AWS.Pinpoint.UpdateInAppTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing message template for messages sent through the
-- in-app message channel.
module Network.AWS.Pinpoint.UpdateInAppTemplate
  ( -- * Creating a Request
    UpdateInAppTemplate (..),
    newUpdateInAppTemplate,

    -- * Request Lenses
    updateInAppTemplate_version,
    updateInAppTemplate_createNewVersion,
    updateInAppTemplate_templateName,
    updateInAppTemplate_inAppTemplateRequest,

    -- * Destructuring the Response
    UpdateInAppTemplateResponse (..),
    newUpdateInAppTemplateResponse,

    -- * Response Lenses
    updateInAppTemplateResponse_httpStatus,
    updateInAppTemplateResponse_messageBody,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateInAppTemplate' smart constructor.
data UpdateInAppTemplate = UpdateInAppTemplate'
  { -- | The unique identifier for the version of the message template to update,
    -- retrieve information about, or delete. To retrieve identifiers and other
    -- information for all the versions of a template, use the Template
    -- Versions resource.
    --
    -- If specified, this value must match the identifier for an existing
    -- template version. If specified for an update operation, this value must
    -- match the identifier for the latest existing version of the template.
    -- This restriction helps ensure that race conditions don\'t occur.
    --
    -- If you don\'t specify a value for this parameter, Amazon Pinpoint does
    -- the following:
    --
    -- -   For a get operation, retrieves information about the active version
    --     of the template.
    --
    -- -   For an update operation, saves the updates to (overwrites) the
    --     latest existing version of the template, if the create-new-version
    --     parameter isn\'t used or is set to false.
    --
    -- -   For a delete operation, deletes the template, including all versions
    --     of the template.
    version :: Prelude.Maybe Prelude.Text,
    -- | Specifies whether to save the updates as a new version of the message
    -- template. Valid values are: true, save the updates as a new version;
    -- and, false, save the updates to (overwrite) the latest existing version
    -- of the template.
    --
    -- If you don\'t specify a value for this parameter, Amazon Pinpoint saves
    -- the updates to (overwrites) the latest existing version of the template.
    -- If you specify a value of true for this parameter, don\'t specify a
    -- value for the version parameter. Otherwise, an error will occur.
    createNewVersion :: Prelude.Maybe Prelude.Bool,
    -- | The name of the message template. A template name must start with an
    -- alphanumeric character and can contain a maximum of 128 characters. The
    -- characters can be alphanumeric characters, underscores (_), or hyphens
    -- (-). Template names are case sensitive.
    templateName :: Prelude.Text,
    inAppTemplateRequest :: InAppTemplateRequest
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateInAppTemplate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'version', 'updateInAppTemplate_version' - The unique identifier for the version of the message template to update,
-- retrieve information about, or delete. To retrieve identifiers and other
-- information for all the versions of a template, use the Template
-- Versions resource.
--
-- If specified, this value must match the identifier for an existing
-- template version. If specified for an update operation, this value must
-- match the identifier for the latest existing version of the template.
-- This restriction helps ensure that race conditions don\'t occur.
--
-- If you don\'t specify a value for this parameter, Amazon Pinpoint does
-- the following:
--
-- -   For a get operation, retrieves information about the active version
--     of the template.
--
-- -   For an update operation, saves the updates to (overwrites) the
--     latest existing version of the template, if the create-new-version
--     parameter isn\'t used or is set to false.
--
-- -   For a delete operation, deletes the template, including all versions
--     of the template.
--
-- 'createNewVersion', 'updateInAppTemplate_createNewVersion' - Specifies whether to save the updates as a new version of the message
-- template. Valid values are: true, save the updates as a new version;
-- and, false, save the updates to (overwrite) the latest existing version
-- of the template.
--
-- If you don\'t specify a value for this parameter, Amazon Pinpoint saves
-- the updates to (overwrites) the latest existing version of the template.
-- If you specify a value of true for this parameter, don\'t specify a
-- value for the version parameter. Otherwise, an error will occur.
--
-- 'templateName', 'updateInAppTemplate_templateName' - The name of the message template. A template name must start with an
-- alphanumeric character and can contain a maximum of 128 characters. The
-- characters can be alphanumeric characters, underscores (_), or hyphens
-- (-). Template names are case sensitive.
--
-- 'inAppTemplateRequest', 'updateInAppTemplate_inAppTemplateRequest' - Undocumented member.
newUpdateInAppTemplate ::
  -- | 'templateName'
  Prelude.Text ->
  -- | 'inAppTemplateRequest'
  InAppTemplateRequest ->
  UpdateInAppTemplate
newUpdateInAppTemplate
  pTemplateName_
  pInAppTemplateRequest_ =
    UpdateInAppTemplate'
      { version = Prelude.Nothing,
        createNewVersion = Prelude.Nothing,
        templateName = pTemplateName_,
        inAppTemplateRequest = pInAppTemplateRequest_
      }

-- | The unique identifier for the version of the message template to update,
-- retrieve information about, or delete. To retrieve identifiers and other
-- information for all the versions of a template, use the Template
-- Versions resource.
--
-- If specified, this value must match the identifier for an existing
-- template version. If specified for an update operation, this value must
-- match the identifier for the latest existing version of the template.
-- This restriction helps ensure that race conditions don\'t occur.
--
-- If you don\'t specify a value for this parameter, Amazon Pinpoint does
-- the following:
--
-- -   For a get operation, retrieves information about the active version
--     of the template.
--
-- -   For an update operation, saves the updates to (overwrites) the
--     latest existing version of the template, if the create-new-version
--     parameter isn\'t used or is set to false.
--
-- -   For a delete operation, deletes the template, including all versions
--     of the template.
updateInAppTemplate_version :: Lens.Lens' UpdateInAppTemplate (Prelude.Maybe Prelude.Text)
updateInAppTemplate_version = Lens.lens (\UpdateInAppTemplate' {version} -> version) (\s@UpdateInAppTemplate' {} a -> s {version = a} :: UpdateInAppTemplate)

-- | Specifies whether to save the updates as a new version of the message
-- template. Valid values are: true, save the updates as a new version;
-- and, false, save the updates to (overwrite) the latest existing version
-- of the template.
--
-- If you don\'t specify a value for this parameter, Amazon Pinpoint saves
-- the updates to (overwrites) the latest existing version of the template.
-- If you specify a value of true for this parameter, don\'t specify a
-- value for the version parameter. Otherwise, an error will occur.
updateInAppTemplate_createNewVersion :: Lens.Lens' UpdateInAppTemplate (Prelude.Maybe Prelude.Bool)
updateInAppTemplate_createNewVersion = Lens.lens (\UpdateInAppTemplate' {createNewVersion} -> createNewVersion) (\s@UpdateInAppTemplate' {} a -> s {createNewVersion = a} :: UpdateInAppTemplate)

-- | The name of the message template. A template name must start with an
-- alphanumeric character and can contain a maximum of 128 characters. The
-- characters can be alphanumeric characters, underscores (_), or hyphens
-- (-). Template names are case sensitive.
updateInAppTemplate_templateName :: Lens.Lens' UpdateInAppTemplate Prelude.Text
updateInAppTemplate_templateName = Lens.lens (\UpdateInAppTemplate' {templateName} -> templateName) (\s@UpdateInAppTemplate' {} a -> s {templateName = a} :: UpdateInAppTemplate)

-- | Undocumented member.
updateInAppTemplate_inAppTemplateRequest :: Lens.Lens' UpdateInAppTemplate InAppTemplateRequest
updateInAppTemplate_inAppTemplateRequest = Lens.lens (\UpdateInAppTemplate' {inAppTemplateRequest} -> inAppTemplateRequest) (\s@UpdateInAppTemplate' {} a -> s {inAppTemplateRequest = a} :: UpdateInAppTemplate)

instance Core.AWSRequest UpdateInAppTemplate where
  type
    AWSResponse UpdateInAppTemplate =
      UpdateInAppTemplateResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateInAppTemplateResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (Core.eitherParseJSON x)
      )

instance Prelude.Hashable UpdateInAppTemplate

instance Prelude.NFData UpdateInAppTemplate

instance Core.ToHeaders UpdateInAppTemplate where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateInAppTemplate where
  toJSON UpdateInAppTemplate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "InAppTemplateRequest"
                  Core..= inAppTemplateRequest
              )
          ]
      )

instance Core.ToPath UpdateInAppTemplate where
  toPath UpdateInAppTemplate' {..} =
    Prelude.mconcat
      ["/v1/templates/", Core.toBS templateName, "/inapp"]

instance Core.ToQuery UpdateInAppTemplate where
  toQuery UpdateInAppTemplate' {..} =
    Prelude.mconcat
      [ "version" Core.=: version,
        "create-new-version" Core.=: createNewVersion
      ]

-- | /See:/ 'newUpdateInAppTemplateResponse' smart constructor.
data UpdateInAppTemplateResponse = UpdateInAppTemplateResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    messageBody :: MessageBody
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateInAppTemplateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateInAppTemplateResponse_httpStatus' - The response's http status code.
--
-- 'messageBody', 'updateInAppTemplateResponse_messageBody' - Undocumented member.
newUpdateInAppTemplateResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'messageBody'
  MessageBody ->
  UpdateInAppTemplateResponse
newUpdateInAppTemplateResponse
  pHttpStatus_
  pMessageBody_ =
    UpdateInAppTemplateResponse'
      { httpStatus =
          pHttpStatus_,
        messageBody = pMessageBody_
      }

-- | The response's http status code.
updateInAppTemplateResponse_httpStatus :: Lens.Lens' UpdateInAppTemplateResponse Prelude.Int
updateInAppTemplateResponse_httpStatus = Lens.lens (\UpdateInAppTemplateResponse' {httpStatus} -> httpStatus) (\s@UpdateInAppTemplateResponse' {} a -> s {httpStatus = a} :: UpdateInAppTemplateResponse)

-- | Undocumented member.
updateInAppTemplateResponse_messageBody :: Lens.Lens' UpdateInAppTemplateResponse MessageBody
updateInAppTemplateResponse_messageBody = Lens.lens (\UpdateInAppTemplateResponse' {messageBody} -> messageBody) (\s@UpdateInAppTemplateResponse' {} a -> s {messageBody = a} :: UpdateInAppTemplateResponse)

instance Prelude.NFData UpdateInAppTemplateResponse
