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
-- Module      : Network.AWS.SNS.GetSMSSandboxAccountStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the SMS sandbox status for the calling account in the target
-- Region.
--
-- When you start using Amazon SNS to send SMS messages, your account is in
-- the /SMS sandbox/. The SMS sandbox provides a safe environment for you
-- to try Amazon SNS features without risking your reputation as an SMS
-- sender. While your account is in the SMS sandbox, you can use all of the
-- features of Amazon SNS. However, you can send SMS messages only to
-- verified destination phone numbers. For more information, including how
-- to move out of the sandbox to send messages without restrictions, see
-- <https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html SMS sandbox>
-- in the /Amazon SNS Developer Guide/.
module Network.AWS.SNS.GetSMSSandboxAccountStatus
  ( -- * Creating a Request
    GetSMSSandboxAccountStatus (..),
    newGetSMSSandboxAccountStatus,

    -- * Destructuring the Response
    GetSMSSandboxAccountStatusResponse (..),
    newGetSMSSandboxAccountStatusResponse,

    -- * Response Lenses
    getSMSSandboxAccountStatusResponse_httpStatus,
    getSMSSandboxAccountStatusResponse_isInSandbox,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SNS.Types

-- | /See:/ 'newGetSMSSandboxAccountStatus' smart constructor.
data GetSMSSandboxAccountStatus = GetSMSSandboxAccountStatus'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetSMSSandboxAccountStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newGetSMSSandboxAccountStatus ::
  GetSMSSandboxAccountStatus
newGetSMSSandboxAccountStatus =
  GetSMSSandboxAccountStatus'

instance Core.AWSRequest GetSMSSandboxAccountStatus where
  type
    AWSResponse GetSMSSandboxAccountStatus =
      GetSMSSandboxAccountStatusResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "GetSMSSandboxAccountStatusResult"
      ( \s h x ->
          GetSMSSandboxAccountStatusResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..@ "IsInSandbox")
      )

instance Prelude.Hashable GetSMSSandboxAccountStatus

instance Prelude.NFData GetSMSSandboxAccountStatus

instance Core.ToHeaders GetSMSSandboxAccountStatus where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath GetSMSSandboxAccountStatus where
  toPath = Prelude.const "/"

instance Core.ToQuery GetSMSSandboxAccountStatus where
  toQuery =
    Prelude.const
      ( Prelude.mconcat
          [ "Action"
              Core.=: ("GetSMSSandboxAccountStatus" :: Prelude.ByteString),
            "Version"
              Core.=: ("2010-03-31" :: Prelude.ByteString)
          ]
      )

-- | /See:/ 'newGetSMSSandboxAccountStatusResponse' smart constructor.
data GetSMSSandboxAccountStatusResponse = GetSMSSandboxAccountStatusResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | Indicates whether the calling account is in the SMS sandbox.
    isInSandbox :: Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetSMSSandboxAccountStatusResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'getSMSSandboxAccountStatusResponse_httpStatus' - The response's http status code.
--
-- 'isInSandbox', 'getSMSSandboxAccountStatusResponse_isInSandbox' - Indicates whether the calling account is in the SMS sandbox.
newGetSMSSandboxAccountStatusResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'isInSandbox'
  Prelude.Bool ->
  GetSMSSandboxAccountStatusResponse
newGetSMSSandboxAccountStatusResponse
  pHttpStatus_
  pIsInSandbox_ =
    GetSMSSandboxAccountStatusResponse'
      { httpStatus =
          pHttpStatus_,
        isInSandbox = pIsInSandbox_
      }

-- | The response's http status code.
getSMSSandboxAccountStatusResponse_httpStatus :: Lens.Lens' GetSMSSandboxAccountStatusResponse Prelude.Int
getSMSSandboxAccountStatusResponse_httpStatus = Lens.lens (\GetSMSSandboxAccountStatusResponse' {httpStatus} -> httpStatus) (\s@GetSMSSandboxAccountStatusResponse' {} a -> s {httpStatus = a} :: GetSMSSandboxAccountStatusResponse)

-- | Indicates whether the calling account is in the SMS sandbox.
getSMSSandboxAccountStatusResponse_isInSandbox :: Lens.Lens' GetSMSSandboxAccountStatusResponse Prelude.Bool
getSMSSandboxAccountStatusResponse_isInSandbox = Lens.lens (\GetSMSSandboxAccountStatusResponse' {isInSandbox} -> isInSandbox) (\s@GetSMSSandboxAccountStatusResponse' {} a -> s {isInSandbox = a} :: GetSMSSandboxAccountStatusResponse)

instance
  Prelude.NFData
    GetSMSSandboxAccountStatusResponse
