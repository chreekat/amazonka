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
-- Module      : Network.AWS.EC2.DeleteSubnetCidrReservation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a subnet CIDR reservation.
module Network.AWS.EC2.DeleteSubnetCidrReservation
  ( -- * Creating a Request
    DeleteSubnetCidrReservation (..),
    newDeleteSubnetCidrReservation,

    -- * Request Lenses
    deleteSubnetCidrReservation_dryRun,
    deleteSubnetCidrReservation_subnetCidrReservationId,

    -- * Destructuring the Response
    DeleteSubnetCidrReservationResponse (..),
    newDeleteSubnetCidrReservationResponse,

    -- * Response Lenses
    deleteSubnetCidrReservationResponse_deletedSubnetCidrReservation,
    deleteSubnetCidrReservationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteSubnetCidrReservation' smart constructor.
data DeleteSubnetCidrReservation = DeleteSubnetCidrReservation'
  { -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The ID of the subnet CIDR reservation.
    subnetCidrReservationId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteSubnetCidrReservation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dryRun', 'deleteSubnetCidrReservation_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'subnetCidrReservationId', 'deleteSubnetCidrReservation_subnetCidrReservationId' - The ID of the subnet CIDR reservation.
newDeleteSubnetCidrReservation ::
  -- | 'subnetCidrReservationId'
  Prelude.Text ->
  DeleteSubnetCidrReservation
newDeleteSubnetCidrReservation
  pSubnetCidrReservationId_ =
    DeleteSubnetCidrReservation'
      { dryRun =
          Prelude.Nothing,
        subnetCidrReservationId =
          pSubnetCidrReservationId_
      }

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
deleteSubnetCidrReservation_dryRun :: Lens.Lens' DeleteSubnetCidrReservation (Prelude.Maybe Prelude.Bool)
deleteSubnetCidrReservation_dryRun = Lens.lens (\DeleteSubnetCidrReservation' {dryRun} -> dryRun) (\s@DeleteSubnetCidrReservation' {} a -> s {dryRun = a} :: DeleteSubnetCidrReservation)

-- | The ID of the subnet CIDR reservation.
deleteSubnetCidrReservation_subnetCidrReservationId :: Lens.Lens' DeleteSubnetCidrReservation Prelude.Text
deleteSubnetCidrReservation_subnetCidrReservationId = Lens.lens (\DeleteSubnetCidrReservation' {subnetCidrReservationId} -> subnetCidrReservationId) (\s@DeleteSubnetCidrReservation' {} a -> s {subnetCidrReservationId = a} :: DeleteSubnetCidrReservation)

instance Core.AWSRequest DeleteSubnetCidrReservation where
  type
    AWSResponse DeleteSubnetCidrReservation =
      DeleteSubnetCidrReservationResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          DeleteSubnetCidrReservationResponse'
            Prelude.<$> (x Core..@? "deletedSubnetCidrReservation")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteSubnetCidrReservation

instance Prelude.NFData DeleteSubnetCidrReservation

instance Core.ToHeaders DeleteSubnetCidrReservation where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DeleteSubnetCidrReservation where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteSubnetCidrReservation where
  toQuery DeleteSubnetCidrReservation' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ( "DeleteSubnetCidrReservation" ::
                      Prelude.ByteString
                  ),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        "DryRun" Core.=: dryRun,
        "SubnetCidrReservationId"
          Core.=: subnetCidrReservationId
      ]

-- | /See:/ 'newDeleteSubnetCidrReservationResponse' smart constructor.
data DeleteSubnetCidrReservationResponse = DeleteSubnetCidrReservationResponse'
  { -- | Information about the deleted subnet CIDR reservation.
    deletedSubnetCidrReservation :: Prelude.Maybe SubnetCidrReservation,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteSubnetCidrReservationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deletedSubnetCidrReservation', 'deleteSubnetCidrReservationResponse_deletedSubnetCidrReservation' - Information about the deleted subnet CIDR reservation.
--
-- 'httpStatus', 'deleteSubnetCidrReservationResponse_httpStatus' - The response's http status code.
newDeleteSubnetCidrReservationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteSubnetCidrReservationResponse
newDeleteSubnetCidrReservationResponse pHttpStatus_ =
  DeleteSubnetCidrReservationResponse'
    { deletedSubnetCidrReservation =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the deleted subnet CIDR reservation.
deleteSubnetCidrReservationResponse_deletedSubnetCidrReservation :: Lens.Lens' DeleteSubnetCidrReservationResponse (Prelude.Maybe SubnetCidrReservation)
deleteSubnetCidrReservationResponse_deletedSubnetCidrReservation = Lens.lens (\DeleteSubnetCidrReservationResponse' {deletedSubnetCidrReservation} -> deletedSubnetCidrReservation) (\s@DeleteSubnetCidrReservationResponse' {} a -> s {deletedSubnetCidrReservation = a} :: DeleteSubnetCidrReservationResponse)

-- | The response's http status code.
deleteSubnetCidrReservationResponse_httpStatus :: Lens.Lens' DeleteSubnetCidrReservationResponse Prelude.Int
deleteSubnetCidrReservationResponse_httpStatus = Lens.lens (\DeleteSubnetCidrReservationResponse' {httpStatus} -> httpStatus) (\s@DeleteSubnetCidrReservationResponse' {} a -> s {httpStatus = a} :: DeleteSubnetCidrReservationResponse)

instance
  Prelude.NFData
    DeleteSubnetCidrReservationResponse
