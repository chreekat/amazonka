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
-- Module      : Network.AWS.SageMaker.Types.CandidateArtifactLocations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.CandidateArtifactLocations where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The location of artifacts for an AutoML candidate job.
--
-- /See:/ 'newCandidateArtifactLocations' smart constructor.
data CandidateArtifactLocations = CandidateArtifactLocations'
  { -- | The Amazon S3 prefix to the explainability artifacts generated for the
    -- AutoML candidate.
    explainability :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CandidateArtifactLocations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'explainability', 'candidateArtifactLocations_explainability' - The Amazon S3 prefix to the explainability artifacts generated for the
-- AutoML candidate.
newCandidateArtifactLocations ::
  -- | 'explainability'
  Prelude.Text ->
  CandidateArtifactLocations
newCandidateArtifactLocations pExplainability_ =
  CandidateArtifactLocations'
    { explainability =
        pExplainability_
    }

-- | The Amazon S3 prefix to the explainability artifacts generated for the
-- AutoML candidate.
candidateArtifactLocations_explainability :: Lens.Lens' CandidateArtifactLocations Prelude.Text
candidateArtifactLocations_explainability = Lens.lens (\CandidateArtifactLocations' {explainability} -> explainability) (\s@CandidateArtifactLocations' {} a -> s {explainability = a} :: CandidateArtifactLocations)

instance Core.FromJSON CandidateArtifactLocations where
  parseJSON =
    Core.withObject
      "CandidateArtifactLocations"
      ( \x ->
          CandidateArtifactLocations'
            Prelude.<$> (x Core..: "Explainability")
      )

instance Prelude.Hashable CandidateArtifactLocations

instance Prelude.NFData CandidateArtifactLocations
