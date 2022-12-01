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
-- Module      : Amazonka.Scheduler.Types.ScheduleSummary
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Scheduler.Types.ScheduleSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Scheduler.Types.ScheduleState
import Amazonka.Scheduler.Types.TargetSummary

-- | The details of a schedule.
--
-- /See:/ 'newScheduleSummary' smart constructor.
data ScheduleSummary = ScheduleSummary'
  { -- | The name of the schedule.
    name :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the schedule.
    arn :: Prelude.Maybe Prelude.Text,
    -- | Specifies whether the schedule is enabled or disabled.
    state :: Prelude.Maybe ScheduleState,
    -- | The time at which the schedule was created.
    creationDate :: Prelude.Maybe Core.POSIX,
    -- | The schedule\'s target details.
    target :: Prelude.Maybe TargetSummary,
    -- | The name of the schedule group associated with this schedule.
    groupName :: Prelude.Maybe Prelude.Text,
    -- | The time at which the schedule was last modified.
    lastModificationDate :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ScheduleSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'scheduleSummary_name' - The name of the schedule.
--
-- 'arn', 'scheduleSummary_arn' - The Amazon Resource Name (ARN) of the schedule.
--
-- 'state', 'scheduleSummary_state' - Specifies whether the schedule is enabled or disabled.
--
-- 'creationDate', 'scheduleSummary_creationDate' - The time at which the schedule was created.
--
-- 'target', 'scheduleSummary_target' - The schedule\'s target details.
--
-- 'groupName', 'scheduleSummary_groupName' - The name of the schedule group associated with this schedule.
--
-- 'lastModificationDate', 'scheduleSummary_lastModificationDate' - The time at which the schedule was last modified.
newScheduleSummary ::
  ScheduleSummary
newScheduleSummary =
  ScheduleSummary'
    { name = Prelude.Nothing,
      arn = Prelude.Nothing,
      state = Prelude.Nothing,
      creationDate = Prelude.Nothing,
      target = Prelude.Nothing,
      groupName = Prelude.Nothing,
      lastModificationDate = Prelude.Nothing
    }

-- | The name of the schedule.
scheduleSummary_name :: Lens.Lens' ScheduleSummary (Prelude.Maybe Prelude.Text)
scheduleSummary_name = Lens.lens (\ScheduleSummary' {name} -> name) (\s@ScheduleSummary' {} a -> s {name = a} :: ScheduleSummary)

-- | The Amazon Resource Name (ARN) of the schedule.
scheduleSummary_arn :: Lens.Lens' ScheduleSummary (Prelude.Maybe Prelude.Text)
scheduleSummary_arn = Lens.lens (\ScheduleSummary' {arn} -> arn) (\s@ScheduleSummary' {} a -> s {arn = a} :: ScheduleSummary)

-- | Specifies whether the schedule is enabled or disabled.
scheduleSummary_state :: Lens.Lens' ScheduleSummary (Prelude.Maybe ScheduleState)
scheduleSummary_state = Lens.lens (\ScheduleSummary' {state} -> state) (\s@ScheduleSummary' {} a -> s {state = a} :: ScheduleSummary)

-- | The time at which the schedule was created.
scheduleSummary_creationDate :: Lens.Lens' ScheduleSummary (Prelude.Maybe Prelude.UTCTime)
scheduleSummary_creationDate = Lens.lens (\ScheduleSummary' {creationDate} -> creationDate) (\s@ScheduleSummary' {} a -> s {creationDate = a} :: ScheduleSummary) Prelude.. Lens.mapping Core._Time

-- | The schedule\'s target details.
scheduleSummary_target :: Lens.Lens' ScheduleSummary (Prelude.Maybe TargetSummary)
scheduleSummary_target = Lens.lens (\ScheduleSummary' {target} -> target) (\s@ScheduleSummary' {} a -> s {target = a} :: ScheduleSummary)

-- | The name of the schedule group associated with this schedule.
scheduleSummary_groupName :: Lens.Lens' ScheduleSummary (Prelude.Maybe Prelude.Text)
scheduleSummary_groupName = Lens.lens (\ScheduleSummary' {groupName} -> groupName) (\s@ScheduleSummary' {} a -> s {groupName = a} :: ScheduleSummary)

-- | The time at which the schedule was last modified.
scheduleSummary_lastModificationDate :: Lens.Lens' ScheduleSummary (Prelude.Maybe Prelude.UTCTime)
scheduleSummary_lastModificationDate = Lens.lens (\ScheduleSummary' {lastModificationDate} -> lastModificationDate) (\s@ScheduleSummary' {} a -> s {lastModificationDate = a} :: ScheduleSummary) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON ScheduleSummary where
  parseJSON =
    Core.withObject
      "ScheduleSummary"
      ( \x ->
          ScheduleSummary'
            Prelude.<$> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "Arn")
            Prelude.<*> (x Core..:? "State")
            Prelude.<*> (x Core..:? "CreationDate")
            Prelude.<*> (x Core..:? "Target")
            Prelude.<*> (x Core..:? "GroupName")
            Prelude.<*> (x Core..:? "LastModificationDate")
      )

instance Prelude.Hashable ScheduleSummary where
  hashWithSalt _salt ScheduleSummary' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` state
      `Prelude.hashWithSalt` creationDate
      `Prelude.hashWithSalt` target
      `Prelude.hashWithSalt` groupName
      `Prelude.hashWithSalt` lastModificationDate

instance Prelude.NFData ScheduleSummary where
  rnf ScheduleSummary' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf creationDate
      `Prelude.seq` Prelude.rnf target
      `Prelude.seq` Prelude.rnf groupName
      `Prelude.seq` Prelude.rnf lastModificationDate
