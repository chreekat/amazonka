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
-- Module      : Network.AWS.Route53RecoveryControlConfig.DeleteSafetyRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a safety rule.
--
-- \/>
module Network.AWS.Route53RecoveryControlConfig.DeleteSafetyRule
  ( -- * Creating a Request
    DeleteSafetyRule (..),
    newDeleteSafetyRule,

    -- * Request Lenses
    deleteSafetyRule_safetyRuleArn,

    -- * Destructuring the Response
    DeleteSafetyRuleResponse (..),
    newDeleteSafetyRuleResponse,

    -- * Response Lenses
    deleteSafetyRuleResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Route53RecoveryControlConfig.Types

-- | /See:/ 'newDeleteSafetyRule' smart constructor.
data DeleteSafetyRule = DeleteSafetyRule'
  { -- | The request body that you include when you update a safety rule.
    safetyRuleArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteSafetyRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'safetyRuleArn', 'deleteSafetyRule_safetyRuleArn' - The request body that you include when you update a safety rule.
newDeleteSafetyRule ::
  -- | 'safetyRuleArn'
  Prelude.Text ->
  DeleteSafetyRule
newDeleteSafetyRule pSafetyRuleArn_ =
  DeleteSafetyRule' {safetyRuleArn = pSafetyRuleArn_}

-- | The request body that you include when you update a safety rule.
deleteSafetyRule_safetyRuleArn :: Lens.Lens' DeleteSafetyRule Prelude.Text
deleteSafetyRule_safetyRuleArn = Lens.lens (\DeleteSafetyRule' {safetyRuleArn} -> safetyRuleArn) (\s@DeleteSafetyRule' {} a -> s {safetyRuleArn = a} :: DeleteSafetyRule)

instance Core.AWSRequest DeleteSafetyRule where
  type
    AWSResponse DeleteSafetyRule =
      DeleteSafetyRuleResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteSafetyRuleResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteSafetyRule

instance Prelude.NFData DeleteSafetyRule

instance Core.ToHeaders DeleteSafetyRule where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteSafetyRule where
  toPath DeleteSafetyRule' {..} =
    Prelude.mconcat
      ["/safetyrule/", Core.toBS safetyRuleArn]

instance Core.ToQuery DeleteSafetyRule where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteSafetyRuleResponse' smart constructor.
data DeleteSafetyRuleResponse = DeleteSafetyRuleResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteSafetyRuleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteSafetyRuleResponse_httpStatus' - The response's http status code.
newDeleteSafetyRuleResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteSafetyRuleResponse
newDeleteSafetyRuleResponse pHttpStatus_ =
  DeleteSafetyRuleResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteSafetyRuleResponse_httpStatus :: Lens.Lens' DeleteSafetyRuleResponse Prelude.Int
deleteSafetyRuleResponse_httpStatus = Lens.lens (\DeleteSafetyRuleResponse' {httpStatus} -> httpStatus) (\s@DeleteSafetyRuleResponse' {} a -> s {httpStatus = a} :: DeleteSafetyRuleResponse)

instance Prelude.NFData DeleteSafetyRuleResponse
