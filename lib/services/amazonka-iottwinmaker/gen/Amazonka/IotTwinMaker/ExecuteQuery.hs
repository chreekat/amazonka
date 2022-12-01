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
-- Module      : Amazonka.IotTwinMaker.ExecuteQuery
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Run queries to access information from your knowledge graph of entities
-- within individual workspaces.
module Amazonka.IotTwinMaker.ExecuteQuery
  ( -- * Creating a Request
    ExecuteQuery (..),
    newExecuteQuery,

    -- * Request Lenses
    executeQuery_nextToken,
    executeQuery_maxResults,
    executeQuery_workspaceId,
    executeQuery_queryStatement,

    -- * Destructuring the Response
    ExecuteQueryResponse (..),
    newExecuteQueryResponse,

    -- * Response Lenses
    executeQueryResponse_nextToken,
    executeQueryResponse_rows,
    executeQueryResponse_columnDescriptions,
    executeQueryResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import Amazonka.IotTwinMaker.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newExecuteQuery' smart constructor.
data ExecuteQuery = ExecuteQuery'
  { -- | The string that specifies the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return at one time. The default is 25.
    --
    -- Valid Range: Minimum value of 1. Maximum value of 250.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The ID of the workspace.
    workspaceId :: Prelude.Text,
    -- | The query statement.
    queryStatement :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ExecuteQuery' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'executeQuery_nextToken' - The string that specifies the next page of results.
--
-- 'maxResults', 'executeQuery_maxResults' - The maximum number of results to return at one time. The default is 25.
--
-- Valid Range: Minimum value of 1. Maximum value of 250.
--
-- 'workspaceId', 'executeQuery_workspaceId' - The ID of the workspace.
--
-- 'queryStatement', 'executeQuery_queryStatement' - The query statement.
newExecuteQuery ::
  -- | 'workspaceId'
  Prelude.Text ->
  -- | 'queryStatement'
  Prelude.Text ->
  ExecuteQuery
newExecuteQuery pWorkspaceId_ pQueryStatement_ =
  ExecuteQuery'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      workspaceId = pWorkspaceId_,
      queryStatement = pQueryStatement_
    }

-- | The string that specifies the next page of results.
executeQuery_nextToken :: Lens.Lens' ExecuteQuery (Prelude.Maybe Prelude.Text)
executeQuery_nextToken = Lens.lens (\ExecuteQuery' {nextToken} -> nextToken) (\s@ExecuteQuery' {} a -> s {nextToken = a} :: ExecuteQuery)

-- | The maximum number of results to return at one time. The default is 25.
--
-- Valid Range: Minimum value of 1. Maximum value of 250.
executeQuery_maxResults :: Lens.Lens' ExecuteQuery (Prelude.Maybe Prelude.Natural)
executeQuery_maxResults = Lens.lens (\ExecuteQuery' {maxResults} -> maxResults) (\s@ExecuteQuery' {} a -> s {maxResults = a} :: ExecuteQuery)

-- | The ID of the workspace.
executeQuery_workspaceId :: Lens.Lens' ExecuteQuery Prelude.Text
executeQuery_workspaceId = Lens.lens (\ExecuteQuery' {workspaceId} -> workspaceId) (\s@ExecuteQuery' {} a -> s {workspaceId = a} :: ExecuteQuery)

-- | The query statement.
executeQuery_queryStatement :: Lens.Lens' ExecuteQuery Prelude.Text
executeQuery_queryStatement = Lens.lens (\ExecuteQuery' {queryStatement} -> queryStatement) (\s@ExecuteQuery' {} a -> s {queryStatement = a} :: ExecuteQuery)

instance Core.AWSRequest ExecuteQuery where
  type AWSResponse ExecuteQuery = ExecuteQueryResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          ExecuteQueryResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (x Core..?> "rows" Core..!@ Prelude.mempty)
            Prelude.<*> ( x Core..?> "columnDescriptions"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ExecuteQuery where
  hashWithSalt _salt ExecuteQuery' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` workspaceId
      `Prelude.hashWithSalt` queryStatement

instance Prelude.NFData ExecuteQuery where
  rnf ExecuteQuery' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf workspaceId
      `Prelude.seq` Prelude.rnf queryStatement

instance Core.ToHeaders ExecuteQuery where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ExecuteQuery where
  toJSON ExecuteQuery' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nextToken" Core..=) Prelude.<$> nextToken,
            ("maxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just ("workspaceId" Core..= workspaceId),
            Prelude.Just
              ("queryStatement" Core..= queryStatement)
          ]
      )

instance Core.ToPath ExecuteQuery where
  toPath = Prelude.const "/queries/execution"

instance Core.ToQuery ExecuteQuery where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newExecuteQueryResponse' smart constructor.
data ExecuteQueryResponse = ExecuteQueryResponse'
  { -- | The string that specifies the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Represents a single row in the query results.
    rows :: Prelude.Maybe [Row],
    -- | A list of ColumnDescription objects.
    columnDescriptions :: Prelude.Maybe [ColumnDescription],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ExecuteQueryResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'executeQueryResponse_nextToken' - The string that specifies the next page of results.
--
-- 'rows', 'executeQueryResponse_rows' - Represents a single row in the query results.
--
-- 'columnDescriptions', 'executeQueryResponse_columnDescriptions' - A list of ColumnDescription objects.
--
-- 'httpStatus', 'executeQueryResponse_httpStatus' - The response's http status code.
newExecuteQueryResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ExecuteQueryResponse
newExecuteQueryResponse pHttpStatus_ =
  ExecuteQueryResponse'
    { nextToken = Prelude.Nothing,
      rows = Prelude.Nothing,
      columnDescriptions = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The string that specifies the next page of results.
executeQueryResponse_nextToken :: Lens.Lens' ExecuteQueryResponse (Prelude.Maybe Prelude.Text)
executeQueryResponse_nextToken = Lens.lens (\ExecuteQueryResponse' {nextToken} -> nextToken) (\s@ExecuteQueryResponse' {} a -> s {nextToken = a} :: ExecuteQueryResponse)

-- | Represents a single row in the query results.
executeQueryResponse_rows :: Lens.Lens' ExecuteQueryResponse (Prelude.Maybe [Row])
executeQueryResponse_rows = Lens.lens (\ExecuteQueryResponse' {rows} -> rows) (\s@ExecuteQueryResponse' {} a -> s {rows = a} :: ExecuteQueryResponse) Prelude.. Lens.mapping Lens.coerced

-- | A list of ColumnDescription objects.
executeQueryResponse_columnDescriptions :: Lens.Lens' ExecuteQueryResponse (Prelude.Maybe [ColumnDescription])
executeQueryResponse_columnDescriptions = Lens.lens (\ExecuteQueryResponse' {columnDescriptions} -> columnDescriptions) (\s@ExecuteQueryResponse' {} a -> s {columnDescriptions = a} :: ExecuteQueryResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
executeQueryResponse_httpStatus :: Lens.Lens' ExecuteQueryResponse Prelude.Int
executeQueryResponse_httpStatus = Lens.lens (\ExecuteQueryResponse' {httpStatus} -> httpStatus) (\s@ExecuteQueryResponse' {} a -> s {httpStatus = a} :: ExecuteQueryResponse)

instance Prelude.NFData ExecuteQueryResponse where
  rnf ExecuteQueryResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf rows
      `Prelude.seq` Prelude.rnf columnDescriptions
      `Prelude.seq` Prelude.rnf httpStatus
