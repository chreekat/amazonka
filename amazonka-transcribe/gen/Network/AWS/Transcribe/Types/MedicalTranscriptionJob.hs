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
-- Module      : Network.AWS.Transcribe.Types.MedicalTranscriptionJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transcribe.Types.MedicalTranscriptionJob where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Transcribe.Types.LanguageCode
import Network.AWS.Transcribe.Types.Media
import Network.AWS.Transcribe.Types.MediaFormat
import Network.AWS.Transcribe.Types.MedicalContentIdentificationType
import Network.AWS.Transcribe.Types.MedicalTranscript
import Network.AWS.Transcribe.Types.MedicalTranscriptionSetting
import Network.AWS.Transcribe.Types.Specialty
import Network.AWS.Transcribe.Types.Tag
import Network.AWS.Transcribe.Types.TranscriptionJobStatus
import Network.AWS.Transcribe.Types.Type

-- | The data structure that contains the information for a medical
-- transcription job.
--
-- /See:/ 'newMedicalTranscriptionJob' smart constructor.
data MedicalTranscriptionJob = MedicalTranscriptionJob'
  { -- | The language code for the language spoken in the source audio file. US
    -- English (en-US) is the only supported language for medical
    -- transcriptions. Any other value you enter for language code results in a
    -- @BadRequestException@ error.
    languageCode :: Prelude.Maybe LanguageCode,
    -- | The format of the input media file.
    mediaFormat :: Prelude.Maybe MediaFormat,
    -- | A timestamp that shows when the job was created.
    creationTime :: Prelude.Maybe Core.POSIX,
    media :: Prelude.Maybe Media,
    -- | A timestamp that shows when the job was completed.
    completionTime :: Prelude.Maybe Core.POSIX,
    -- | An object that contains the @MedicalTranscript@. The @MedicalTranscript@
    -- contains the @TranscriptFileUri@.
    transcript :: Prelude.Maybe MedicalTranscript,
    -- | Shows the type of content that you\'ve configured Amazon Transcribe
    -- Medical to identify in a transcription job. If the value is @PHI@,
    -- you\'ve configured the job to identify personal health information (PHI)
    -- in the transcription output.
    contentIdentificationType :: Prelude.Maybe MedicalContentIdentificationType,
    -- | The completion status of a medical transcription job.
    transcriptionJobStatus :: Prelude.Maybe TranscriptionJobStatus,
    -- | A timestamp that shows when the job started processing.
    startTime :: Prelude.Maybe Core.POSIX,
    -- | The medical specialty of any clinicians providing a dictation or having
    -- a conversation. Refer to
    -- <https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-medical-conversation.html Transcribing a medical conversation>for
    -- a list of supported specialties.
    specialty :: Prelude.Maybe Specialty,
    -- | If the @TranscriptionJobStatus@ field is @FAILED@, this field contains
    -- information about why the job failed.
    --
    -- The @FailureReason@ field contains one of the following values:
    --
    -- -   @Unsupported media format@- The media format specified in the
    --     @MediaFormat@ field of the request isn\'t valid. See the description
    --     of the @MediaFormat@ field for a list of valid values.
    --
    -- -   @The media format provided does not match the detected media format@-
    --     The media format of the audio file doesn\'t match the format
    --     specified in the @MediaFormat@ field in the request. Check the media
    --     format of your media file and make sure the two values match.
    --
    -- -   @Invalid sample rate for audio file@- The sample rate specified in
    --     the @MediaSampleRateHertz@ of the request isn\'t valid. The sample
    --     rate must be between 8,000 and 48,000 Hertz.
    --
    -- -   @The sample rate provided does not match the detected sample rate@-
    --     The sample rate in the audio file doesn\'t match the sample rate
    --     specified in the @MediaSampleRateHertz@ field in the request. Check
    --     the sample rate of your media file and make sure that the two values
    --     match.
    --
    -- -   @Invalid file size: file size too large@- The size of your audio
    --     file is larger than what Amazon Transcribe Medical can process. For
    --     more information, see
    --     <https://docs.aws.amazon.com/transcribe/latest/dg/limits-guidelines.html#limits Guidelines and Quotas>
    --     in the /Amazon Transcribe Medical Guide/
    --
    -- -   @Invalid number of channels: number of channels too large@- Your
    --     audio contains more channels than Amazon Transcribe Medical is
    --     configured to process. To request additional channels, see
    --     <https://docs.aws.amazon.com/general/latest/gr/transcribe-medical.html Amazon Transcribe Medical Endpoints and Quotas>
    --     in the /Amazon Web Services General Reference/
    failureReason :: Prelude.Maybe Prelude.Text,
    -- | A key:value pair assigned to a given medical transcription job.
    tags :: Prelude.Maybe (Prelude.NonEmpty Tag),
    -- | The sample rate, in Hertz, of the source audio containing medical
    -- information.
    --
    -- If you don\'t specify the sample rate, Amazon Transcribe Medical
    -- determines it for you. If you choose to specify the sample rate, it must
    -- match the rate detected by Amazon Transcribe Medical. In most cases, you
    -- should leave the @MedicalMediaSampleHertz@ blank and let Amazon
    -- Transcribe Medical determine the sample rate.
    mediaSampleRateHertz :: Prelude.Maybe Prelude.Natural,
    -- | The type of speech in the transcription job. @CONVERSATION@ is generally
    -- used for patient-physician dialogues. @DICTATION@ is the setting for
    -- physicians speaking their notes after seeing a patient. For more
    -- information, see
    -- <https://docs.aws.amazon.com/transcribe/latest/dg/what-is-transcribe-med.html What is Amazon Transcribe Medical?>.
    type' :: Prelude.Maybe Type,
    -- | The name for a given medical transcription job.
    medicalTranscriptionJobName :: Prelude.Maybe Prelude.Text,
    -- | Object that contains object.
    settings :: Prelude.Maybe MedicalTranscriptionSetting
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MedicalTranscriptionJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'languageCode', 'medicalTranscriptionJob_languageCode' - The language code for the language spoken in the source audio file. US
-- English (en-US) is the only supported language for medical
-- transcriptions. Any other value you enter for language code results in a
-- @BadRequestException@ error.
--
-- 'mediaFormat', 'medicalTranscriptionJob_mediaFormat' - The format of the input media file.
--
-- 'creationTime', 'medicalTranscriptionJob_creationTime' - A timestamp that shows when the job was created.
--
-- 'media', 'medicalTranscriptionJob_media' - Undocumented member.
--
-- 'completionTime', 'medicalTranscriptionJob_completionTime' - A timestamp that shows when the job was completed.
--
-- 'transcript', 'medicalTranscriptionJob_transcript' - An object that contains the @MedicalTranscript@. The @MedicalTranscript@
-- contains the @TranscriptFileUri@.
--
-- 'contentIdentificationType', 'medicalTranscriptionJob_contentIdentificationType' - Shows the type of content that you\'ve configured Amazon Transcribe
-- Medical to identify in a transcription job. If the value is @PHI@,
-- you\'ve configured the job to identify personal health information (PHI)
-- in the transcription output.
--
-- 'transcriptionJobStatus', 'medicalTranscriptionJob_transcriptionJobStatus' - The completion status of a medical transcription job.
--
-- 'startTime', 'medicalTranscriptionJob_startTime' - A timestamp that shows when the job started processing.
--
-- 'specialty', 'medicalTranscriptionJob_specialty' - The medical specialty of any clinicians providing a dictation or having
-- a conversation. Refer to
-- <https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-medical-conversation.html Transcribing a medical conversation>for
-- a list of supported specialties.
--
-- 'failureReason', 'medicalTranscriptionJob_failureReason' - If the @TranscriptionJobStatus@ field is @FAILED@, this field contains
-- information about why the job failed.
--
-- The @FailureReason@ field contains one of the following values:
--
-- -   @Unsupported media format@- The media format specified in the
--     @MediaFormat@ field of the request isn\'t valid. See the description
--     of the @MediaFormat@ field for a list of valid values.
--
-- -   @The media format provided does not match the detected media format@-
--     The media format of the audio file doesn\'t match the format
--     specified in the @MediaFormat@ field in the request. Check the media
--     format of your media file and make sure the two values match.
--
-- -   @Invalid sample rate for audio file@- The sample rate specified in
--     the @MediaSampleRateHertz@ of the request isn\'t valid. The sample
--     rate must be between 8,000 and 48,000 Hertz.
--
-- -   @The sample rate provided does not match the detected sample rate@-
--     The sample rate in the audio file doesn\'t match the sample rate
--     specified in the @MediaSampleRateHertz@ field in the request. Check
--     the sample rate of your media file and make sure that the two values
--     match.
--
-- -   @Invalid file size: file size too large@- The size of your audio
--     file is larger than what Amazon Transcribe Medical can process. For
--     more information, see
--     <https://docs.aws.amazon.com/transcribe/latest/dg/limits-guidelines.html#limits Guidelines and Quotas>
--     in the /Amazon Transcribe Medical Guide/
--
-- -   @Invalid number of channels: number of channels too large@- Your
--     audio contains more channels than Amazon Transcribe Medical is
--     configured to process. To request additional channels, see
--     <https://docs.aws.amazon.com/general/latest/gr/transcribe-medical.html Amazon Transcribe Medical Endpoints and Quotas>
--     in the /Amazon Web Services General Reference/
--
-- 'tags', 'medicalTranscriptionJob_tags' - A key:value pair assigned to a given medical transcription job.
--
-- 'mediaSampleRateHertz', 'medicalTranscriptionJob_mediaSampleRateHertz' - The sample rate, in Hertz, of the source audio containing medical
-- information.
--
-- If you don\'t specify the sample rate, Amazon Transcribe Medical
-- determines it for you. If you choose to specify the sample rate, it must
-- match the rate detected by Amazon Transcribe Medical. In most cases, you
-- should leave the @MedicalMediaSampleHertz@ blank and let Amazon
-- Transcribe Medical determine the sample rate.
--
-- 'type'', 'medicalTranscriptionJob_type' - The type of speech in the transcription job. @CONVERSATION@ is generally
-- used for patient-physician dialogues. @DICTATION@ is the setting for
-- physicians speaking their notes after seeing a patient. For more
-- information, see
-- <https://docs.aws.amazon.com/transcribe/latest/dg/what-is-transcribe-med.html What is Amazon Transcribe Medical?>.
--
-- 'medicalTranscriptionJobName', 'medicalTranscriptionJob_medicalTranscriptionJobName' - The name for a given medical transcription job.
--
-- 'settings', 'medicalTranscriptionJob_settings' - Object that contains object.
newMedicalTranscriptionJob ::
  MedicalTranscriptionJob
newMedicalTranscriptionJob =
  MedicalTranscriptionJob'
    { languageCode =
        Prelude.Nothing,
      mediaFormat = Prelude.Nothing,
      creationTime = Prelude.Nothing,
      media = Prelude.Nothing,
      completionTime = Prelude.Nothing,
      transcript = Prelude.Nothing,
      contentIdentificationType = Prelude.Nothing,
      transcriptionJobStatus = Prelude.Nothing,
      startTime = Prelude.Nothing,
      specialty = Prelude.Nothing,
      failureReason = Prelude.Nothing,
      tags = Prelude.Nothing,
      mediaSampleRateHertz = Prelude.Nothing,
      type' = Prelude.Nothing,
      medicalTranscriptionJobName = Prelude.Nothing,
      settings = Prelude.Nothing
    }

-- | The language code for the language spoken in the source audio file. US
-- English (en-US) is the only supported language for medical
-- transcriptions. Any other value you enter for language code results in a
-- @BadRequestException@ error.
medicalTranscriptionJob_languageCode :: Lens.Lens' MedicalTranscriptionJob (Prelude.Maybe LanguageCode)
medicalTranscriptionJob_languageCode = Lens.lens (\MedicalTranscriptionJob' {languageCode} -> languageCode) (\s@MedicalTranscriptionJob' {} a -> s {languageCode = a} :: MedicalTranscriptionJob)

-- | The format of the input media file.
medicalTranscriptionJob_mediaFormat :: Lens.Lens' MedicalTranscriptionJob (Prelude.Maybe MediaFormat)
medicalTranscriptionJob_mediaFormat = Lens.lens (\MedicalTranscriptionJob' {mediaFormat} -> mediaFormat) (\s@MedicalTranscriptionJob' {} a -> s {mediaFormat = a} :: MedicalTranscriptionJob)

-- | A timestamp that shows when the job was created.
medicalTranscriptionJob_creationTime :: Lens.Lens' MedicalTranscriptionJob (Prelude.Maybe Prelude.UTCTime)
medicalTranscriptionJob_creationTime = Lens.lens (\MedicalTranscriptionJob' {creationTime} -> creationTime) (\s@MedicalTranscriptionJob' {} a -> s {creationTime = a} :: MedicalTranscriptionJob) Prelude.. Lens.mapping Core._Time

-- | Undocumented member.
medicalTranscriptionJob_media :: Lens.Lens' MedicalTranscriptionJob (Prelude.Maybe Media)
medicalTranscriptionJob_media = Lens.lens (\MedicalTranscriptionJob' {media} -> media) (\s@MedicalTranscriptionJob' {} a -> s {media = a} :: MedicalTranscriptionJob)

-- | A timestamp that shows when the job was completed.
medicalTranscriptionJob_completionTime :: Lens.Lens' MedicalTranscriptionJob (Prelude.Maybe Prelude.UTCTime)
medicalTranscriptionJob_completionTime = Lens.lens (\MedicalTranscriptionJob' {completionTime} -> completionTime) (\s@MedicalTranscriptionJob' {} a -> s {completionTime = a} :: MedicalTranscriptionJob) Prelude.. Lens.mapping Core._Time

-- | An object that contains the @MedicalTranscript@. The @MedicalTranscript@
-- contains the @TranscriptFileUri@.
medicalTranscriptionJob_transcript :: Lens.Lens' MedicalTranscriptionJob (Prelude.Maybe MedicalTranscript)
medicalTranscriptionJob_transcript = Lens.lens (\MedicalTranscriptionJob' {transcript} -> transcript) (\s@MedicalTranscriptionJob' {} a -> s {transcript = a} :: MedicalTranscriptionJob)

-- | Shows the type of content that you\'ve configured Amazon Transcribe
-- Medical to identify in a transcription job. If the value is @PHI@,
-- you\'ve configured the job to identify personal health information (PHI)
-- in the transcription output.
medicalTranscriptionJob_contentIdentificationType :: Lens.Lens' MedicalTranscriptionJob (Prelude.Maybe MedicalContentIdentificationType)
medicalTranscriptionJob_contentIdentificationType = Lens.lens (\MedicalTranscriptionJob' {contentIdentificationType} -> contentIdentificationType) (\s@MedicalTranscriptionJob' {} a -> s {contentIdentificationType = a} :: MedicalTranscriptionJob)

-- | The completion status of a medical transcription job.
medicalTranscriptionJob_transcriptionJobStatus :: Lens.Lens' MedicalTranscriptionJob (Prelude.Maybe TranscriptionJobStatus)
medicalTranscriptionJob_transcriptionJobStatus = Lens.lens (\MedicalTranscriptionJob' {transcriptionJobStatus} -> transcriptionJobStatus) (\s@MedicalTranscriptionJob' {} a -> s {transcriptionJobStatus = a} :: MedicalTranscriptionJob)

-- | A timestamp that shows when the job started processing.
medicalTranscriptionJob_startTime :: Lens.Lens' MedicalTranscriptionJob (Prelude.Maybe Prelude.UTCTime)
medicalTranscriptionJob_startTime = Lens.lens (\MedicalTranscriptionJob' {startTime} -> startTime) (\s@MedicalTranscriptionJob' {} a -> s {startTime = a} :: MedicalTranscriptionJob) Prelude.. Lens.mapping Core._Time

-- | The medical specialty of any clinicians providing a dictation or having
-- a conversation. Refer to
-- <https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-medical-conversation.html Transcribing a medical conversation>for
-- a list of supported specialties.
medicalTranscriptionJob_specialty :: Lens.Lens' MedicalTranscriptionJob (Prelude.Maybe Specialty)
medicalTranscriptionJob_specialty = Lens.lens (\MedicalTranscriptionJob' {specialty} -> specialty) (\s@MedicalTranscriptionJob' {} a -> s {specialty = a} :: MedicalTranscriptionJob)

-- | If the @TranscriptionJobStatus@ field is @FAILED@, this field contains
-- information about why the job failed.
--
-- The @FailureReason@ field contains one of the following values:
--
-- -   @Unsupported media format@- The media format specified in the
--     @MediaFormat@ field of the request isn\'t valid. See the description
--     of the @MediaFormat@ field for a list of valid values.
--
-- -   @The media format provided does not match the detected media format@-
--     The media format of the audio file doesn\'t match the format
--     specified in the @MediaFormat@ field in the request. Check the media
--     format of your media file and make sure the two values match.
--
-- -   @Invalid sample rate for audio file@- The sample rate specified in
--     the @MediaSampleRateHertz@ of the request isn\'t valid. The sample
--     rate must be between 8,000 and 48,000 Hertz.
--
-- -   @The sample rate provided does not match the detected sample rate@-
--     The sample rate in the audio file doesn\'t match the sample rate
--     specified in the @MediaSampleRateHertz@ field in the request. Check
--     the sample rate of your media file and make sure that the two values
--     match.
--
-- -   @Invalid file size: file size too large@- The size of your audio
--     file is larger than what Amazon Transcribe Medical can process. For
--     more information, see
--     <https://docs.aws.amazon.com/transcribe/latest/dg/limits-guidelines.html#limits Guidelines and Quotas>
--     in the /Amazon Transcribe Medical Guide/
--
-- -   @Invalid number of channels: number of channels too large@- Your
--     audio contains more channels than Amazon Transcribe Medical is
--     configured to process. To request additional channels, see
--     <https://docs.aws.amazon.com/general/latest/gr/transcribe-medical.html Amazon Transcribe Medical Endpoints and Quotas>
--     in the /Amazon Web Services General Reference/
medicalTranscriptionJob_failureReason :: Lens.Lens' MedicalTranscriptionJob (Prelude.Maybe Prelude.Text)
medicalTranscriptionJob_failureReason = Lens.lens (\MedicalTranscriptionJob' {failureReason} -> failureReason) (\s@MedicalTranscriptionJob' {} a -> s {failureReason = a} :: MedicalTranscriptionJob)

-- | A key:value pair assigned to a given medical transcription job.
medicalTranscriptionJob_tags :: Lens.Lens' MedicalTranscriptionJob (Prelude.Maybe (Prelude.NonEmpty Tag))
medicalTranscriptionJob_tags = Lens.lens (\MedicalTranscriptionJob' {tags} -> tags) (\s@MedicalTranscriptionJob' {} a -> s {tags = a} :: MedicalTranscriptionJob) Prelude.. Lens.mapping Lens._Coerce

-- | The sample rate, in Hertz, of the source audio containing medical
-- information.
--
-- If you don\'t specify the sample rate, Amazon Transcribe Medical
-- determines it for you. If you choose to specify the sample rate, it must
-- match the rate detected by Amazon Transcribe Medical. In most cases, you
-- should leave the @MedicalMediaSampleHertz@ blank and let Amazon
-- Transcribe Medical determine the sample rate.
medicalTranscriptionJob_mediaSampleRateHertz :: Lens.Lens' MedicalTranscriptionJob (Prelude.Maybe Prelude.Natural)
medicalTranscriptionJob_mediaSampleRateHertz = Lens.lens (\MedicalTranscriptionJob' {mediaSampleRateHertz} -> mediaSampleRateHertz) (\s@MedicalTranscriptionJob' {} a -> s {mediaSampleRateHertz = a} :: MedicalTranscriptionJob)

-- | The type of speech in the transcription job. @CONVERSATION@ is generally
-- used for patient-physician dialogues. @DICTATION@ is the setting for
-- physicians speaking their notes after seeing a patient. For more
-- information, see
-- <https://docs.aws.amazon.com/transcribe/latest/dg/what-is-transcribe-med.html What is Amazon Transcribe Medical?>.
medicalTranscriptionJob_type :: Lens.Lens' MedicalTranscriptionJob (Prelude.Maybe Type)
medicalTranscriptionJob_type = Lens.lens (\MedicalTranscriptionJob' {type'} -> type') (\s@MedicalTranscriptionJob' {} a -> s {type' = a} :: MedicalTranscriptionJob)

-- | The name for a given medical transcription job.
medicalTranscriptionJob_medicalTranscriptionJobName :: Lens.Lens' MedicalTranscriptionJob (Prelude.Maybe Prelude.Text)
medicalTranscriptionJob_medicalTranscriptionJobName = Lens.lens (\MedicalTranscriptionJob' {medicalTranscriptionJobName} -> medicalTranscriptionJobName) (\s@MedicalTranscriptionJob' {} a -> s {medicalTranscriptionJobName = a} :: MedicalTranscriptionJob)

-- | Object that contains object.
medicalTranscriptionJob_settings :: Lens.Lens' MedicalTranscriptionJob (Prelude.Maybe MedicalTranscriptionSetting)
medicalTranscriptionJob_settings = Lens.lens (\MedicalTranscriptionJob' {settings} -> settings) (\s@MedicalTranscriptionJob' {} a -> s {settings = a} :: MedicalTranscriptionJob)

instance Core.FromJSON MedicalTranscriptionJob where
  parseJSON =
    Core.withObject
      "MedicalTranscriptionJob"
      ( \x ->
          MedicalTranscriptionJob'
            Prelude.<$> (x Core..:? "LanguageCode")
            Prelude.<*> (x Core..:? "MediaFormat")
            Prelude.<*> (x Core..:? "CreationTime")
            Prelude.<*> (x Core..:? "Media")
            Prelude.<*> (x Core..:? "CompletionTime")
            Prelude.<*> (x Core..:? "Transcript")
            Prelude.<*> (x Core..:? "ContentIdentificationType")
            Prelude.<*> (x Core..:? "TranscriptionJobStatus")
            Prelude.<*> (x Core..:? "StartTime")
            Prelude.<*> (x Core..:? "Specialty")
            Prelude.<*> (x Core..:? "FailureReason")
            Prelude.<*> (x Core..:? "Tags")
            Prelude.<*> (x Core..:? "MediaSampleRateHertz")
            Prelude.<*> (x Core..:? "Type")
            Prelude.<*> (x Core..:? "MedicalTranscriptionJobName")
            Prelude.<*> (x Core..:? "Settings")
      )

instance Prelude.Hashable MedicalTranscriptionJob

instance Prelude.NFData MedicalTranscriptionJob
