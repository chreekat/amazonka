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
-- Module      : Amazonka.LookoutEquipment.Types.DatasetSummary
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LookoutEquipment.Types.DatasetSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import Amazonka.LookoutEquipment.Types.DatasetStatus
import qualified Amazonka.Prelude as Prelude

-- | Contains information about the specific data set, including name, ARN,
-- and status.
--
-- /See:/ 'newDatasetSummary' smart constructor.
data DatasetSummary = DatasetSummary'
  { -- | The name of the dataset.
    datasetName :: Prelude.Maybe Prelude.Text,
    -- | Indicates the status of the dataset.
    status :: Prelude.Maybe DatasetStatus,
    -- | The Amazon Resource Name (ARN) of the specified dataset.
    datasetArn :: Prelude.Maybe Prelude.Text,
    -- | The time at which the dataset was created in Amazon Lookout for
    -- Equipment.
    createdAt :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DatasetSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'datasetName', 'datasetSummary_datasetName' - The name of the dataset.
--
-- 'status', 'datasetSummary_status' - Indicates the status of the dataset.
--
-- 'datasetArn', 'datasetSummary_datasetArn' - The Amazon Resource Name (ARN) of the specified dataset.
--
-- 'createdAt', 'datasetSummary_createdAt' - The time at which the dataset was created in Amazon Lookout for
-- Equipment.
newDatasetSummary ::
  DatasetSummary
newDatasetSummary =
  DatasetSummary'
    { datasetName = Prelude.Nothing,
      status = Prelude.Nothing,
      datasetArn = Prelude.Nothing,
      createdAt = Prelude.Nothing
    }

-- | The name of the dataset.
datasetSummary_datasetName :: Lens.Lens' DatasetSummary (Prelude.Maybe Prelude.Text)
datasetSummary_datasetName = Lens.lens (\DatasetSummary' {datasetName} -> datasetName) (\s@DatasetSummary' {} a -> s {datasetName = a} :: DatasetSummary)

-- | Indicates the status of the dataset.
datasetSummary_status :: Lens.Lens' DatasetSummary (Prelude.Maybe DatasetStatus)
datasetSummary_status = Lens.lens (\DatasetSummary' {status} -> status) (\s@DatasetSummary' {} a -> s {status = a} :: DatasetSummary)

-- | The Amazon Resource Name (ARN) of the specified dataset.
datasetSummary_datasetArn :: Lens.Lens' DatasetSummary (Prelude.Maybe Prelude.Text)
datasetSummary_datasetArn = Lens.lens (\DatasetSummary' {datasetArn} -> datasetArn) (\s@DatasetSummary' {} a -> s {datasetArn = a} :: DatasetSummary)

-- | The time at which the dataset was created in Amazon Lookout for
-- Equipment.
datasetSummary_createdAt :: Lens.Lens' DatasetSummary (Prelude.Maybe Prelude.UTCTime)
datasetSummary_createdAt = Lens.lens (\DatasetSummary' {createdAt} -> createdAt) (\s@DatasetSummary' {} a -> s {createdAt = a} :: DatasetSummary) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON DatasetSummary where
  parseJSON =
    Core.withObject
      "DatasetSummary"
      ( \x ->
          DatasetSummary'
            Prelude.<$> (x Core..:? "DatasetName")
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "DatasetArn")
            Prelude.<*> (x Core..:? "CreatedAt")
      )

instance Prelude.Hashable DatasetSummary where
  hashWithSalt _salt DatasetSummary' {..} =
    _salt `Prelude.hashWithSalt` datasetName
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` datasetArn
      `Prelude.hashWithSalt` createdAt

instance Prelude.NFData DatasetSummary where
  rnf DatasetSummary' {..} =
    Prelude.rnf datasetName
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf datasetArn
      `Prelude.seq` Prelude.rnf createdAt
