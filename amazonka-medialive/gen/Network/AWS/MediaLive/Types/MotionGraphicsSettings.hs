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
-- Module      : Network.AWS.MediaLive.Types.MotionGraphicsSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.MotionGraphicsSettings where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaLive.Types.HtmlMotionGraphicsSettings
import qualified Network.AWS.Prelude as Prelude

-- | Motion Graphics Settings
--
-- /See:/ 'newMotionGraphicsSettings' smart constructor.
data MotionGraphicsSettings = MotionGraphicsSettings'
  { htmlMotionGraphicsSettings :: Prelude.Maybe HtmlMotionGraphicsSettings
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MotionGraphicsSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'htmlMotionGraphicsSettings', 'motionGraphicsSettings_htmlMotionGraphicsSettings' - Undocumented member.
newMotionGraphicsSettings ::
  MotionGraphicsSettings
newMotionGraphicsSettings =
  MotionGraphicsSettings'
    { htmlMotionGraphicsSettings =
        Prelude.Nothing
    }

-- | Undocumented member.
motionGraphicsSettings_htmlMotionGraphicsSettings :: Lens.Lens' MotionGraphicsSettings (Prelude.Maybe HtmlMotionGraphicsSettings)
motionGraphicsSettings_htmlMotionGraphicsSettings = Lens.lens (\MotionGraphicsSettings' {htmlMotionGraphicsSettings} -> htmlMotionGraphicsSettings) (\s@MotionGraphicsSettings' {} a -> s {htmlMotionGraphicsSettings = a} :: MotionGraphicsSettings)

instance Core.FromJSON MotionGraphicsSettings where
  parseJSON =
    Core.withObject
      "MotionGraphicsSettings"
      ( \x ->
          MotionGraphicsSettings'
            Prelude.<$> (x Core..:? "htmlMotionGraphicsSettings")
      )

instance Prelude.Hashable MotionGraphicsSettings

instance Prelude.NFData MotionGraphicsSettings

instance Core.ToJSON MotionGraphicsSettings where
  toJSON MotionGraphicsSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("htmlMotionGraphicsSettings" Core..=)
              Prelude.<$> htmlMotionGraphicsSettings
          ]
      )
