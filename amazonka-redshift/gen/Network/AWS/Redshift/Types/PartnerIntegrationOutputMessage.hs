{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.PartnerIntegrationOutputMessage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.PartnerIntegrationOutputMessage where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Redshift.Internal

-- | /See:/ 'newPartnerIntegrationOutputMessage' smart constructor.
data PartnerIntegrationOutputMessage = PartnerIntegrationOutputMessage'
  { -- | The name of the partner that is authorized to send data.
    partnerName :: Prelude.Maybe Prelude.Text,
    -- | The name of the database that receives data from the partner.
    databaseName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PartnerIntegrationOutputMessage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'partnerName', 'partnerIntegrationOutputMessage_partnerName' - The name of the partner that is authorized to send data.
--
-- 'databaseName', 'partnerIntegrationOutputMessage_databaseName' - The name of the database that receives data from the partner.
newPartnerIntegrationOutputMessage ::
  PartnerIntegrationOutputMessage
newPartnerIntegrationOutputMessage =
  PartnerIntegrationOutputMessage'
    { partnerName =
        Prelude.Nothing,
      databaseName = Prelude.Nothing
    }

-- | The name of the partner that is authorized to send data.
partnerIntegrationOutputMessage_partnerName :: Lens.Lens' PartnerIntegrationOutputMessage (Prelude.Maybe Prelude.Text)
partnerIntegrationOutputMessage_partnerName = Lens.lens (\PartnerIntegrationOutputMessage' {partnerName} -> partnerName) (\s@PartnerIntegrationOutputMessage' {} a -> s {partnerName = a} :: PartnerIntegrationOutputMessage)

-- | The name of the database that receives data from the partner.
partnerIntegrationOutputMessage_databaseName :: Lens.Lens' PartnerIntegrationOutputMessage (Prelude.Maybe Prelude.Text)
partnerIntegrationOutputMessage_databaseName = Lens.lens (\PartnerIntegrationOutputMessage' {databaseName} -> databaseName) (\s@PartnerIntegrationOutputMessage' {} a -> s {databaseName = a} :: PartnerIntegrationOutputMessage)

instance Core.FromXML PartnerIntegrationOutputMessage where
  parseXML x =
    PartnerIntegrationOutputMessage'
      Prelude.<$> (x Core..@? "PartnerName")
      Prelude.<*> (x Core..@? "DatabaseName")

instance
  Prelude.Hashable
    PartnerIntegrationOutputMessage

instance
  Prelude.NFData
    PartnerIntegrationOutputMessage
