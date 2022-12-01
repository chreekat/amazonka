{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Personalize.CreateBatchSegmentJob
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a batch segment job. The operation can handle up to 50 million
-- records and the input file must be in JSON format. For more information,
-- see
-- <https://docs.aws.amazon.com/personalize/latest/dg/recommendations-batch.html Getting batch recommendations and user segments>.
module Amazonka.Personalize.CreateBatchSegmentJob
  ( -- * Creating a Request
    CreateBatchSegmentJob (..),
    newCreateBatchSegmentJob,

    -- * Request Lenses
    createBatchSegmentJob_tags,
    createBatchSegmentJob_filterArn,
    createBatchSegmentJob_numResults,
    createBatchSegmentJob_jobName,
    createBatchSegmentJob_solutionVersionArn,
    createBatchSegmentJob_jobInput,
    createBatchSegmentJob_jobOutput,
    createBatchSegmentJob_roleArn,

    -- * Destructuring the Response
    CreateBatchSegmentJobResponse (..),
    newCreateBatchSegmentJobResponse,

    -- * Response Lenses
    createBatchSegmentJobResponse_batchSegmentJobArn,
    createBatchSegmentJobResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import Amazonka.Personalize.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateBatchSegmentJob' smart constructor.
data CreateBatchSegmentJob = CreateBatchSegmentJob'
  { -- | A list of
    -- <https://docs.aws.amazon.com/personalize/latest/dev/tagging-resources.html tags>
    -- to apply to the batch segment job.
    tags :: Prelude.Maybe [Tag],
    -- | The ARN of the filter to apply to the batch segment job. For more
    -- information on using filters, see
    -- <https://docs.aws.amazon.com/personalize/latest/dg/filter-batch.html Filtering batch recommendations>.
    filterArn :: Prelude.Maybe Prelude.Text,
    -- | The number of predicted users generated by the batch segment job for
    -- each line of input data.
    numResults :: Prelude.Maybe Prelude.Int,
    -- | The name of the batch segment job to create.
    jobName :: Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the solution version you want the
    -- batch segment job to use to generate batch segments.
    solutionVersionArn :: Prelude.Text,
    -- | The Amazon S3 path for the input data used to generate the batch segment
    -- job.
    jobInput :: BatchSegmentJobInput,
    -- | The Amazon S3 path for the bucket where the job\'s output will be
    -- stored.
    jobOutput :: BatchSegmentJobOutput,
    -- | The ARN of the Amazon Identity and Access Management role that has
    -- permissions to read and write to your input and output Amazon S3 buckets
    -- respectively.
    roleArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateBatchSegmentJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createBatchSegmentJob_tags' - A list of
-- <https://docs.aws.amazon.com/personalize/latest/dev/tagging-resources.html tags>
-- to apply to the batch segment job.
--
-- 'filterArn', 'createBatchSegmentJob_filterArn' - The ARN of the filter to apply to the batch segment job. For more
-- information on using filters, see
-- <https://docs.aws.amazon.com/personalize/latest/dg/filter-batch.html Filtering batch recommendations>.
--
-- 'numResults', 'createBatchSegmentJob_numResults' - The number of predicted users generated by the batch segment job for
-- each line of input data.
--
-- 'jobName', 'createBatchSegmentJob_jobName' - The name of the batch segment job to create.
--
-- 'solutionVersionArn', 'createBatchSegmentJob_solutionVersionArn' - The Amazon Resource Name (ARN) of the solution version you want the
-- batch segment job to use to generate batch segments.
--
-- 'jobInput', 'createBatchSegmentJob_jobInput' - The Amazon S3 path for the input data used to generate the batch segment
-- job.
--
-- 'jobOutput', 'createBatchSegmentJob_jobOutput' - The Amazon S3 path for the bucket where the job\'s output will be
-- stored.
--
-- 'roleArn', 'createBatchSegmentJob_roleArn' - The ARN of the Amazon Identity and Access Management role that has
-- permissions to read and write to your input and output Amazon S3 buckets
-- respectively.
newCreateBatchSegmentJob ::
  -- | 'jobName'
  Prelude.Text ->
  -- | 'solutionVersionArn'
  Prelude.Text ->
  -- | 'jobInput'
  BatchSegmentJobInput ->
  -- | 'jobOutput'
  BatchSegmentJobOutput ->
  -- | 'roleArn'
  Prelude.Text ->
  CreateBatchSegmentJob
newCreateBatchSegmentJob
  pJobName_
  pSolutionVersionArn_
  pJobInput_
  pJobOutput_
  pRoleArn_ =
    CreateBatchSegmentJob'
      { tags = Prelude.Nothing,
        filterArn = Prelude.Nothing,
        numResults = Prelude.Nothing,
        jobName = pJobName_,
        solutionVersionArn = pSolutionVersionArn_,
        jobInput = pJobInput_,
        jobOutput = pJobOutput_,
        roleArn = pRoleArn_
      }

-- | A list of
-- <https://docs.aws.amazon.com/personalize/latest/dev/tagging-resources.html tags>
-- to apply to the batch segment job.
createBatchSegmentJob_tags :: Lens.Lens' CreateBatchSegmentJob (Prelude.Maybe [Tag])
createBatchSegmentJob_tags = Lens.lens (\CreateBatchSegmentJob' {tags} -> tags) (\s@CreateBatchSegmentJob' {} a -> s {tags = a} :: CreateBatchSegmentJob) Prelude.. Lens.mapping Lens.coerced

-- | The ARN of the filter to apply to the batch segment job. For more
-- information on using filters, see
-- <https://docs.aws.amazon.com/personalize/latest/dg/filter-batch.html Filtering batch recommendations>.
createBatchSegmentJob_filterArn :: Lens.Lens' CreateBatchSegmentJob (Prelude.Maybe Prelude.Text)
createBatchSegmentJob_filterArn = Lens.lens (\CreateBatchSegmentJob' {filterArn} -> filterArn) (\s@CreateBatchSegmentJob' {} a -> s {filterArn = a} :: CreateBatchSegmentJob)

-- | The number of predicted users generated by the batch segment job for
-- each line of input data.
createBatchSegmentJob_numResults :: Lens.Lens' CreateBatchSegmentJob (Prelude.Maybe Prelude.Int)
createBatchSegmentJob_numResults = Lens.lens (\CreateBatchSegmentJob' {numResults} -> numResults) (\s@CreateBatchSegmentJob' {} a -> s {numResults = a} :: CreateBatchSegmentJob)

-- | The name of the batch segment job to create.
createBatchSegmentJob_jobName :: Lens.Lens' CreateBatchSegmentJob Prelude.Text
createBatchSegmentJob_jobName = Lens.lens (\CreateBatchSegmentJob' {jobName} -> jobName) (\s@CreateBatchSegmentJob' {} a -> s {jobName = a} :: CreateBatchSegmentJob)

-- | The Amazon Resource Name (ARN) of the solution version you want the
-- batch segment job to use to generate batch segments.
createBatchSegmentJob_solutionVersionArn :: Lens.Lens' CreateBatchSegmentJob Prelude.Text
createBatchSegmentJob_solutionVersionArn = Lens.lens (\CreateBatchSegmentJob' {solutionVersionArn} -> solutionVersionArn) (\s@CreateBatchSegmentJob' {} a -> s {solutionVersionArn = a} :: CreateBatchSegmentJob)

-- | The Amazon S3 path for the input data used to generate the batch segment
-- job.
createBatchSegmentJob_jobInput :: Lens.Lens' CreateBatchSegmentJob BatchSegmentJobInput
createBatchSegmentJob_jobInput = Lens.lens (\CreateBatchSegmentJob' {jobInput} -> jobInput) (\s@CreateBatchSegmentJob' {} a -> s {jobInput = a} :: CreateBatchSegmentJob)

-- | The Amazon S3 path for the bucket where the job\'s output will be
-- stored.
createBatchSegmentJob_jobOutput :: Lens.Lens' CreateBatchSegmentJob BatchSegmentJobOutput
createBatchSegmentJob_jobOutput = Lens.lens (\CreateBatchSegmentJob' {jobOutput} -> jobOutput) (\s@CreateBatchSegmentJob' {} a -> s {jobOutput = a} :: CreateBatchSegmentJob)

-- | The ARN of the Amazon Identity and Access Management role that has
-- permissions to read and write to your input and output Amazon S3 buckets
-- respectively.
createBatchSegmentJob_roleArn :: Lens.Lens' CreateBatchSegmentJob Prelude.Text
createBatchSegmentJob_roleArn = Lens.lens (\CreateBatchSegmentJob' {roleArn} -> roleArn) (\s@CreateBatchSegmentJob' {} a -> s {roleArn = a} :: CreateBatchSegmentJob)

instance Core.AWSRequest CreateBatchSegmentJob where
  type
    AWSResponse CreateBatchSegmentJob =
      CreateBatchSegmentJobResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateBatchSegmentJobResponse'
            Prelude.<$> (x Core..?> "batchSegmentJobArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateBatchSegmentJob where
  hashWithSalt _salt CreateBatchSegmentJob' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` filterArn
      `Prelude.hashWithSalt` numResults
      `Prelude.hashWithSalt` jobName
      `Prelude.hashWithSalt` solutionVersionArn
      `Prelude.hashWithSalt` jobInput
      `Prelude.hashWithSalt` jobOutput
      `Prelude.hashWithSalt` roleArn

instance Prelude.NFData CreateBatchSegmentJob where
  rnf CreateBatchSegmentJob' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf filterArn
      `Prelude.seq` Prelude.rnf numResults
      `Prelude.seq` Prelude.rnf jobName
      `Prelude.seq` Prelude.rnf solutionVersionArn
      `Prelude.seq` Prelude.rnf jobInput
      `Prelude.seq` Prelude.rnf jobOutput
      `Prelude.seq` Prelude.rnf roleArn

instance Core.ToHeaders CreateBatchSegmentJob where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonPersonalize.CreateBatchSegmentJob" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateBatchSegmentJob where
  toJSON CreateBatchSegmentJob' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("filterArn" Core..=) Prelude.<$> filterArn,
            ("numResults" Core..=) Prelude.<$> numResults,
            Prelude.Just ("jobName" Core..= jobName),
            Prelude.Just
              ("solutionVersionArn" Core..= solutionVersionArn),
            Prelude.Just ("jobInput" Core..= jobInput),
            Prelude.Just ("jobOutput" Core..= jobOutput),
            Prelude.Just ("roleArn" Core..= roleArn)
          ]
      )

instance Core.ToPath CreateBatchSegmentJob where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateBatchSegmentJob where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateBatchSegmentJobResponse' smart constructor.
data CreateBatchSegmentJobResponse = CreateBatchSegmentJobResponse'
  { -- | The ARN of the batch segment job.
    batchSegmentJobArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateBatchSegmentJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'batchSegmentJobArn', 'createBatchSegmentJobResponse_batchSegmentJobArn' - The ARN of the batch segment job.
--
-- 'httpStatus', 'createBatchSegmentJobResponse_httpStatus' - The response's http status code.
newCreateBatchSegmentJobResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateBatchSegmentJobResponse
newCreateBatchSegmentJobResponse pHttpStatus_ =
  CreateBatchSegmentJobResponse'
    { batchSegmentJobArn =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ARN of the batch segment job.
createBatchSegmentJobResponse_batchSegmentJobArn :: Lens.Lens' CreateBatchSegmentJobResponse (Prelude.Maybe Prelude.Text)
createBatchSegmentJobResponse_batchSegmentJobArn = Lens.lens (\CreateBatchSegmentJobResponse' {batchSegmentJobArn} -> batchSegmentJobArn) (\s@CreateBatchSegmentJobResponse' {} a -> s {batchSegmentJobArn = a} :: CreateBatchSegmentJobResponse)

-- | The response's http status code.
createBatchSegmentJobResponse_httpStatus :: Lens.Lens' CreateBatchSegmentJobResponse Prelude.Int
createBatchSegmentJobResponse_httpStatus = Lens.lens (\CreateBatchSegmentJobResponse' {httpStatus} -> httpStatus) (\s@CreateBatchSegmentJobResponse' {} a -> s {httpStatus = a} :: CreateBatchSegmentJobResponse)

instance Prelude.NFData CreateBatchSegmentJobResponse where
  rnf CreateBatchSegmentJobResponse' {..} =
    Prelude.rnf batchSegmentJobArn
      `Prelude.seq` Prelude.rnf httpStatus
