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
-- Module      : Amazonka.ElasticSearch.Types.Limits
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ElasticSearch.Types.Limits where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import Amazonka.ElasticSearch.Types.AdditionalLimit
import Amazonka.ElasticSearch.Types.InstanceLimits
import Amazonka.ElasticSearch.Types.StorageType
import qualified Amazonka.Prelude as Prelude

-- | Limits for given InstanceType and for each of it\'s role.
-- Limits contains following @ StorageTypes, @ @ InstanceLimits @ and
-- @ AdditionalLimits @
--
-- /See:/ 'newLimits' smart constructor.
data Limits = Limits'
  { instanceLimits :: Prelude.Maybe InstanceLimits,
    -- | StorageType represents the list of storage related types and attributes
    -- that are available for given InstanceType.
    storageTypes :: Prelude.Maybe [StorageType],
    -- | List of additional limits that are specific to a given InstanceType and
    -- for each of it\'s @ InstanceRole @ .
    additionalLimits :: Prelude.Maybe [AdditionalLimit]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Limits' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceLimits', 'limits_instanceLimits' - Undocumented member.
--
-- 'storageTypes', 'limits_storageTypes' - StorageType represents the list of storage related types and attributes
-- that are available for given InstanceType.
--
-- 'additionalLimits', 'limits_additionalLimits' - List of additional limits that are specific to a given InstanceType and
-- for each of it\'s @ InstanceRole @ .
newLimits ::
  Limits
newLimits =
  Limits'
    { instanceLimits = Prelude.Nothing,
      storageTypes = Prelude.Nothing,
      additionalLimits = Prelude.Nothing
    }

-- | Undocumented member.
limits_instanceLimits :: Lens.Lens' Limits (Prelude.Maybe InstanceLimits)
limits_instanceLimits = Lens.lens (\Limits' {instanceLimits} -> instanceLimits) (\s@Limits' {} a -> s {instanceLimits = a} :: Limits)

-- | StorageType represents the list of storage related types and attributes
-- that are available for given InstanceType.
limits_storageTypes :: Lens.Lens' Limits (Prelude.Maybe [StorageType])
limits_storageTypes = Lens.lens (\Limits' {storageTypes} -> storageTypes) (\s@Limits' {} a -> s {storageTypes = a} :: Limits) Prelude.. Lens.mapping Lens.coerced

-- | List of additional limits that are specific to a given InstanceType and
-- for each of it\'s @ InstanceRole @ .
limits_additionalLimits :: Lens.Lens' Limits (Prelude.Maybe [AdditionalLimit])
limits_additionalLimits = Lens.lens (\Limits' {additionalLimits} -> additionalLimits) (\s@Limits' {} a -> s {additionalLimits = a} :: Limits) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON Limits where
  parseJSON =
    Core.withObject
      "Limits"
      ( \x ->
          Limits'
            Prelude.<$> (x Core..:? "InstanceLimits")
            Prelude.<*> (x Core..:? "StorageTypes" Core..!= Prelude.mempty)
            Prelude.<*> ( x Core..:? "AdditionalLimits"
                            Core..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable Limits where
  hashWithSalt _salt Limits' {..} =
    _salt `Prelude.hashWithSalt` instanceLimits
      `Prelude.hashWithSalt` storageTypes
      `Prelude.hashWithSalt` additionalLimits

instance Prelude.NFData Limits where
  rnf Limits' {..} =
    Prelude.rnf instanceLimits
      `Prelude.seq` Prelude.rnf storageTypes
      `Prelude.seq` Prelude.rnf additionalLimits
