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
-- Module      : Amazonka.AppRunner.Types.OperationSummary
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AppRunner.Types.OperationSummary where

import Amazonka.AppRunner.Types.OperationStatus
import Amazonka.AppRunner.Types.OperationType
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Prelude as Prelude

-- | Provides summary information for an operation that occurred on an App
-- Runner service.
--
-- /See:/ 'newOperationSummary' smart constructor.
data OperationSummary = OperationSummary'
  { -- | The type of operation. It indicates a specific action that occured.
    type' :: Prelude.Maybe OperationType,
    -- | The time when the operation ended. It\'s in the Unix time stamp format.
    endedAt :: Prelude.Maybe Core.POSIX,
    -- | The Amazon Resource Name (ARN) of the resource that the operation acted
    -- on (for example, an App Runner service).
    targetArn :: Prelude.Maybe Prelude.Text,
    -- | The current state of the operation.
    status :: Prelude.Maybe OperationStatus,
    -- | A unique ID of this operation. It\'s unique in the scope of the App
    -- Runner service.
    id :: Prelude.Maybe Prelude.Text,
    -- | The time when the operation started. It\'s in the Unix time stamp
    -- format.
    startedAt :: Prelude.Maybe Core.POSIX,
    -- | The time when the operation was last updated. It\'s in the Unix time
    -- stamp format.
    updatedAt :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'OperationSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'operationSummary_type' - The type of operation. It indicates a specific action that occured.
--
-- 'endedAt', 'operationSummary_endedAt' - The time when the operation ended. It\'s in the Unix time stamp format.
--
-- 'targetArn', 'operationSummary_targetArn' - The Amazon Resource Name (ARN) of the resource that the operation acted
-- on (for example, an App Runner service).
--
-- 'status', 'operationSummary_status' - The current state of the operation.
--
-- 'id', 'operationSummary_id' - A unique ID of this operation. It\'s unique in the scope of the App
-- Runner service.
--
-- 'startedAt', 'operationSummary_startedAt' - The time when the operation started. It\'s in the Unix time stamp
-- format.
--
-- 'updatedAt', 'operationSummary_updatedAt' - The time when the operation was last updated. It\'s in the Unix time
-- stamp format.
newOperationSummary ::
  OperationSummary
newOperationSummary =
  OperationSummary'
    { type' = Prelude.Nothing,
      endedAt = Prelude.Nothing,
      targetArn = Prelude.Nothing,
      status = Prelude.Nothing,
      id = Prelude.Nothing,
      startedAt = Prelude.Nothing,
      updatedAt = Prelude.Nothing
    }

-- | The type of operation. It indicates a specific action that occured.
operationSummary_type :: Lens.Lens' OperationSummary (Prelude.Maybe OperationType)
operationSummary_type = Lens.lens (\OperationSummary' {type'} -> type') (\s@OperationSummary' {} a -> s {type' = a} :: OperationSummary)

-- | The time when the operation ended. It\'s in the Unix time stamp format.
operationSummary_endedAt :: Lens.Lens' OperationSummary (Prelude.Maybe Prelude.UTCTime)
operationSummary_endedAt = Lens.lens (\OperationSummary' {endedAt} -> endedAt) (\s@OperationSummary' {} a -> s {endedAt = a} :: OperationSummary) Prelude.. Lens.mapping Core._Time

-- | The Amazon Resource Name (ARN) of the resource that the operation acted
-- on (for example, an App Runner service).
operationSummary_targetArn :: Lens.Lens' OperationSummary (Prelude.Maybe Prelude.Text)
operationSummary_targetArn = Lens.lens (\OperationSummary' {targetArn} -> targetArn) (\s@OperationSummary' {} a -> s {targetArn = a} :: OperationSummary)

-- | The current state of the operation.
operationSummary_status :: Lens.Lens' OperationSummary (Prelude.Maybe OperationStatus)
operationSummary_status = Lens.lens (\OperationSummary' {status} -> status) (\s@OperationSummary' {} a -> s {status = a} :: OperationSummary)

-- | A unique ID of this operation. It\'s unique in the scope of the App
-- Runner service.
operationSummary_id :: Lens.Lens' OperationSummary (Prelude.Maybe Prelude.Text)
operationSummary_id = Lens.lens (\OperationSummary' {id} -> id) (\s@OperationSummary' {} a -> s {id = a} :: OperationSummary)

-- | The time when the operation started. It\'s in the Unix time stamp
-- format.
operationSummary_startedAt :: Lens.Lens' OperationSummary (Prelude.Maybe Prelude.UTCTime)
operationSummary_startedAt = Lens.lens (\OperationSummary' {startedAt} -> startedAt) (\s@OperationSummary' {} a -> s {startedAt = a} :: OperationSummary) Prelude.. Lens.mapping Core._Time

-- | The time when the operation was last updated. It\'s in the Unix time
-- stamp format.
operationSummary_updatedAt :: Lens.Lens' OperationSummary (Prelude.Maybe Prelude.UTCTime)
operationSummary_updatedAt = Lens.lens (\OperationSummary' {updatedAt} -> updatedAt) (\s@OperationSummary' {} a -> s {updatedAt = a} :: OperationSummary) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON OperationSummary where
  parseJSON =
    Core.withObject
      "OperationSummary"
      ( \x ->
          OperationSummary'
            Prelude.<$> (x Core..:? "Type")
            Prelude.<*> (x Core..:? "EndedAt")
            Prelude.<*> (x Core..:? "TargetArn")
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "Id")
            Prelude.<*> (x Core..:? "StartedAt")
            Prelude.<*> (x Core..:? "UpdatedAt")
      )

instance Prelude.Hashable OperationSummary where
  hashWithSalt _salt OperationSummary' {..} =
    _salt `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` endedAt
      `Prelude.hashWithSalt` targetArn
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` startedAt
      `Prelude.hashWithSalt` updatedAt

instance Prelude.NFData OperationSummary where
  rnf OperationSummary' {..} =
    Prelude.rnf type'
      `Prelude.seq` Prelude.rnf endedAt
      `Prelude.seq` Prelude.rnf targetArn
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf startedAt
      `Prelude.seq` Prelude.rnf updatedAt
