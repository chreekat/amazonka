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
-- Module      : Amazonka.Athena.ListDatabases
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the databases in the specified data catalog.
--
-- This operation returns paginated results.
module Amazonka.Athena.ListDatabases
  ( -- * Creating a Request
    ListDatabases (..),
    newListDatabases,

    -- * Request Lenses
    listDatabases_nextToken,
    listDatabases_maxResults,
    listDatabases_catalogName,

    -- * Destructuring the Response
    ListDatabasesResponse (..),
    newListDatabasesResponse,

    -- * Response Lenses
    listDatabasesResponse_nextToken,
    listDatabasesResponse_databaseList,
    listDatabasesResponse_httpStatus,
  )
where

import Amazonka.Athena.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListDatabases' smart constructor.
data ListDatabases = ListDatabases'
  { -- | A token generated by the Athena service that specifies where to continue
    -- pagination if a previous request was truncated. To obtain the next set
    -- of pages, pass in the @NextToken@ from the response object of the
    -- previous page call.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Specifies the maximum number of results to return.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The name of the data catalog that contains the databases to return.
    catalogName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListDatabases' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listDatabases_nextToken' - A token generated by the Athena service that specifies where to continue
-- pagination if a previous request was truncated. To obtain the next set
-- of pages, pass in the @NextToken@ from the response object of the
-- previous page call.
--
-- 'maxResults', 'listDatabases_maxResults' - Specifies the maximum number of results to return.
--
-- 'catalogName', 'listDatabases_catalogName' - The name of the data catalog that contains the databases to return.
newListDatabases ::
  -- | 'catalogName'
  Prelude.Text ->
  ListDatabases
newListDatabases pCatalogName_ =
  ListDatabases'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      catalogName = pCatalogName_
    }

-- | A token generated by the Athena service that specifies where to continue
-- pagination if a previous request was truncated. To obtain the next set
-- of pages, pass in the @NextToken@ from the response object of the
-- previous page call.
listDatabases_nextToken :: Lens.Lens' ListDatabases (Prelude.Maybe Prelude.Text)
listDatabases_nextToken = Lens.lens (\ListDatabases' {nextToken} -> nextToken) (\s@ListDatabases' {} a -> s {nextToken = a} :: ListDatabases)

-- | Specifies the maximum number of results to return.
listDatabases_maxResults :: Lens.Lens' ListDatabases (Prelude.Maybe Prelude.Natural)
listDatabases_maxResults = Lens.lens (\ListDatabases' {maxResults} -> maxResults) (\s@ListDatabases' {} a -> s {maxResults = a} :: ListDatabases)

-- | The name of the data catalog that contains the databases to return.
listDatabases_catalogName :: Lens.Lens' ListDatabases Prelude.Text
listDatabases_catalogName = Lens.lens (\ListDatabases' {catalogName} -> catalogName) (\s@ListDatabases' {} a -> s {catalogName = a} :: ListDatabases)

instance Core.AWSPager ListDatabases where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listDatabasesResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listDatabasesResponse_databaseList
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listDatabases_nextToken
          Lens..~ rs
          Lens.^? listDatabasesResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListDatabases where
  type
    AWSResponse ListDatabases =
      ListDatabasesResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          ListDatabasesResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "DatabaseList" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListDatabases where
  hashWithSalt _salt ListDatabases' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` catalogName

instance Prelude.NFData ListDatabases where
  rnf ListDatabases' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf catalogName

instance Core.ToHeaders ListDatabases where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("AmazonAthena.ListDatabases" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListDatabases where
  toJSON ListDatabases' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just ("CatalogName" Core..= catalogName)
          ]
      )

instance Core.ToPath ListDatabases where
  toPath = Prelude.const "/"

instance Core.ToQuery ListDatabases where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListDatabasesResponse' smart constructor.
data ListDatabasesResponse = ListDatabasesResponse'
  { -- | A token generated by the Athena service that specifies where to continue
    -- pagination if a previous request was truncated. To obtain the next set
    -- of pages, pass in the NextToken from the response object of the previous
    -- page call.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of databases from a data catalog.
    databaseList :: Prelude.Maybe [Database],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListDatabasesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listDatabasesResponse_nextToken' - A token generated by the Athena service that specifies where to continue
-- pagination if a previous request was truncated. To obtain the next set
-- of pages, pass in the NextToken from the response object of the previous
-- page call.
--
-- 'databaseList', 'listDatabasesResponse_databaseList' - A list of databases from a data catalog.
--
-- 'httpStatus', 'listDatabasesResponse_httpStatus' - The response's http status code.
newListDatabasesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListDatabasesResponse
newListDatabasesResponse pHttpStatus_ =
  ListDatabasesResponse'
    { nextToken = Prelude.Nothing,
      databaseList = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A token generated by the Athena service that specifies where to continue
-- pagination if a previous request was truncated. To obtain the next set
-- of pages, pass in the NextToken from the response object of the previous
-- page call.
listDatabasesResponse_nextToken :: Lens.Lens' ListDatabasesResponse (Prelude.Maybe Prelude.Text)
listDatabasesResponse_nextToken = Lens.lens (\ListDatabasesResponse' {nextToken} -> nextToken) (\s@ListDatabasesResponse' {} a -> s {nextToken = a} :: ListDatabasesResponse)

-- | A list of databases from a data catalog.
listDatabasesResponse_databaseList :: Lens.Lens' ListDatabasesResponse (Prelude.Maybe [Database])
listDatabasesResponse_databaseList = Lens.lens (\ListDatabasesResponse' {databaseList} -> databaseList) (\s@ListDatabasesResponse' {} a -> s {databaseList = a} :: ListDatabasesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listDatabasesResponse_httpStatus :: Lens.Lens' ListDatabasesResponse Prelude.Int
listDatabasesResponse_httpStatus = Lens.lens (\ListDatabasesResponse' {httpStatus} -> httpStatus) (\s@ListDatabasesResponse' {} a -> s {httpStatus = a} :: ListDatabasesResponse)

instance Prelude.NFData ListDatabasesResponse where
  rnf ListDatabasesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf databaseList
      `Prelude.seq` Prelude.rnf httpStatus
