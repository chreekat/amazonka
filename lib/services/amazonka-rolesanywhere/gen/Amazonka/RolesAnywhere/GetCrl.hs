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
-- Module      : Amazonka.RolesAnywhere.GetCrl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a certificate revocation list (CRL).
--
-- __Required permissions:__ @rolesanywhere:GetCrl@.
module Amazonka.RolesAnywhere.GetCrl
  ( -- * Creating a Request
    GetCrl (..),
    newGetCrl,

    -- * Request Lenses
    getCrl_crlId,

    -- * Destructuring the Response
    CrlDetailResponse (..),
    newCrlDetailResponse,

    -- * Response Lenses
    crlDetailResponse_crl,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.RolesAnywhere.Types

-- | /See:/ 'newGetCrl' smart constructor.
data GetCrl = GetCrl'
  { -- | The unique identifier of the certificate revocation list (CRL).
    crlId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetCrl' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'crlId', 'getCrl_crlId' - The unique identifier of the certificate revocation list (CRL).
newGetCrl ::
  -- | 'crlId'
  Prelude.Text ->
  GetCrl
newGetCrl pCrlId_ = GetCrl' {crlId = pCrlId_}

-- | The unique identifier of the certificate revocation list (CRL).
getCrl_crlId :: Lens.Lens' GetCrl Prelude.Text
getCrl_crlId = Lens.lens (\GetCrl' {crlId} -> crlId) (\s@GetCrl' {} a -> s {crlId = a} :: GetCrl)

instance Core.AWSRequest GetCrl where
  type AWSResponse GetCrl = CrlDetailResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Prelude.Hashable GetCrl where
  hashWithSalt _salt GetCrl' {..} =
    _salt `Prelude.hashWithSalt` crlId

instance Prelude.NFData GetCrl where
  rnf GetCrl' {..} = Prelude.rnf crlId

instance Core.ToHeaders GetCrl where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetCrl where
  toPath GetCrl' {..} =
    Prelude.mconcat ["/crl/", Core.toBS crlId]

instance Core.ToQuery GetCrl where
  toQuery = Prelude.const Prelude.mempty
