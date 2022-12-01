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
-- Module      : Amazonka.MediaLive.Types.OutputGroupSettings
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaLive.Types.OutputGroupSettings where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import Amazonka.MediaLive.Types.ArchiveGroupSettings
import Amazonka.MediaLive.Types.FrameCaptureGroupSettings
import Amazonka.MediaLive.Types.HlsGroupSettings
import Amazonka.MediaLive.Types.MediaPackageGroupSettings
import Amazonka.MediaLive.Types.MsSmoothGroupSettings
import Amazonka.MediaLive.Types.MultiplexGroupSettings
import Amazonka.MediaLive.Types.RtmpGroupSettings
import Amazonka.MediaLive.Types.UdpGroupSettings
import qualified Amazonka.Prelude as Prelude

-- | Output Group Settings
--
-- /See:/ 'newOutputGroupSettings' smart constructor.
data OutputGroupSettings = OutputGroupSettings'
  { rtmpGroupSettings :: Prelude.Maybe RtmpGroupSettings,
    udpGroupSettings :: Prelude.Maybe UdpGroupSettings,
    frameCaptureGroupSettings :: Prelude.Maybe FrameCaptureGroupSettings,
    multiplexGroupSettings :: Prelude.Maybe MultiplexGroupSettings,
    archiveGroupSettings :: Prelude.Maybe ArchiveGroupSettings,
    mediaPackageGroupSettings :: Prelude.Maybe MediaPackageGroupSettings,
    hlsGroupSettings :: Prelude.Maybe HlsGroupSettings,
    msSmoothGroupSettings :: Prelude.Maybe MsSmoothGroupSettings
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'OutputGroupSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'rtmpGroupSettings', 'outputGroupSettings_rtmpGroupSettings' - Undocumented member.
--
-- 'udpGroupSettings', 'outputGroupSettings_udpGroupSettings' - Undocumented member.
--
-- 'frameCaptureGroupSettings', 'outputGroupSettings_frameCaptureGroupSettings' - Undocumented member.
--
-- 'multiplexGroupSettings', 'outputGroupSettings_multiplexGroupSettings' - Undocumented member.
--
-- 'archiveGroupSettings', 'outputGroupSettings_archiveGroupSettings' - Undocumented member.
--
-- 'mediaPackageGroupSettings', 'outputGroupSettings_mediaPackageGroupSettings' - Undocumented member.
--
-- 'hlsGroupSettings', 'outputGroupSettings_hlsGroupSettings' - Undocumented member.
--
-- 'msSmoothGroupSettings', 'outputGroupSettings_msSmoothGroupSettings' - Undocumented member.
newOutputGroupSettings ::
  OutputGroupSettings
newOutputGroupSettings =
  OutputGroupSettings'
    { rtmpGroupSettings =
        Prelude.Nothing,
      udpGroupSettings = Prelude.Nothing,
      frameCaptureGroupSettings = Prelude.Nothing,
      multiplexGroupSettings = Prelude.Nothing,
      archiveGroupSettings = Prelude.Nothing,
      mediaPackageGroupSettings = Prelude.Nothing,
      hlsGroupSettings = Prelude.Nothing,
      msSmoothGroupSettings = Prelude.Nothing
    }

-- | Undocumented member.
outputGroupSettings_rtmpGroupSettings :: Lens.Lens' OutputGroupSettings (Prelude.Maybe RtmpGroupSettings)
outputGroupSettings_rtmpGroupSettings = Lens.lens (\OutputGroupSettings' {rtmpGroupSettings} -> rtmpGroupSettings) (\s@OutputGroupSettings' {} a -> s {rtmpGroupSettings = a} :: OutputGroupSettings)

-- | Undocumented member.
outputGroupSettings_udpGroupSettings :: Lens.Lens' OutputGroupSettings (Prelude.Maybe UdpGroupSettings)
outputGroupSettings_udpGroupSettings = Lens.lens (\OutputGroupSettings' {udpGroupSettings} -> udpGroupSettings) (\s@OutputGroupSettings' {} a -> s {udpGroupSettings = a} :: OutputGroupSettings)

-- | Undocumented member.
outputGroupSettings_frameCaptureGroupSettings :: Lens.Lens' OutputGroupSettings (Prelude.Maybe FrameCaptureGroupSettings)
outputGroupSettings_frameCaptureGroupSettings = Lens.lens (\OutputGroupSettings' {frameCaptureGroupSettings} -> frameCaptureGroupSettings) (\s@OutputGroupSettings' {} a -> s {frameCaptureGroupSettings = a} :: OutputGroupSettings)

-- | Undocumented member.
outputGroupSettings_multiplexGroupSettings :: Lens.Lens' OutputGroupSettings (Prelude.Maybe MultiplexGroupSettings)
outputGroupSettings_multiplexGroupSettings = Lens.lens (\OutputGroupSettings' {multiplexGroupSettings} -> multiplexGroupSettings) (\s@OutputGroupSettings' {} a -> s {multiplexGroupSettings = a} :: OutputGroupSettings)

-- | Undocumented member.
outputGroupSettings_archiveGroupSettings :: Lens.Lens' OutputGroupSettings (Prelude.Maybe ArchiveGroupSettings)
outputGroupSettings_archiveGroupSettings = Lens.lens (\OutputGroupSettings' {archiveGroupSettings} -> archiveGroupSettings) (\s@OutputGroupSettings' {} a -> s {archiveGroupSettings = a} :: OutputGroupSettings)

-- | Undocumented member.
outputGroupSettings_mediaPackageGroupSettings :: Lens.Lens' OutputGroupSettings (Prelude.Maybe MediaPackageGroupSettings)
outputGroupSettings_mediaPackageGroupSettings = Lens.lens (\OutputGroupSettings' {mediaPackageGroupSettings} -> mediaPackageGroupSettings) (\s@OutputGroupSettings' {} a -> s {mediaPackageGroupSettings = a} :: OutputGroupSettings)

-- | Undocumented member.
outputGroupSettings_hlsGroupSettings :: Lens.Lens' OutputGroupSettings (Prelude.Maybe HlsGroupSettings)
outputGroupSettings_hlsGroupSettings = Lens.lens (\OutputGroupSettings' {hlsGroupSettings} -> hlsGroupSettings) (\s@OutputGroupSettings' {} a -> s {hlsGroupSettings = a} :: OutputGroupSettings)

-- | Undocumented member.
outputGroupSettings_msSmoothGroupSettings :: Lens.Lens' OutputGroupSettings (Prelude.Maybe MsSmoothGroupSettings)
outputGroupSettings_msSmoothGroupSettings = Lens.lens (\OutputGroupSettings' {msSmoothGroupSettings} -> msSmoothGroupSettings) (\s@OutputGroupSettings' {} a -> s {msSmoothGroupSettings = a} :: OutputGroupSettings)

instance Core.FromJSON OutputGroupSettings where
  parseJSON =
    Core.withObject
      "OutputGroupSettings"
      ( \x ->
          OutputGroupSettings'
            Prelude.<$> (x Core..:? "rtmpGroupSettings")
            Prelude.<*> (x Core..:? "udpGroupSettings")
            Prelude.<*> (x Core..:? "frameCaptureGroupSettings")
            Prelude.<*> (x Core..:? "multiplexGroupSettings")
            Prelude.<*> (x Core..:? "archiveGroupSettings")
            Prelude.<*> (x Core..:? "mediaPackageGroupSettings")
            Prelude.<*> (x Core..:? "hlsGroupSettings")
            Prelude.<*> (x Core..:? "msSmoothGroupSettings")
      )

instance Prelude.Hashable OutputGroupSettings where
  hashWithSalt _salt OutputGroupSettings' {..} =
    _salt `Prelude.hashWithSalt` rtmpGroupSettings
      `Prelude.hashWithSalt` udpGroupSettings
      `Prelude.hashWithSalt` frameCaptureGroupSettings
      `Prelude.hashWithSalt` multiplexGroupSettings
      `Prelude.hashWithSalt` archiveGroupSettings
      `Prelude.hashWithSalt` mediaPackageGroupSettings
      `Prelude.hashWithSalt` hlsGroupSettings
      `Prelude.hashWithSalt` msSmoothGroupSettings

instance Prelude.NFData OutputGroupSettings where
  rnf OutputGroupSettings' {..} =
    Prelude.rnf rtmpGroupSettings
      `Prelude.seq` Prelude.rnf udpGroupSettings
      `Prelude.seq` Prelude.rnf frameCaptureGroupSettings
      `Prelude.seq` Prelude.rnf multiplexGroupSettings
      `Prelude.seq` Prelude.rnf archiveGroupSettings
      `Prelude.seq` Prelude.rnf mediaPackageGroupSettings
      `Prelude.seq` Prelude.rnf hlsGroupSettings
      `Prelude.seq` Prelude.rnf msSmoothGroupSettings

instance Core.ToJSON OutputGroupSettings where
  toJSON OutputGroupSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("rtmpGroupSettings" Core..=)
              Prelude.<$> rtmpGroupSettings,
            ("udpGroupSettings" Core..=)
              Prelude.<$> udpGroupSettings,
            ("frameCaptureGroupSettings" Core..=)
              Prelude.<$> frameCaptureGroupSettings,
            ("multiplexGroupSettings" Core..=)
              Prelude.<$> multiplexGroupSettings,
            ("archiveGroupSettings" Core..=)
              Prelude.<$> archiveGroupSettings,
            ("mediaPackageGroupSettings" Core..=)
              Prelude.<$> mediaPackageGroupSettings,
            ("hlsGroupSettings" Core..=)
              Prelude.<$> hlsGroupSettings,
            ("msSmoothGroupSettings" Core..=)
              Prelude.<$> msSmoothGroupSettings
          ]
      )
