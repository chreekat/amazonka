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
-- Module      : Amazonka.IoTDeviceAdvisor.ListSuiteDefinitions
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the Device Advisor test suites you have created.
--
-- Requires permission to access the
-- <https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions ListSuiteDefinitions>
-- action.
module Amazonka.IoTDeviceAdvisor.ListSuiteDefinitions
  ( -- * Creating a Request
    ListSuiteDefinitions (..),
    newListSuiteDefinitions,

    -- * Request Lenses
    listSuiteDefinitions_nextToken,
    listSuiteDefinitions_maxResults,

    -- * Destructuring the Response
    ListSuiteDefinitionsResponse (..),
    newListSuiteDefinitionsResponse,

    -- * Response Lenses
    listSuiteDefinitionsResponse_suiteDefinitionInformationList,
    listSuiteDefinitionsResponse_nextToken,
    listSuiteDefinitionsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import Amazonka.IoTDeviceAdvisor.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListSuiteDefinitions' smart constructor.
data ListSuiteDefinitions = ListSuiteDefinitions'
  { -- | A token used to get the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return at once.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListSuiteDefinitions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listSuiteDefinitions_nextToken' - A token used to get the next set of results.
--
-- 'maxResults', 'listSuiteDefinitions_maxResults' - The maximum number of results to return at once.
newListSuiteDefinitions ::
  ListSuiteDefinitions
newListSuiteDefinitions =
  ListSuiteDefinitions'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | A token used to get the next set of results.
listSuiteDefinitions_nextToken :: Lens.Lens' ListSuiteDefinitions (Prelude.Maybe Prelude.Text)
listSuiteDefinitions_nextToken = Lens.lens (\ListSuiteDefinitions' {nextToken} -> nextToken) (\s@ListSuiteDefinitions' {} a -> s {nextToken = a} :: ListSuiteDefinitions)

-- | The maximum number of results to return at once.
listSuiteDefinitions_maxResults :: Lens.Lens' ListSuiteDefinitions (Prelude.Maybe Prelude.Natural)
listSuiteDefinitions_maxResults = Lens.lens (\ListSuiteDefinitions' {maxResults} -> maxResults) (\s@ListSuiteDefinitions' {} a -> s {maxResults = a} :: ListSuiteDefinitions)

instance Core.AWSRequest ListSuiteDefinitions where
  type
    AWSResponse ListSuiteDefinitions =
      ListSuiteDefinitionsResponse
  request overrides =
    Request.get (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          ListSuiteDefinitionsResponse'
            Prelude.<$> ( x Core..?> "suiteDefinitionInformationList"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListSuiteDefinitions where
  hashWithSalt _salt ListSuiteDefinitions' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListSuiteDefinitions where
  rnf ListSuiteDefinitions' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListSuiteDefinitions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListSuiteDefinitions where
  toPath = Prelude.const "/suiteDefinitions"

instance Core.ToQuery ListSuiteDefinitions where
  toQuery ListSuiteDefinitions' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListSuiteDefinitionsResponse' smart constructor.
data ListSuiteDefinitionsResponse = ListSuiteDefinitionsResponse'
  { -- | An array of objects that provide summaries of information about the
    -- suite definitions in the list.
    suiteDefinitionInformationList :: Prelude.Maybe [SuiteDefinitionInformation],
    -- | A token used to get the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListSuiteDefinitionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'suiteDefinitionInformationList', 'listSuiteDefinitionsResponse_suiteDefinitionInformationList' - An array of objects that provide summaries of information about the
-- suite definitions in the list.
--
-- 'nextToken', 'listSuiteDefinitionsResponse_nextToken' - A token used to get the next set of results.
--
-- 'httpStatus', 'listSuiteDefinitionsResponse_httpStatus' - The response's http status code.
newListSuiteDefinitionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListSuiteDefinitionsResponse
newListSuiteDefinitionsResponse pHttpStatus_ =
  ListSuiteDefinitionsResponse'
    { suiteDefinitionInformationList =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An array of objects that provide summaries of information about the
-- suite definitions in the list.
listSuiteDefinitionsResponse_suiteDefinitionInformationList :: Lens.Lens' ListSuiteDefinitionsResponse (Prelude.Maybe [SuiteDefinitionInformation])
listSuiteDefinitionsResponse_suiteDefinitionInformationList = Lens.lens (\ListSuiteDefinitionsResponse' {suiteDefinitionInformationList} -> suiteDefinitionInformationList) (\s@ListSuiteDefinitionsResponse' {} a -> s {suiteDefinitionInformationList = a} :: ListSuiteDefinitionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | A token used to get the next set of results.
listSuiteDefinitionsResponse_nextToken :: Lens.Lens' ListSuiteDefinitionsResponse (Prelude.Maybe Prelude.Text)
listSuiteDefinitionsResponse_nextToken = Lens.lens (\ListSuiteDefinitionsResponse' {nextToken} -> nextToken) (\s@ListSuiteDefinitionsResponse' {} a -> s {nextToken = a} :: ListSuiteDefinitionsResponse)

-- | The response's http status code.
listSuiteDefinitionsResponse_httpStatus :: Lens.Lens' ListSuiteDefinitionsResponse Prelude.Int
listSuiteDefinitionsResponse_httpStatus = Lens.lens (\ListSuiteDefinitionsResponse' {httpStatus} -> httpStatus) (\s@ListSuiteDefinitionsResponse' {} a -> s {httpStatus = a} :: ListSuiteDefinitionsResponse)

instance Prelude.NFData ListSuiteDefinitionsResponse where
  rnf ListSuiteDefinitionsResponse' {..} =
    Prelude.rnf suiteDefinitionInformationList
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
