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
-- Module      : Network.AWS.Route53AutoNaming.Types.PrivateDnsNamespaceProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.PrivateDnsNamespaceProperties where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Route53AutoNaming.Types.PrivateDnsPropertiesMutable

-- | DNS properties for the private DNS namespace.
--
-- /See:/ 'newPrivateDnsNamespaceProperties' smart constructor.
data PrivateDnsNamespaceProperties = PrivateDnsNamespaceProperties'
  { -- | DNS properties for the private DNS namespace.
    dnsProperties :: PrivateDnsPropertiesMutable
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PrivateDnsNamespaceProperties' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dnsProperties', 'privateDnsNamespaceProperties_dnsProperties' - DNS properties for the private DNS namespace.
newPrivateDnsNamespaceProperties ::
  -- | 'dnsProperties'
  PrivateDnsPropertiesMutable ->
  PrivateDnsNamespaceProperties
newPrivateDnsNamespaceProperties pDnsProperties_ =
  PrivateDnsNamespaceProperties'
    { dnsProperties =
        pDnsProperties_
    }

-- | DNS properties for the private DNS namespace.
privateDnsNamespaceProperties_dnsProperties :: Lens.Lens' PrivateDnsNamespaceProperties PrivateDnsPropertiesMutable
privateDnsNamespaceProperties_dnsProperties = Lens.lens (\PrivateDnsNamespaceProperties' {dnsProperties} -> dnsProperties) (\s@PrivateDnsNamespaceProperties' {} a -> s {dnsProperties = a} :: PrivateDnsNamespaceProperties)

instance
  Prelude.Hashable
    PrivateDnsNamespaceProperties

instance Prelude.NFData PrivateDnsNamespaceProperties

instance Core.ToJSON PrivateDnsNamespaceProperties where
  toJSON PrivateDnsNamespaceProperties' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("DnsProperties" Core..= dnsProperties)
          ]
      )
