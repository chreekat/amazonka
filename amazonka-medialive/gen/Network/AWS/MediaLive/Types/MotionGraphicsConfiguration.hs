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
-- Module      : Network.AWS.MediaLive.Types.MotionGraphicsConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.MotionGraphicsConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaLive.Types.MotionGraphicsInsertion
import Network.AWS.MediaLive.Types.MotionGraphicsSettings
import qualified Network.AWS.Prelude as Prelude

-- | Motion Graphics Configuration
--
-- /See:/ 'newMotionGraphicsConfiguration' smart constructor.
data MotionGraphicsConfiguration = MotionGraphicsConfiguration'
  { motionGraphicsInsertion :: Prelude.Maybe MotionGraphicsInsertion,
    -- | Motion Graphics Settings
    motionGraphicsSettings :: MotionGraphicsSettings
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MotionGraphicsConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'motionGraphicsInsertion', 'motionGraphicsConfiguration_motionGraphicsInsertion' - Undocumented member.
--
-- 'motionGraphicsSettings', 'motionGraphicsConfiguration_motionGraphicsSettings' - Motion Graphics Settings
newMotionGraphicsConfiguration ::
  -- | 'motionGraphicsSettings'
  MotionGraphicsSettings ->
  MotionGraphicsConfiguration
newMotionGraphicsConfiguration
  pMotionGraphicsSettings_ =
    MotionGraphicsConfiguration'
      { motionGraphicsInsertion =
          Prelude.Nothing,
        motionGraphicsSettings =
          pMotionGraphicsSettings_
      }

-- | Undocumented member.
motionGraphicsConfiguration_motionGraphicsInsertion :: Lens.Lens' MotionGraphicsConfiguration (Prelude.Maybe MotionGraphicsInsertion)
motionGraphicsConfiguration_motionGraphicsInsertion = Lens.lens (\MotionGraphicsConfiguration' {motionGraphicsInsertion} -> motionGraphicsInsertion) (\s@MotionGraphicsConfiguration' {} a -> s {motionGraphicsInsertion = a} :: MotionGraphicsConfiguration)

-- | Motion Graphics Settings
motionGraphicsConfiguration_motionGraphicsSettings :: Lens.Lens' MotionGraphicsConfiguration MotionGraphicsSettings
motionGraphicsConfiguration_motionGraphicsSettings = Lens.lens (\MotionGraphicsConfiguration' {motionGraphicsSettings} -> motionGraphicsSettings) (\s@MotionGraphicsConfiguration' {} a -> s {motionGraphicsSettings = a} :: MotionGraphicsConfiguration)

instance Core.FromJSON MotionGraphicsConfiguration where
  parseJSON =
    Core.withObject
      "MotionGraphicsConfiguration"
      ( \x ->
          MotionGraphicsConfiguration'
            Prelude.<$> (x Core..:? "motionGraphicsInsertion")
            Prelude.<*> (x Core..: "motionGraphicsSettings")
      )

instance Prelude.Hashable MotionGraphicsConfiguration

instance Prelude.NFData MotionGraphicsConfiguration

instance Core.ToJSON MotionGraphicsConfiguration where
  toJSON MotionGraphicsConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("motionGraphicsInsertion" Core..=)
              Prelude.<$> motionGraphicsInsertion,
            Prelude.Just
              ( "motionGraphicsSettings"
                  Core..= motionGraphicsSettings
              )
          ]
      )
