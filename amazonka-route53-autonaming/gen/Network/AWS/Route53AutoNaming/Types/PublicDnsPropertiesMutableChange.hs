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
-- Module      : Network.AWS.Route53AutoNaming.Types.PublicDnsPropertiesMutableChange
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.PublicDnsPropertiesMutableChange where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Route53AutoNaming.Types.SOAChange

-- | Updated DNS properties for the public DNS namespace.
--
-- /See:/ 'newPublicDnsPropertiesMutableChange' smart constructor.
data PublicDnsPropertiesMutableChange = PublicDnsPropertiesMutableChange'
  { -- | Updated fields for the Start of Authority (SOA) record for the hosted
    -- zone for the public DNS namespace.
    soa :: SOAChange
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PublicDnsPropertiesMutableChange' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'soa', 'publicDnsPropertiesMutableChange_soa' - Updated fields for the Start of Authority (SOA) record for the hosted
-- zone for the public DNS namespace.
newPublicDnsPropertiesMutableChange ::
  -- | 'soa'
  SOAChange ->
  PublicDnsPropertiesMutableChange
newPublicDnsPropertiesMutableChange pSOA_ =
  PublicDnsPropertiesMutableChange' {soa = pSOA_}

-- | Updated fields for the Start of Authority (SOA) record for the hosted
-- zone for the public DNS namespace.
publicDnsPropertiesMutableChange_soa :: Lens.Lens' PublicDnsPropertiesMutableChange SOAChange
publicDnsPropertiesMutableChange_soa = Lens.lens (\PublicDnsPropertiesMutableChange' {soa} -> soa) (\s@PublicDnsPropertiesMutableChange' {} a -> s {soa = a} :: PublicDnsPropertiesMutableChange)

instance
  Prelude.Hashable
    PublicDnsPropertiesMutableChange

instance
  Prelude.NFData
    PublicDnsPropertiesMutableChange

instance Core.ToJSON PublicDnsPropertiesMutableChange where
  toJSON PublicDnsPropertiesMutableChange' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("SOA" Core..= soa)]
      )
