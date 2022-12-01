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
-- Module      : Amazonka.WorkSpacesWeb.CreateNetworkSettings
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a network settings resource that can be associated with a web
-- portal. Once associated with a web portal, network settings define how
-- streaming instances will connect with your specified VPC.
module Amazonka.WorkSpacesWeb.CreateNetworkSettings
  ( -- * Creating a Request
    CreateNetworkSettings (..),
    newCreateNetworkSettings,

    -- * Request Lenses
    createNetworkSettings_tags,
    createNetworkSettings_clientToken,
    createNetworkSettings_securityGroupIds,
    createNetworkSettings_subnetIds,
    createNetworkSettings_vpcId,

    -- * Destructuring the Response
    CreateNetworkSettingsResponse (..),
    newCreateNetworkSettingsResponse,

    -- * Response Lenses
    createNetworkSettingsResponse_httpStatus,
    createNetworkSettingsResponse_networkSettingsArn,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.WorkSpacesWeb.Types

-- | /See:/ 'newCreateNetworkSettings' smart constructor.
data CreateNetworkSettings = CreateNetworkSettings'
  { -- | The tags to add to the network settings resource. A tag is a key-value
    -- pair.
    tags :: Prelude.Maybe [Core.Sensitive Tag],
    -- | A unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request. Idempotency ensures that an API request
    -- completes only once. With an idempotent request, if the original request
    -- completes successfully, subsequent retries with the same client token
    -- returns the result from the original successful request.
    --
    -- If you do not specify a client token, one is automatically generated by
    -- the AWS SDK.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | One or more security groups used to control access from streaming
    -- instances to your VPC.
    securityGroupIds :: Prelude.NonEmpty Prelude.Text,
    -- | The subnets in which network interfaces are created to connect streaming
    -- instances to your VPC. At least two of these subnets must be in
    -- different availability zones.
    subnetIds :: Prelude.NonEmpty Prelude.Text,
    -- | The VPC that streaming instances will connect to.
    vpcId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateNetworkSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createNetworkSettings_tags' - The tags to add to the network settings resource. A tag is a key-value
-- pair.
--
-- 'clientToken', 'createNetworkSettings_clientToken' - A unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. Idempotency ensures that an API request
-- completes only once. With an idempotent request, if the original request
-- completes successfully, subsequent retries with the same client token
-- returns the result from the original successful request.
--
-- If you do not specify a client token, one is automatically generated by
-- the AWS SDK.
--
-- 'securityGroupIds', 'createNetworkSettings_securityGroupIds' - One or more security groups used to control access from streaming
-- instances to your VPC.
--
-- 'subnetIds', 'createNetworkSettings_subnetIds' - The subnets in which network interfaces are created to connect streaming
-- instances to your VPC. At least two of these subnets must be in
-- different availability zones.
--
-- 'vpcId', 'createNetworkSettings_vpcId' - The VPC that streaming instances will connect to.
newCreateNetworkSettings ::
  -- | 'securityGroupIds'
  Prelude.NonEmpty Prelude.Text ->
  -- | 'subnetIds'
  Prelude.NonEmpty Prelude.Text ->
  -- | 'vpcId'
  Prelude.Text ->
  CreateNetworkSettings
newCreateNetworkSettings
  pSecurityGroupIds_
  pSubnetIds_
  pVpcId_ =
    CreateNetworkSettings'
      { tags = Prelude.Nothing,
        clientToken = Prelude.Nothing,
        securityGroupIds =
          Lens.coerced Lens.# pSecurityGroupIds_,
        subnetIds = Lens.coerced Lens.# pSubnetIds_,
        vpcId = pVpcId_
      }

-- | The tags to add to the network settings resource. A tag is a key-value
-- pair.
createNetworkSettings_tags :: Lens.Lens' CreateNetworkSettings (Prelude.Maybe [Tag])
createNetworkSettings_tags = Lens.lens (\CreateNetworkSettings' {tags} -> tags) (\s@CreateNetworkSettings' {} a -> s {tags = a} :: CreateNetworkSettings) Prelude.. Lens.mapping Lens.coerced

-- | A unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. Idempotency ensures that an API request
-- completes only once. With an idempotent request, if the original request
-- completes successfully, subsequent retries with the same client token
-- returns the result from the original successful request.
--
-- If you do not specify a client token, one is automatically generated by
-- the AWS SDK.
createNetworkSettings_clientToken :: Lens.Lens' CreateNetworkSettings (Prelude.Maybe Prelude.Text)
createNetworkSettings_clientToken = Lens.lens (\CreateNetworkSettings' {clientToken} -> clientToken) (\s@CreateNetworkSettings' {} a -> s {clientToken = a} :: CreateNetworkSettings)

-- | One or more security groups used to control access from streaming
-- instances to your VPC.
createNetworkSettings_securityGroupIds :: Lens.Lens' CreateNetworkSettings (Prelude.NonEmpty Prelude.Text)
createNetworkSettings_securityGroupIds = Lens.lens (\CreateNetworkSettings' {securityGroupIds} -> securityGroupIds) (\s@CreateNetworkSettings' {} a -> s {securityGroupIds = a} :: CreateNetworkSettings) Prelude.. Lens.coerced

-- | The subnets in which network interfaces are created to connect streaming
-- instances to your VPC. At least two of these subnets must be in
-- different availability zones.
createNetworkSettings_subnetIds :: Lens.Lens' CreateNetworkSettings (Prelude.NonEmpty Prelude.Text)
createNetworkSettings_subnetIds = Lens.lens (\CreateNetworkSettings' {subnetIds} -> subnetIds) (\s@CreateNetworkSettings' {} a -> s {subnetIds = a} :: CreateNetworkSettings) Prelude.. Lens.coerced

-- | The VPC that streaming instances will connect to.
createNetworkSettings_vpcId :: Lens.Lens' CreateNetworkSettings Prelude.Text
createNetworkSettings_vpcId = Lens.lens (\CreateNetworkSettings' {vpcId} -> vpcId) (\s@CreateNetworkSettings' {} a -> s {vpcId = a} :: CreateNetworkSettings)

instance Core.AWSRequest CreateNetworkSettings where
  type
    AWSResponse CreateNetworkSettings =
      CreateNetworkSettingsResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateNetworkSettingsResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "networkSettingsArn")
      )

instance Prelude.Hashable CreateNetworkSettings where
  hashWithSalt _salt CreateNetworkSettings' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` securityGroupIds
      `Prelude.hashWithSalt` subnetIds
      `Prelude.hashWithSalt` vpcId

instance Prelude.NFData CreateNetworkSettings where
  rnf CreateNetworkSettings' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf securityGroupIds
      `Prelude.seq` Prelude.rnf subnetIds
      `Prelude.seq` Prelude.rnf vpcId

instance Core.ToHeaders CreateNetworkSettings where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateNetworkSettings where
  toJSON CreateNetworkSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("clientToken" Core..=) Prelude.<$> clientToken,
            Prelude.Just
              ("securityGroupIds" Core..= securityGroupIds),
            Prelude.Just ("subnetIds" Core..= subnetIds),
            Prelude.Just ("vpcId" Core..= vpcId)
          ]
      )

instance Core.ToPath CreateNetworkSettings where
  toPath = Prelude.const "/networkSettings"

instance Core.ToQuery CreateNetworkSettings where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateNetworkSettingsResponse' smart constructor.
data CreateNetworkSettingsResponse = CreateNetworkSettingsResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The ARN of the network settings.
    networkSettingsArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateNetworkSettingsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createNetworkSettingsResponse_httpStatus' - The response's http status code.
--
-- 'networkSettingsArn', 'createNetworkSettingsResponse_networkSettingsArn' - The ARN of the network settings.
newCreateNetworkSettingsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'networkSettingsArn'
  Prelude.Text ->
  CreateNetworkSettingsResponse
newCreateNetworkSettingsResponse
  pHttpStatus_
  pNetworkSettingsArn_ =
    CreateNetworkSettingsResponse'
      { httpStatus =
          pHttpStatus_,
        networkSettingsArn = pNetworkSettingsArn_
      }

-- | The response's http status code.
createNetworkSettingsResponse_httpStatus :: Lens.Lens' CreateNetworkSettingsResponse Prelude.Int
createNetworkSettingsResponse_httpStatus = Lens.lens (\CreateNetworkSettingsResponse' {httpStatus} -> httpStatus) (\s@CreateNetworkSettingsResponse' {} a -> s {httpStatus = a} :: CreateNetworkSettingsResponse)

-- | The ARN of the network settings.
createNetworkSettingsResponse_networkSettingsArn :: Lens.Lens' CreateNetworkSettingsResponse Prelude.Text
createNetworkSettingsResponse_networkSettingsArn = Lens.lens (\CreateNetworkSettingsResponse' {networkSettingsArn} -> networkSettingsArn) (\s@CreateNetworkSettingsResponse' {} a -> s {networkSettingsArn = a} :: CreateNetworkSettingsResponse)

instance Prelude.NFData CreateNetworkSettingsResponse where
  rnf CreateNetworkSettingsResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf networkSettingsArn
