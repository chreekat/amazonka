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
-- Module      : Network.AWS.ElastiCache.Types.DestinationDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.DestinationDetails where

import qualified Network.AWS.Core as Core
import Network.AWS.ElastiCache.Types.CloudWatchLogsDestinationDetails
import Network.AWS.ElastiCache.Types.KinesisFirehoseDestinationDetails
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Configuration details of either a CloudWatch Logs destination or Kinesis
-- Data Firehose destination.
--
-- /See:/ 'newDestinationDetails' smart constructor.
data DestinationDetails = DestinationDetails'
  { -- | The configuration details of the CloudWatch Logs destination.
    cloudWatchLogsDetails :: Prelude.Maybe CloudWatchLogsDestinationDetails,
    -- | The configuration details of the Kinesis Data Firehose destination.
    kinesisFirehoseDetails :: Prelude.Maybe KinesisFirehoseDestinationDetails
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DestinationDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cloudWatchLogsDetails', 'destinationDetails_cloudWatchLogsDetails' - The configuration details of the CloudWatch Logs destination.
--
-- 'kinesisFirehoseDetails', 'destinationDetails_kinesisFirehoseDetails' - The configuration details of the Kinesis Data Firehose destination.
newDestinationDetails ::
  DestinationDetails
newDestinationDetails =
  DestinationDetails'
    { cloudWatchLogsDetails =
        Prelude.Nothing,
      kinesisFirehoseDetails = Prelude.Nothing
    }

-- | The configuration details of the CloudWatch Logs destination.
destinationDetails_cloudWatchLogsDetails :: Lens.Lens' DestinationDetails (Prelude.Maybe CloudWatchLogsDestinationDetails)
destinationDetails_cloudWatchLogsDetails = Lens.lens (\DestinationDetails' {cloudWatchLogsDetails} -> cloudWatchLogsDetails) (\s@DestinationDetails' {} a -> s {cloudWatchLogsDetails = a} :: DestinationDetails)

-- | The configuration details of the Kinesis Data Firehose destination.
destinationDetails_kinesisFirehoseDetails :: Lens.Lens' DestinationDetails (Prelude.Maybe KinesisFirehoseDestinationDetails)
destinationDetails_kinesisFirehoseDetails = Lens.lens (\DestinationDetails' {kinesisFirehoseDetails} -> kinesisFirehoseDetails) (\s@DestinationDetails' {} a -> s {kinesisFirehoseDetails = a} :: DestinationDetails)

instance Core.FromXML DestinationDetails where
  parseXML x =
    DestinationDetails'
      Prelude.<$> (x Core..@? "CloudWatchLogsDetails")
      Prelude.<*> (x Core..@? "KinesisFirehoseDetails")

instance Prelude.Hashable DestinationDetails

instance Prelude.NFData DestinationDetails

instance Core.ToQuery DestinationDetails where
  toQuery DestinationDetails' {..} =
    Prelude.mconcat
      [ "CloudWatchLogsDetails"
          Core.=: cloudWatchLogsDetails,
        "KinesisFirehoseDetails"
          Core.=: kinesisFirehoseDetails
      ]
