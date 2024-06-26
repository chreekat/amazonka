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
-- Module      : Network.AWS.AutoScaling.Types.InstanceRefreshProgressDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScaling.Types.InstanceRefreshProgressDetails where

import Network.AWS.AutoScaling.Types.InstanceRefreshLivePoolProgress
import Network.AWS.AutoScaling.Types.InstanceRefreshWarmPoolProgress
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Reports the progress of an instance refresh on an Auto Scaling group
-- that has a warm pool. This includes separate details for instances in
-- the warm pool and instances in the Auto Scaling group (the live pool).
--
-- /See:/ 'newInstanceRefreshProgressDetails' smart constructor.
data InstanceRefreshProgressDetails = InstanceRefreshProgressDetails'
  { -- | Indicates the progress of an instance refresh on instances that are in
    -- the Auto Scaling group.
    livePoolProgress :: Prelude.Maybe InstanceRefreshLivePoolProgress,
    -- | Indicates the progress of an instance refresh on instances that are in
    -- the warm pool.
    warmPoolProgress :: Prelude.Maybe InstanceRefreshWarmPoolProgress
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InstanceRefreshProgressDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'livePoolProgress', 'instanceRefreshProgressDetails_livePoolProgress' - Indicates the progress of an instance refresh on instances that are in
-- the Auto Scaling group.
--
-- 'warmPoolProgress', 'instanceRefreshProgressDetails_warmPoolProgress' - Indicates the progress of an instance refresh on instances that are in
-- the warm pool.
newInstanceRefreshProgressDetails ::
  InstanceRefreshProgressDetails
newInstanceRefreshProgressDetails =
  InstanceRefreshProgressDetails'
    { livePoolProgress =
        Prelude.Nothing,
      warmPoolProgress = Prelude.Nothing
    }

-- | Indicates the progress of an instance refresh on instances that are in
-- the Auto Scaling group.
instanceRefreshProgressDetails_livePoolProgress :: Lens.Lens' InstanceRefreshProgressDetails (Prelude.Maybe InstanceRefreshLivePoolProgress)
instanceRefreshProgressDetails_livePoolProgress = Lens.lens (\InstanceRefreshProgressDetails' {livePoolProgress} -> livePoolProgress) (\s@InstanceRefreshProgressDetails' {} a -> s {livePoolProgress = a} :: InstanceRefreshProgressDetails)

-- | Indicates the progress of an instance refresh on instances that are in
-- the warm pool.
instanceRefreshProgressDetails_warmPoolProgress :: Lens.Lens' InstanceRefreshProgressDetails (Prelude.Maybe InstanceRefreshWarmPoolProgress)
instanceRefreshProgressDetails_warmPoolProgress = Lens.lens (\InstanceRefreshProgressDetails' {warmPoolProgress} -> warmPoolProgress) (\s@InstanceRefreshProgressDetails' {} a -> s {warmPoolProgress = a} :: InstanceRefreshProgressDetails)

instance Core.FromXML InstanceRefreshProgressDetails where
  parseXML x =
    InstanceRefreshProgressDetails'
      Prelude.<$> (x Core..@? "LivePoolProgress")
      Prelude.<*> (x Core..@? "WarmPoolProgress")

instance
  Prelude.Hashable
    InstanceRefreshProgressDetails

instance
  Prelude.NFData
    InstanceRefreshProgressDetails
