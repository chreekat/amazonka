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
-- Module      : Network.AWS.IoT.Types.Bucket
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.Bucket where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A count of documents that meets a specific aggregation criteria.
--
-- /See:/ 'newBucket' smart constructor.
data Bucket = Bucket'
  { -- | The value counted for the particular bucket.
    keyValue :: Prelude.Maybe Prelude.Text,
    -- | The number of documents that have the value counted for the particular
    -- bucket.
    count :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Bucket' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'keyValue', 'bucket_keyValue' - The value counted for the particular bucket.
--
-- 'count', 'bucket_count' - The number of documents that have the value counted for the particular
-- bucket.
newBucket ::
  Bucket
newBucket =
  Bucket'
    { keyValue = Prelude.Nothing,
      count = Prelude.Nothing
    }

-- | The value counted for the particular bucket.
bucket_keyValue :: Lens.Lens' Bucket (Prelude.Maybe Prelude.Text)
bucket_keyValue = Lens.lens (\Bucket' {keyValue} -> keyValue) (\s@Bucket' {} a -> s {keyValue = a} :: Bucket)

-- | The number of documents that have the value counted for the particular
-- bucket.
bucket_count :: Lens.Lens' Bucket (Prelude.Maybe Prelude.Int)
bucket_count = Lens.lens (\Bucket' {count} -> count) (\s@Bucket' {} a -> s {count = a} :: Bucket)

instance Core.FromJSON Bucket where
  parseJSON =
    Core.withObject
      "Bucket"
      ( \x ->
          Bucket'
            Prelude.<$> (x Core..:? "keyValue")
            Prelude.<*> (x Core..:? "count")
      )

instance Prelude.Hashable Bucket

instance Prelude.NFData Bucket
