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
-- Module      : Network.AWS.ElasticTranscoder.Types.CaptionSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticTranscoder.Types.CaptionSource where

import qualified Network.AWS.Core as Core
import Network.AWS.ElasticTranscoder.Types.Encryption
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A source file for the input sidecar captions used during the transcoding
-- process.
--
-- /See:/ 'newCaptionSource' smart constructor.
data CaptionSource = CaptionSource'
  { -- | For clip generation or captions that do not start at the same time as
    -- the associated video file, the @TimeOffset@ tells Elastic Transcoder how
    -- much of the video to encode before including captions.
    --
    -- Specify the TimeOffset in the form [+-]SS.sss or [+-]HH:mm:SS.ss.
    timeOffset :: Prelude.Maybe Prelude.Text,
    -- | The encryption settings, if any, that Elastic Transcoder needs to
    -- decyrpt your caption sources, or that you want Elastic Transcoder to
    -- apply to your caption sources.
    encryption :: Prelude.Maybe Encryption,
    -- | The name of the sidecar caption file that you want Elastic Transcoder to
    -- include in the output file.
    key :: Prelude.Maybe Prelude.Text,
    -- | A string that specifies the language of the caption. If you specified
    -- multiple inputs with captions, the caption language must match in order
    -- to be included in the output. Specify this as one of:
    --
    -- -   2-character ISO 639-1 code
    --
    -- -   3-character ISO 639-2 code
    --
    -- For more information on ISO language codes and language names, see the
    -- List of ISO 639-1 codes.
    language :: Prelude.Maybe Prelude.Text,
    -- | The label of the caption shown in the player when choosing a language.
    -- We recommend that you put the caption language name here, in the
    -- language of the captions.
    label :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CaptionSource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'timeOffset', 'captionSource_timeOffset' - For clip generation or captions that do not start at the same time as
-- the associated video file, the @TimeOffset@ tells Elastic Transcoder how
-- much of the video to encode before including captions.
--
-- Specify the TimeOffset in the form [+-]SS.sss or [+-]HH:mm:SS.ss.
--
-- 'encryption', 'captionSource_encryption' - The encryption settings, if any, that Elastic Transcoder needs to
-- decyrpt your caption sources, or that you want Elastic Transcoder to
-- apply to your caption sources.
--
-- 'key', 'captionSource_key' - The name of the sidecar caption file that you want Elastic Transcoder to
-- include in the output file.
--
-- 'language', 'captionSource_language' - A string that specifies the language of the caption. If you specified
-- multiple inputs with captions, the caption language must match in order
-- to be included in the output. Specify this as one of:
--
-- -   2-character ISO 639-1 code
--
-- -   3-character ISO 639-2 code
--
-- For more information on ISO language codes and language names, see the
-- List of ISO 639-1 codes.
--
-- 'label', 'captionSource_label' - The label of the caption shown in the player when choosing a language.
-- We recommend that you put the caption language name here, in the
-- language of the captions.
newCaptionSource ::
  CaptionSource
newCaptionSource =
  CaptionSource'
    { timeOffset = Prelude.Nothing,
      encryption = Prelude.Nothing,
      key = Prelude.Nothing,
      language = Prelude.Nothing,
      label = Prelude.Nothing
    }

-- | For clip generation or captions that do not start at the same time as
-- the associated video file, the @TimeOffset@ tells Elastic Transcoder how
-- much of the video to encode before including captions.
--
-- Specify the TimeOffset in the form [+-]SS.sss or [+-]HH:mm:SS.ss.
captionSource_timeOffset :: Lens.Lens' CaptionSource (Prelude.Maybe Prelude.Text)
captionSource_timeOffset = Lens.lens (\CaptionSource' {timeOffset} -> timeOffset) (\s@CaptionSource' {} a -> s {timeOffset = a} :: CaptionSource)

-- | The encryption settings, if any, that Elastic Transcoder needs to
-- decyrpt your caption sources, or that you want Elastic Transcoder to
-- apply to your caption sources.
captionSource_encryption :: Lens.Lens' CaptionSource (Prelude.Maybe Encryption)
captionSource_encryption = Lens.lens (\CaptionSource' {encryption} -> encryption) (\s@CaptionSource' {} a -> s {encryption = a} :: CaptionSource)

-- | The name of the sidecar caption file that you want Elastic Transcoder to
-- include in the output file.
captionSource_key :: Lens.Lens' CaptionSource (Prelude.Maybe Prelude.Text)
captionSource_key = Lens.lens (\CaptionSource' {key} -> key) (\s@CaptionSource' {} a -> s {key = a} :: CaptionSource)

-- | A string that specifies the language of the caption. If you specified
-- multiple inputs with captions, the caption language must match in order
-- to be included in the output. Specify this as one of:
--
-- -   2-character ISO 639-1 code
--
-- -   3-character ISO 639-2 code
--
-- For more information on ISO language codes and language names, see the
-- List of ISO 639-1 codes.
captionSource_language :: Lens.Lens' CaptionSource (Prelude.Maybe Prelude.Text)
captionSource_language = Lens.lens (\CaptionSource' {language} -> language) (\s@CaptionSource' {} a -> s {language = a} :: CaptionSource)

-- | The label of the caption shown in the player when choosing a language.
-- We recommend that you put the caption language name here, in the
-- language of the captions.
captionSource_label :: Lens.Lens' CaptionSource (Prelude.Maybe Prelude.Text)
captionSource_label = Lens.lens (\CaptionSource' {label} -> label) (\s@CaptionSource' {} a -> s {label = a} :: CaptionSource)

instance Core.FromJSON CaptionSource where
  parseJSON =
    Core.withObject
      "CaptionSource"
      ( \x ->
          CaptionSource'
            Prelude.<$> (x Core..:? "TimeOffset")
            Prelude.<*> (x Core..:? "Encryption")
            Prelude.<*> (x Core..:? "Key")
            Prelude.<*> (x Core..:? "Language")
            Prelude.<*> (x Core..:? "Label")
      )

instance Prelude.Hashable CaptionSource

instance Prelude.NFData CaptionSource

instance Core.ToJSON CaptionSource where
  toJSON CaptionSource' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("TimeOffset" Core..=) Prelude.<$> timeOffset,
            ("Encryption" Core..=) Prelude.<$> encryption,
            ("Key" Core..=) Prelude.<$> key,
            ("Language" Core..=) Prelude.<$> language,
            ("Label" Core..=) Prelude.<$> label
          ]
      )
