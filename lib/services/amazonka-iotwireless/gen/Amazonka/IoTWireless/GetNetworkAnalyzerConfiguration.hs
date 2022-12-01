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
-- Module      : Amazonka.IoTWireless.GetNetworkAnalyzerConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get network analyzer configuration.
module Amazonka.IoTWireless.GetNetworkAnalyzerConfiguration
  ( -- * Creating a Request
    GetNetworkAnalyzerConfiguration (..),
    newGetNetworkAnalyzerConfiguration,

    -- * Request Lenses
    getNetworkAnalyzerConfiguration_configurationName,

    -- * Destructuring the Response
    GetNetworkAnalyzerConfigurationResponse (..),
    newGetNetworkAnalyzerConfigurationResponse,

    -- * Response Lenses
    getNetworkAnalyzerConfigurationResponse_wirelessGateways,
    getNetworkAnalyzerConfigurationResponse_name,
    getNetworkAnalyzerConfigurationResponse_wirelessDevices,
    getNetworkAnalyzerConfigurationResponse_arn,
    getNetworkAnalyzerConfigurationResponse_description,
    getNetworkAnalyzerConfigurationResponse_traceContent,
    getNetworkAnalyzerConfigurationResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import Amazonka.IoTWireless.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetNetworkAnalyzerConfiguration' smart constructor.
data GetNetworkAnalyzerConfiguration = GetNetworkAnalyzerConfiguration'
  { configurationName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetNetworkAnalyzerConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'configurationName', 'getNetworkAnalyzerConfiguration_configurationName' - Undocumented member.
newGetNetworkAnalyzerConfiguration ::
  -- | 'configurationName'
  Prelude.Text ->
  GetNetworkAnalyzerConfiguration
newGetNetworkAnalyzerConfiguration
  pConfigurationName_ =
    GetNetworkAnalyzerConfiguration'
      { configurationName =
          pConfigurationName_
      }

-- | Undocumented member.
getNetworkAnalyzerConfiguration_configurationName :: Lens.Lens' GetNetworkAnalyzerConfiguration Prelude.Text
getNetworkAnalyzerConfiguration_configurationName = Lens.lens (\GetNetworkAnalyzerConfiguration' {configurationName} -> configurationName) (\s@GetNetworkAnalyzerConfiguration' {} a -> s {configurationName = a} :: GetNetworkAnalyzerConfiguration)

instance
  Core.AWSRequest
    GetNetworkAnalyzerConfiguration
  where
  type
    AWSResponse GetNetworkAnalyzerConfiguration =
      GetNetworkAnalyzerConfigurationResponse
  request overrides =
    Request.get (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          GetNetworkAnalyzerConfigurationResponse'
            Prelude.<$> ( x Core..?> "WirelessGateways"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "Name")
            Prelude.<*> ( x Core..?> "WirelessDevices"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "Arn")
            Prelude.<*> (x Core..?> "Description")
            Prelude.<*> (x Core..?> "TraceContent")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    GetNetworkAnalyzerConfiguration
  where
  hashWithSalt
    _salt
    GetNetworkAnalyzerConfiguration' {..} =
      _salt `Prelude.hashWithSalt` configurationName

instance
  Prelude.NFData
    GetNetworkAnalyzerConfiguration
  where
  rnf GetNetworkAnalyzerConfiguration' {..} =
    Prelude.rnf configurationName

instance
  Core.ToHeaders
    GetNetworkAnalyzerConfiguration
  where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath GetNetworkAnalyzerConfiguration where
  toPath GetNetworkAnalyzerConfiguration' {..} =
    Prelude.mconcat
      [ "/network-analyzer-configurations/",
        Core.toBS configurationName
      ]

instance Core.ToQuery GetNetworkAnalyzerConfiguration where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetNetworkAnalyzerConfigurationResponse' smart constructor.
data GetNetworkAnalyzerConfigurationResponse = GetNetworkAnalyzerConfigurationResponse'
  { -- | List of wireless gateway resources that have been added to the network
    -- analyzer configuration.
    wirelessGateways :: Prelude.Maybe [Prelude.Text],
    name :: Prelude.Maybe Prelude.Text,
    -- | List of wireless gateway resources that have been added to the network
    -- analyzer configuration.
    wirelessDevices :: Prelude.Maybe [Prelude.Text],
    -- | The Amazon Resource Name of the new resource.
    arn :: Prelude.Maybe Prelude.Text,
    description :: Prelude.Maybe Prelude.Text,
    traceContent :: Prelude.Maybe TraceContent,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetNetworkAnalyzerConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'wirelessGateways', 'getNetworkAnalyzerConfigurationResponse_wirelessGateways' - List of wireless gateway resources that have been added to the network
-- analyzer configuration.
--
-- 'name', 'getNetworkAnalyzerConfigurationResponse_name' - Undocumented member.
--
-- 'wirelessDevices', 'getNetworkAnalyzerConfigurationResponse_wirelessDevices' - List of wireless gateway resources that have been added to the network
-- analyzer configuration.
--
-- 'arn', 'getNetworkAnalyzerConfigurationResponse_arn' - The Amazon Resource Name of the new resource.
--
-- 'description', 'getNetworkAnalyzerConfigurationResponse_description' - Undocumented member.
--
-- 'traceContent', 'getNetworkAnalyzerConfigurationResponse_traceContent' - Undocumented member.
--
-- 'httpStatus', 'getNetworkAnalyzerConfigurationResponse_httpStatus' - The response's http status code.
newGetNetworkAnalyzerConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetNetworkAnalyzerConfigurationResponse
newGetNetworkAnalyzerConfigurationResponse
  pHttpStatus_ =
    GetNetworkAnalyzerConfigurationResponse'
      { wirelessGateways =
          Prelude.Nothing,
        name = Prelude.Nothing,
        wirelessDevices = Prelude.Nothing,
        arn = Prelude.Nothing,
        description = Prelude.Nothing,
        traceContent = Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | List of wireless gateway resources that have been added to the network
-- analyzer configuration.
getNetworkAnalyzerConfigurationResponse_wirelessGateways :: Lens.Lens' GetNetworkAnalyzerConfigurationResponse (Prelude.Maybe [Prelude.Text])
getNetworkAnalyzerConfigurationResponse_wirelessGateways = Lens.lens (\GetNetworkAnalyzerConfigurationResponse' {wirelessGateways} -> wirelessGateways) (\s@GetNetworkAnalyzerConfigurationResponse' {} a -> s {wirelessGateways = a} :: GetNetworkAnalyzerConfigurationResponse) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
getNetworkAnalyzerConfigurationResponse_name :: Lens.Lens' GetNetworkAnalyzerConfigurationResponse (Prelude.Maybe Prelude.Text)
getNetworkAnalyzerConfigurationResponse_name = Lens.lens (\GetNetworkAnalyzerConfigurationResponse' {name} -> name) (\s@GetNetworkAnalyzerConfigurationResponse' {} a -> s {name = a} :: GetNetworkAnalyzerConfigurationResponse)

-- | List of wireless gateway resources that have been added to the network
-- analyzer configuration.
getNetworkAnalyzerConfigurationResponse_wirelessDevices :: Lens.Lens' GetNetworkAnalyzerConfigurationResponse (Prelude.Maybe [Prelude.Text])
getNetworkAnalyzerConfigurationResponse_wirelessDevices = Lens.lens (\GetNetworkAnalyzerConfigurationResponse' {wirelessDevices} -> wirelessDevices) (\s@GetNetworkAnalyzerConfigurationResponse' {} a -> s {wirelessDevices = a} :: GetNetworkAnalyzerConfigurationResponse) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name of the new resource.
getNetworkAnalyzerConfigurationResponse_arn :: Lens.Lens' GetNetworkAnalyzerConfigurationResponse (Prelude.Maybe Prelude.Text)
getNetworkAnalyzerConfigurationResponse_arn = Lens.lens (\GetNetworkAnalyzerConfigurationResponse' {arn} -> arn) (\s@GetNetworkAnalyzerConfigurationResponse' {} a -> s {arn = a} :: GetNetworkAnalyzerConfigurationResponse)

-- | Undocumented member.
getNetworkAnalyzerConfigurationResponse_description :: Lens.Lens' GetNetworkAnalyzerConfigurationResponse (Prelude.Maybe Prelude.Text)
getNetworkAnalyzerConfigurationResponse_description = Lens.lens (\GetNetworkAnalyzerConfigurationResponse' {description} -> description) (\s@GetNetworkAnalyzerConfigurationResponse' {} a -> s {description = a} :: GetNetworkAnalyzerConfigurationResponse)

-- | Undocumented member.
getNetworkAnalyzerConfigurationResponse_traceContent :: Lens.Lens' GetNetworkAnalyzerConfigurationResponse (Prelude.Maybe TraceContent)
getNetworkAnalyzerConfigurationResponse_traceContent = Lens.lens (\GetNetworkAnalyzerConfigurationResponse' {traceContent} -> traceContent) (\s@GetNetworkAnalyzerConfigurationResponse' {} a -> s {traceContent = a} :: GetNetworkAnalyzerConfigurationResponse)

-- | The response's http status code.
getNetworkAnalyzerConfigurationResponse_httpStatus :: Lens.Lens' GetNetworkAnalyzerConfigurationResponse Prelude.Int
getNetworkAnalyzerConfigurationResponse_httpStatus = Lens.lens (\GetNetworkAnalyzerConfigurationResponse' {httpStatus} -> httpStatus) (\s@GetNetworkAnalyzerConfigurationResponse' {} a -> s {httpStatus = a} :: GetNetworkAnalyzerConfigurationResponse)

instance
  Prelude.NFData
    GetNetworkAnalyzerConfigurationResponse
  where
  rnf GetNetworkAnalyzerConfigurationResponse' {..} =
    Prelude.rnf wirelessGateways
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf wirelessDevices
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf traceContent
      `Prelude.seq` Prelude.rnf httpStatus
