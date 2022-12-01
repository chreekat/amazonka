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
-- Module      : Amazonka.Transfer.ImportHostKey
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a host key to the server that\'s specified by the @ServerId@
-- parameter.
module Amazonka.Transfer.ImportHostKey
  ( -- * Creating a Request
    ImportHostKey (..),
    newImportHostKey,

    -- * Request Lenses
    importHostKey_tags,
    importHostKey_description,
    importHostKey_serverId,
    importHostKey_hostKeyBody,

    -- * Destructuring the Response
    ImportHostKeyResponse (..),
    newImportHostKeyResponse,

    -- * Response Lenses
    importHostKeyResponse_httpStatus,
    importHostKeyResponse_serverId,
    importHostKeyResponse_hostKeyId,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.Transfer.Types

-- | /See:/ 'newImportHostKey' smart constructor.
data ImportHostKey = ImportHostKey'
  { -- | Key-value pairs that can be used to group and search for host keys.
    tags :: Prelude.Maybe (Prelude.NonEmpty Tag),
    -- | The text description that identifies this host key.
    description :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the server that contains the host key that you are
    -- importing.
    serverId :: Prelude.Text,
    -- | The public key portion of an SSH key pair.
    --
    -- Transfer Family accepts RSA, ECDSA, and ED25519 keys.
    hostKeyBody :: Core.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ImportHostKey' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'importHostKey_tags' - Key-value pairs that can be used to group and search for host keys.
--
-- 'description', 'importHostKey_description' - The text description that identifies this host key.
--
-- 'serverId', 'importHostKey_serverId' - The identifier of the server that contains the host key that you are
-- importing.
--
-- 'hostKeyBody', 'importHostKey_hostKeyBody' - The public key portion of an SSH key pair.
--
-- Transfer Family accepts RSA, ECDSA, and ED25519 keys.
newImportHostKey ::
  -- | 'serverId'
  Prelude.Text ->
  -- | 'hostKeyBody'
  Prelude.Text ->
  ImportHostKey
newImportHostKey pServerId_ pHostKeyBody_ =
  ImportHostKey'
    { tags = Prelude.Nothing,
      description = Prelude.Nothing,
      serverId = pServerId_,
      hostKeyBody = Core._Sensitive Lens.# pHostKeyBody_
    }

-- | Key-value pairs that can be used to group and search for host keys.
importHostKey_tags :: Lens.Lens' ImportHostKey (Prelude.Maybe (Prelude.NonEmpty Tag))
importHostKey_tags = Lens.lens (\ImportHostKey' {tags} -> tags) (\s@ImportHostKey' {} a -> s {tags = a} :: ImportHostKey) Prelude.. Lens.mapping Lens.coerced

-- | The text description that identifies this host key.
importHostKey_description :: Lens.Lens' ImportHostKey (Prelude.Maybe Prelude.Text)
importHostKey_description = Lens.lens (\ImportHostKey' {description} -> description) (\s@ImportHostKey' {} a -> s {description = a} :: ImportHostKey)

-- | The identifier of the server that contains the host key that you are
-- importing.
importHostKey_serverId :: Lens.Lens' ImportHostKey Prelude.Text
importHostKey_serverId = Lens.lens (\ImportHostKey' {serverId} -> serverId) (\s@ImportHostKey' {} a -> s {serverId = a} :: ImportHostKey)

-- | The public key portion of an SSH key pair.
--
-- Transfer Family accepts RSA, ECDSA, and ED25519 keys.
importHostKey_hostKeyBody :: Lens.Lens' ImportHostKey Prelude.Text
importHostKey_hostKeyBody = Lens.lens (\ImportHostKey' {hostKeyBody} -> hostKeyBody) (\s@ImportHostKey' {} a -> s {hostKeyBody = a} :: ImportHostKey) Prelude.. Core._Sensitive

instance Core.AWSRequest ImportHostKey where
  type
    AWSResponse ImportHostKey =
      ImportHostKeyResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          ImportHostKeyResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "ServerId")
            Prelude.<*> (x Core..:> "HostKeyId")
      )

instance Prelude.Hashable ImportHostKey where
  hashWithSalt _salt ImportHostKey' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` serverId
      `Prelude.hashWithSalt` hostKeyBody

instance Prelude.NFData ImportHostKey where
  rnf ImportHostKey' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf serverId
      `Prelude.seq` Prelude.rnf hostKeyBody

instance Core.ToHeaders ImportHostKey where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "TransferService.ImportHostKey" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ImportHostKey where
  toJSON ImportHostKey' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("Description" Core..=) Prelude.<$> description,
            Prelude.Just ("ServerId" Core..= serverId),
            Prelude.Just ("HostKeyBody" Core..= hostKeyBody)
          ]
      )

instance Core.ToPath ImportHostKey where
  toPath = Prelude.const "/"

instance Core.ToQuery ImportHostKey where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newImportHostKeyResponse' smart constructor.
data ImportHostKeyResponse = ImportHostKeyResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | Returns the server identifier that contains the imported key.
    serverId :: Prelude.Text,
    -- | Returns the host key identifier for the imported key.
    hostKeyId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ImportHostKeyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'importHostKeyResponse_httpStatus' - The response's http status code.
--
-- 'serverId', 'importHostKeyResponse_serverId' - Returns the server identifier that contains the imported key.
--
-- 'hostKeyId', 'importHostKeyResponse_hostKeyId' - Returns the host key identifier for the imported key.
newImportHostKeyResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'serverId'
  Prelude.Text ->
  -- | 'hostKeyId'
  Prelude.Text ->
  ImportHostKeyResponse
newImportHostKeyResponse
  pHttpStatus_
  pServerId_
  pHostKeyId_ =
    ImportHostKeyResponse'
      { httpStatus = pHttpStatus_,
        serverId = pServerId_,
        hostKeyId = pHostKeyId_
      }

-- | The response's http status code.
importHostKeyResponse_httpStatus :: Lens.Lens' ImportHostKeyResponse Prelude.Int
importHostKeyResponse_httpStatus = Lens.lens (\ImportHostKeyResponse' {httpStatus} -> httpStatus) (\s@ImportHostKeyResponse' {} a -> s {httpStatus = a} :: ImportHostKeyResponse)

-- | Returns the server identifier that contains the imported key.
importHostKeyResponse_serverId :: Lens.Lens' ImportHostKeyResponse Prelude.Text
importHostKeyResponse_serverId = Lens.lens (\ImportHostKeyResponse' {serverId} -> serverId) (\s@ImportHostKeyResponse' {} a -> s {serverId = a} :: ImportHostKeyResponse)

-- | Returns the host key identifier for the imported key.
importHostKeyResponse_hostKeyId :: Lens.Lens' ImportHostKeyResponse Prelude.Text
importHostKeyResponse_hostKeyId = Lens.lens (\ImportHostKeyResponse' {hostKeyId} -> hostKeyId) (\s@ImportHostKeyResponse' {} a -> s {hostKeyId = a} :: ImportHostKeyResponse)

instance Prelude.NFData ImportHostKeyResponse where
  rnf ImportHostKeyResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf serverId
      `Prelude.seq` Prelude.rnf hostKeyId
