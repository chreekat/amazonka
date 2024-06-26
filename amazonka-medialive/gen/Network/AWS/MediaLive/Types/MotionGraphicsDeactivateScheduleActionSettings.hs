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
-- Module      : Network.AWS.MediaLive.Types.MotionGraphicsDeactivateScheduleActionSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.MotionGraphicsDeactivateScheduleActionSettings where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Settings to specify the ending of rendering motion graphics into the
-- video stream.
--
-- /See:/ 'newMotionGraphicsDeactivateScheduleActionSettings' smart constructor.
data MotionGraphicsDeactivateScheduleActionSettings = MotionGraphicsDeactivateScheduleActionSettings'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MotionGraphicsDeactivateScheduleActionSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newMotionGraphicsDeactivateScheduleActionSettings ::
  MotionGraphicsDeactivateScheduleActionSettings
newMotionGraphicsDeactivateScheduleActionSettings =
  MotionGraphicsDeactivateScheduleActionSettings'

instance
  Core.FromJSON
    MotionGraphicsDeactivateScheduleActionSettings
  where
  parseJSON =
    Core.withObject
      "MotionGraphicsDeactivateScheduleActionSettings"
      ( \x ->
          Prelude.pure
            MotionGraphicsDeactivateScheduleActionSettings'
      )

instance
  Prelude.Hashable
    MotionGraphicsDeactivateScheduleActionSettings

instance
  Prelude.NFData
    MotionGraphicsDeactivateScheduleActionSettings

instance
  Core.ToJSON
    MotionGraphicsDeactivateScheduleActionSettings
  where
  toJSON = Prelude.const (Core.Object Prelude.mempty)
