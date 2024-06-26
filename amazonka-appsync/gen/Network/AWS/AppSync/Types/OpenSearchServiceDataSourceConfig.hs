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
-- Module      : Network.AWS.AppSync.Types.OpenSearchServiceDataSourceConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.OpenSearchServiceDataSourceConfig where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes an OpenSearch data source configuration.
--
-- /See:/ 'newOpenSearchServiceDataSourceConfig' smart constructor.
data OpenSearchServiceDataSourceConfig = OpenSearchServiceDataSourceConfig'
  { -- | The endpoint.
    endpoint :: Prelude.Text,
    -- | The Amazon Web Services Region.
    awsRegion :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'OpenSearchServiceDataSourceConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'endpoint', 'openSearchServiceDataSourceConfig_endpoint' - The endpoint.
--
-- 'awsRegion', 'openSearchServiceDataSourceConfig_awsRegion' - The Amazon Web Services Region.
newOpenSearchServiceDataSourceConfig ::
  -- | 'endpoint'
  Prelude.Text ->
  -- | 'awsRegion'
  Prelude.Text ->
  OpenSearchServiceDataSourceConfig
newOpenSearchServiceDataSourceConfig
  pEndpoint_
  pAwsRegion_ =
    OpenSearchServiceDataSourceConfig'
      { endpoint =
          pEndpoint_,
        awsRegion = pAwsRegion_
      }

-- | The endpoint.
openSearchServiceDataSourceConfig_endpoint :: Lens.Lens' OpenSearchServiceDataSourceConfig Prelude.Text
openSearchServiceDataSourceConfig_endpoint = Lens.lens (\OpenSearchServiceDataSourceConfig' {endpoint} -> endpoint) (\s@OpenSearchServiceDataSourceConfig' {} a -> s {endpoint = a} :: OpenSearchServiceDataSourceConfig)

-- | The Amazon Web Services Region.
openSearchServiceDataSourceConfig_awsRegion :: Lens.Lens' OpenSearchServiceDataSourceConfig Prelude.Text
openSearchServiceDataSourceConfig_awsRegion = Lens.lens (\OpenSearchServiceDataSourceConfig' {awsRegion} -> awsRegion) (\s@OpenSearchServiceDataSourceConfig' {} a -> s {awsRegion = a} :: OpenSearchServiceDataSourceConfig)

instance
  Core.FromJSON
    OpenSearchServiceDataSourceConfig
  where
  parseJSON =
    Core.withObject
      "OpenSearchServiceDataSourceConfig"
      ( \x ->
          OpenSearchServiceDataSourceConfig'
            Prelude.<$> (x Core..: "endpoint")
            Prelude.<*> (x Core..: "awsRegion")
      )

instance
  Prelude.Hashable
    OpenSearchServiceDataSourceConfig

instance
  Prelude.NFData
    OpenSearchServiceDataSourceConfig

instance
  Core.ToJSON
    OpenSearchServiceDataSourceConfig
  where
  toJSON OpenSearchServiceDataSourceConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("endpoint" Core..= endpoint),
            Prelude.Just ("awsRegion" Core..= awsRegion)
          ]
      )
