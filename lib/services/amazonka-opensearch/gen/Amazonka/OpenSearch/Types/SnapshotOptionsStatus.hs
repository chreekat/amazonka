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
-- Module      : Amazonka.OpenSearch.Types.SnapshotOptionsStatus
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.OpenSearch.Types.SnapshotOptionsStatus where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import Amazonka.OpenSearch.Types.OptionStatus
import Amazonka.OpenSearch.Types.SnapshotOptions
import qualified Amazonka.Prelude as Prelude

-- | Container for information about a daily automated snapshot for an
-- OpenSearch Service domain.
--
-- /See:/ 'newSnapshotOptionsStatus' smart constructor.
data SnapshotOptionsStatus = SnapshotOptionsStatus'
  { -- | The daily snapshot options specified for the domain.
    options :: SnapshotOptions,
    -- | The status of a daily automated snapshot.
    status :: OptionStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SnapshotOptionsStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'options', 'snapshotOptionsStatus_options' - The daily snapshot options specified for the domain.
--
-- 'status', 'snapshotOptionsStatus_status' - The status of a daily automated snapshot.
newSnapshotOptionsStatus ::
  -- | 'options'
  SnapshotOptions ->
  -- | 'status'
  OptionStatus ->
  SnapshotOptionsStatus
newSnapshotOptionsStatus pOptions_ pStatus_ =
  SnapshotOptionsStatus'
    { options = pOptions_,
      status = pStatus_
    }

-- | The daily snapshot options specified for the domain.
snapshotOptionsStatus_options :: Lens.Lens' SnapshotOptionsStatus SnapshotOptions
snapshotOptionsStatus_options = Lens.lens (\SnapshotOptionsStatus' {options} -> options) (\s@SnapshotOptionsStatus' {} a -> s {options = a} :: SnapshotOptionsStatus)

-- | The status of a daily automated snapshot.
snapshotOptionsStatus_status :: Lens.Lens' SnapshotOptionsStatus OptionStatus
snapshotOptionsStatus_status = Lens.lens (\SnapshotOptionsStatus' {status} -> status) (\s@SnapshotOptionsStatus' {} a -> s {status = a} :: SnapshotOptionsStatus)

instance Core.FromJSON SnapshotOptionsStatus where
  parseJSON =
    Core.withObject
      "SnapshotOptionsStatus"
      ( \x ->
          SnapshotOptionsStatus'
            Prelude.<$> (x Core..: "Options")
            Prelude.<*> (x Core..: "Status")
      )

instance Prelude.Hashable SnapshotOptionsStatus where
  hashWithSalt _salt SnapshotOptionsStatus' {..} =
    _salt `Prelude.hashWithSalt` options
      `Prelude.hashWithSalt` status

instance Prelude.NFData SnapshotOptionsStatus where
  rnf SnapshotOptionsStatus' {..} =
    Prelude.rnf options
      `Prelude.seq` Prelude.rnf status
