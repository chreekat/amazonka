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
-- Module      : Network.AWS.KMS.UpdateKeyDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the description of a KMS key. To see the description of a KMS
-- key, use DescribeKey.
--
-- The KMS key that you use for this operation must be in a compatible key
-- state. For details, see
-- <https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html Key state: Effect on your KMS key>
-- in the /Key Management Service Developer Guide/.
--
-- __Cross-account use__: No. You cannot perform this operation on a KMS
-- key in a different Amazon Web Services account.
--
-- __Required permissions__:
-- <https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html kms:UpdateKeyDescription>
-- (key policy)
--
-- __Related operations__
--
-- -   CreateKey
--
-- -   DescribeKey
module Network.AWS.KMS.UpdateKeyDescription
  ( -- * Creating a Request
    UpdateKeyDescription (..),
    newUpdateKeyDescription,

    -- * Request Lenses
    updateKeyDescription_keyId,
    updateKeyDescription_description,

    -- * Destructuring the Response
    UpdateKeyDescriptionResponse (..),
    newUpdateKeyDescriptionResponse,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.KMS.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateKeyDescription' smart constructor.
data UpdateKeyDescription = UpdateKeyDescription'
  { -- | Updates the description of the specified KMS key.
    --
    -- Specify the key ID or key ARN of the KMS key.
    --
    -- For example:
    --
    -- -   Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@
    --
    -- -   Key ARN:
    --     @arn:aws:kms:us-east-2:111122223333:key\/1234abcd-12ab-34cd-56ef-1234567890ab@
    --
    -- To get the key ID and key ARN for a KMS key, use ListKeys or
    -- DescribeKey.
    keyId :: Prelude.Text,
    -- | New description for the KMS key.
    description :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateKeyDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'keyId', 'updateKeyDescription_keyId' - Updates the description of the specified KMS key.
--
-- Specify the key ID or key ARN of the KMS key.
--
-- For example:
--
-- -   Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@
--
-- -   Key ARN:
--     @arn:aws:kms:us-east-2:111122223333:key\/1234abcd-12ab-34cd-56ef-1234567890ab@
--
-- To get the key ID and key ARN for a KMS key, use ListKeys or
-- DescribeKey.
--
-- 'description', 'updateKeyDescription_description' - New description for the KMS key.
newUpdateKeyDescription ::
  -- | 'keyId'
  Prelude.Text ->
  -- | 'description'
  Prelude.Text ->
  UpdateKeyDescription
newUpdateKeyDescription pKeyId_ pDescription_ =
  UpdateKeyDescription'
    { keyId = pKeyId_,
      description = pDescription_
    }

-- | Updates the description of the specified KMS key.
--
-- Specify the key ID or key ARN of the KMS key.
--
-- For example:
--
-- -   Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@
--
-- -   Key ARN:
--     @arn:aws:kms:us-east-2:111122223333:key\/1234abcd-12ab-34cd-56ef-1234567890ab@
--
-- To get the key ID and key ARN for a KMS key, use ListKeys or
-- DescribeKey.
updateKeyDescription_keyId :: Lens.Lens' UpdateKeyDescription Prelude.Text
updateKeyDescription_keyId = Lens.lens (\UpdateKeyDescription' {keyId} -> keyId) (\s@UpdateKeyDescription' {} a -> s {keyId = a} :: UpdateKeyDescription)

-- | New description for the KMS key.
updateKeyDescription_description :: Lens.Lens' UpdateKeyDescription Prelude.Text
updateKeyDescription_description = Lens.lens (\UpdateKeyDescription' {description} -> description) (\s@UpdateKeyDescription' {} a -> s {description = a} :: UpdateKeyDescription)

instance Core.AWSRequest UpdateKeyDescription where
  type
    AWSResponse UpdateKeyDescription =
      UpdateKeyDescriptionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull UpdateKeyDescriptionResponse'

instance Prelude.Hashable UpdateKeyDescription

instance Prelude.NFData UpdateKeyDescription

instance Core.ToHeaders UpdateKeyDescription where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "TrentService.UpdateKeyDescription" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateKeyDescription where
  toJSON UpdateKeyDescription' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("KeyId" Core..= keyId),
            Prelude.Just ("Description" Core..= description)
          ]
      )

instance Core.ToPath UpdateKeyDescription where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateKeyDescription where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateKeyDescriptionResponse' smart constructor.
data UpdateKeyDescriptionResponse = UpdateKeyDescriptionResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateKeyDescriptionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newUpdateKeyDescriptionResponse ::
  UpdateKeyDescriptionResponse
newUpdateKeyDescriptionResponse =
  UpdateKeyDescriptionResponse'

instance Prelude.NFData UpdateKeyDescriptionResponse
