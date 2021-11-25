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
-- Module      : Amazonka.SageMaker.UpdateWorkteam
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing work team with new member definitions or
-- description.
module Amazonka.SageMaker.UpdateWorkteam
  ( -- * Creating a Request
    UpdateWorkteam (..),
    newUpdateWorkteam,

    -- * Request Lenses
    updateWorkteam_notificationConfiguration,
    updateWorkteam_memberDefinitions,
    updateWorkteam_description,
    updateWorkteam_workteamName,

    -- * Destructuring the Response
    UpdateWorkteamResponse (..),
    newUpdateWorkteamResponse,

    -- * Response Lenses
    updateWorkteamResponse_httpStatus,
    updateWorkteamResponse_workteam,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SageMaker.Types

-- | /See:/ 'newUpdateWorkteam' smart constructor.
data UpdateWorkteam = UpdateWorkteam'
  { -- | Configures SNS topic notifications for available or expiring work items
    notificationConfiguration :: Prelude.Maybe NotificationConfiguration,
    -- | A list of @MemberDefinition@ objects that contains objects that identify
    -- the workers that make up the work team.
    --
    -- Workforces can be created using Amazon Cognito or your own OIDC Identity
    -- Provider (IdP). For private workforces created using Amazon Cognito use
    -- @CognitoMemberDefinition@. For workforces created using your own OIDC
    -- identity provider (IdP) use @OidcMemberDefinition@. You should not
    -- provide input for both of these parameters in a single request.
    --
    -- For workforces created using Amazon Cognito, private work teams
    -- correspond to Amazon Cognito /user groups/ within the user pool used to
    -- create a workforce. All of the @CognitoMemberDefinition@ objects that
    -- make up the member definition must have the same @ClientId@ and
    -- @UserPool@ values. To add a Amazon Cognito user group to an existing
    -- worker pool, see < Adding groups to a User Pool>. For more information
    -- about user pools, see
    -- <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html Amazon Cognito User Pools>.
    --
    -- For workforces created using your own OIDC IdP, specify the user groups
    -- that you want to include in your private work team in
    -- @OidcMemberDefinition@ by listing those groups in @Groups@. Be aware
    -- that user groups that are already in the work team must also be listed
    -- in @Groups@ when you make this request to remain on the work team. If
    -- you do not include these user groups, they will no longer be associated
    -- with the work team you update.
    memberDefinitions :: Prelude.Maybe (Prelude.NonEmpty MemberDefinition),
    -- | An updated description for the work team.
    description :: Prelude.Maybe Prelude.Text,
    -- | The name of the work team to update.
    workteamName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateWorkteam' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'notificationConfiguration', 'updateWorkteam_notificationConfiguration' - Configures SNS topic notifications for available or expiring work items
--
-- 'memberDefinitions', 'updateWorkteam_memberDefinitions' - A list of @MemberDefinition@ objects that contains objects that identify
-- the workers that make up the work team.
--
-- Workforces can be created using Amazon Cognito or your own OIDC Identity
-- Provider (IdP). For private workforces created using Amazon Cognito use
-- @CognitoMemberDefinition@. For workforces created using your own OIDC
-- identity provider (IdP) use @OidcMemberDefinition@. You should not
-- provide input for both of these parameters in a single request.
--
-- For workforces created using Amazon Cognito, private work teams
-- correspond to Amazon Cognito /user groups/ within the user pool used to
-- create a workforce. All of the @CognitoMemberDefinition@ objects that
-- make up the member definition must have the same @ClientId@ and
-- @UserPool@ values. To add a Amazon Cognito user group to an existing
-- worker pool, see < Adding groups to a User Pool>. For more information
-- about user pools, see
-- <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html Amazon Cognito User Pools>.
--
-- For workforces created using your own OIDC IdP, specify the user groups
-- that you want to include in your private work team in
-- @OidcMemberDefinition@ by listing those groups in @Groups@. Be aware
-- that user groups that are already in the work team must also be listed
-- in @Groups@ when you make this request to remain on the work team. If
-- you do not include these user groups, they will no longer be associated
-- with the work team you update.
--
-- 'description', 'updateWorkteam_description' - An updated description for the work team.
--
-- 'workteamName', 'updateWorkteam_workteamName' - The name of the work team to update.
newUpdateWorkteam ::
  -- | 'workteamName'
  Prelude.Text ->
  UpdateWorkteam
newUpdateWorkteam pWorkteamName_ =
  UpdateWorkteam'
    { notificationConfiguration =
        Prelude.Nothing,
      memberDefinitions = Prelude.Nothing,
      description = Prelude.Nothing,
      workteamName = pWorkteamName_
    }

-- | Configures SNS topic notifications for available or expiring work items
updateWorkteam_notificationConfiguration :: Lens.Lens' UpdateWorkteam (Prelude.Maybe NotificationConfiguration)
updateWorkteam_notificationConfiguration = Lens.lens (\UpdateWorkteam' {notificationConfiguration} -> notificationConfiguration) (\s@UpdateWorkteam' {} a -> s {notificationConfiguration = a} :: UpdateWorkteam)

-- | A list of @MemberDefinition@ objects that contains objects that identify
-- the workers that make up the work team.
--
-- Workforces can be created using Amazon Cognito or your own OIDC Identity
-- Provider (IdP). For private workforces created using Amazon Cognito use
-- @CognitoMemberDefinition@. For workforces created using your own OIDC
-- identity provider (IdP) use @OidcMemberDefinition@. You should not
-- provide input for both of these parameters in a single request.
--
-- For workforces created using Amazon Cognito, private work teams
-- correspond to Amazon Cognito /user groups/ within the user pool used to
-- create a workforce. All of the @CognitoMemberDefinition@ objects that
-- make up the member definition must have the same @ClientId@ and
-- @UserPool@ values. To add a Amazon Cognito user group to an existing
-- worker pool, see < Adding groups to a User Pool>. For more information
-- about user pools, see
-- <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html Amazon Cognito User Pools>.
--
-- For workforces created using your own OIDC IdP, specify the user groups
-- that you want to include in your private work team in
-- @OidcMemberDefinition@ by listing those groups in @Groups@. Be aware
-- that user groups that are already in the work team must also be listed
-- in @Groups@ when you make this request to remain on the work team. If
-- you do not include these user groups, they will no longer be associated
-- with the work team you update.
updateWorkteam_memberDefinitions :: Lens.Lens' UpdateWorkteam (Prelude.Maybe (Prelude.NonEmpty MemberDefinition))
updateWorkteam_memberDefinitions = Lens.lens (\UpdateWorkteam' {memberDefinitions} -> memberDefinitions) (\s@UpdateWorkteam' {} a -> s {memberDefinitions = a} :: UpdateWorkteam) Prelude.. Lens.mapping Lens.coerced

-- | An updated description for the work team.
updateWorkteam_description :: Lens.Lens' UpdateWorkteam (Prelude.Maybe Prelude.Text)
updateWorkteam_description = Lens.lens (\UpdateWorkteam' {description} -> description) (\s@UpdateWorkteam' {} a -> s {description = a} :: UpdateWorkteam)

-- | The name of the work team to update.
updateWorkteam_workteamName :: Lens.Lens' UpdateWorkteam Prelude.Text
updateWorkteam_workteamName = Lens.lens (\UpdateWorkteam' {workteamName} -> workteamName) (\s@UpdateWorkteam' {} a -> s {workteamName = a} :: UpdateWorkteam)

instance Core.AWSRequest UpdateWorkteam where
  type
    AWSResponse UpdateWorkteam =
      UpdateWorkteamResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateWorkteamResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "Workteam")
      )

instance Prelude.Hashable UpdateWorkteam

instance Prelude.NFData UpdateWorkteam

instance Core.ToHeaders UpdateWorkteam where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("SageMaker.UpdateWorkteam" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateWorkteam where
  toJSON UpdateWorkteam' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NotificationConfiguration" Core..=)
              Prelude.<$> notificationConfiguration,
            ("MemberDefinitions" Core..=)
              Prelude.<$> memberDefinitions,
            ("Description" Core..=) Prelude.<$> description,
            Prelude.Just ("WorkteamName" Core..= workteamName)
          ]
      )

instance Core.ToPath UpdateWorkteam where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateWorkteam where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateWorkteamResponse' smart constructor.
data UpdateWorkteamResponse = UpdateWorkteamResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A @Workteam@ object that describes the updated work team.
    workteam :: Workteam
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateWorkteamResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateWorkteamResponse_httpStatus' - The response's http status code.
--
-- 'workteam', 'updateWorkteamResponse_workteam' - A @Workteam@ object that describes the updated work team.
newUpdateWorkteamResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'workteam'
  Workteam ->
  UpdateWorkteamResponse
newUpdateWorkteamResponse pHttpStatus_ pWorkteam_ =
  UpdateWorkteamResponse'
    { httpStatus = pHttpStatus_,
      workteam = pWorkteam_
    }

-- | The response's http status code.
updateWorkteamResponse_httpStatus :: Lens.Lens' UpdateWorkteamResponse Prelude.Int
updateWorkteamResponse_httpStatus = Lens.lens (\UpdateWorkteamResponse' {httpStatus} -> httpStatus) (\s@UpdateWorkteamResponse' {} a -> s {httpStatus = a} :: UpdateWorkteamResponse)

-- | A @Workteam@ object that describes the updated work team.
updateWorkteamResponse_workteam :: Lens.Lens' UpdateWorkteamResponse Workteam
updateWorkteamResponse_workteam = Lens.lens (\UpdateWorkteamResponse' {workteam} -> workteam) (\s@UpdateWorkteamResponse' {} a -> s {workteam = a} :: UpdateWorkteamResponse)

instance Prelude.NFData UpdateWorkteamResponse