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
-- Module      : Network.AWS.Athena.ListWorkGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists available workgroups for the account.
module Network.AWS.Athena.ListWorkGroups
  ( -- * Creating a Request
    ListWorkGroups (..),
    newListWorkGroups,

    -- * Request Lenses
    listWorkGroups_nextToken,
    listWorkGroups_maxResults,

    -- * Destructuring the Response
    ListWorkGroupsResponse (..),
    newListWorkGroupsResponse,

    -- * Response Lenses
    listWorkGroupsResponse_nextToken,
    listWorkGroupsResponse_workGroups,
    listWorkGroupsResponse_httpStatus,
  )
where

import Network.AWS.Athena.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListWorkGroups' smart constructor.
data ListWorkGroups = ListWorkGroups'
  { -- | A token generated by the Athena service that specifies where to continue
    -- pagination if a previous request was truncated. To obtain the next set
    -- of pages, pass in the @NextToken@ from the response object of the
    -- previous page call.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of workgroups to return in this request.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListWorkGroups' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listWorkGroups_nextToken' - A token generated by the Athena service that specifies where to continue
-- pagination if a previous request was truncated. To obtain the next set
-- of pages, pass in the @NextToken@ from the response object of the
-- previous page call.
--
-- 'maxResults', 'listWorkGroups_maxResults' - The maximum number of workgroups to return in this request.
newListWorkGroups ::
  ListWorkGroups
newListWorkGroups =
  ListWorkGroups'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | A token generated by the Athena service that specifies where to continue
-- pagination if a previous request was truncated. To obtain the next set
-- of pages, pass in the @NextToken@ from the response object of the
-- previous page call.
listWorkGroups_nextToken :: Lens.Lens' ListWorkGroups (Prelude.Maybe Prelude.Text)
listWorkGroups_nextToken = Lens.lens (\ListWorkGroups' {nextToken} -> nextToken) (\s@ListWorkGroups' {} a -> s {nextToken = a} :: ListWorkGroups)

-- | The maximum number of workgroups to return in this request.
listWorkGroups_maxResults :: Lens.Lens' ListWorkGroups (Prelude.Maybe Prelude.Natural)
listWorkGroups_maxResults = Lens.lens (\ListWorkGroups' {maxResults} -> maxResults) (\s@ListWorkGroups' {} a -> s {maxResults = a} :: ListWorkGroups)

instance Core.AWSRequest ListWorkGroups where
  type
    AWSResponse ListWorkGroups =
      ListWorkGroupsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListWorkGroupsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "WorkGroups" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListWorkGroups

instance Prelude.NFData ListWorkGroups

instance Core.ToHeaders ListWorkGroups where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonAthena.ListWorkGroups" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListWorkGroups where
  toJSON ListWorkGroups' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListWorkGroups where
  toPath = Prelude.const "/"

instance Core.ToQuery ListWorkGroups where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListWorkGroupsResponse' smart constructor.
data ListWorkGroupsResponse = ListWorkGroupsResponse'
  { -- | A token generated by the Athena service that specifies where to continue
    -- pagination if a previous request was truncated. To obtain the next set
    -- of pages, pass in the @NextToken@ from the response object of the
    -- previous page call.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of WorkGroupSummary objects that include the names, descriptions,
    -- creation times, and states for each workgroup.
    workGroups :: Prelude.Maybe [WorkGroupSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListWorkGroupsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listWorkGroupsResponse_nextToken' - A token generated by the Athena service that specifies where to continue
-- pagination if a previous request was truncated. To obtain the next set
-- of pages, pass in the @NextToken@ from the response object of the
-- previous page call.
--
-- 'workGroups', 'listWorkGroupsResponse_workGroups' - A list of WorkGroupSummary objects that include the names, descriptions,
-- creation times, and states for each workgroup.
--
-- 'httpStatus', 'listWorkGroupsResponse_httpStatus' - The response's http status code.
newListWorkGroupsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListWorkGroupsResponse
newListWorkGroupsResponse pHttpStatus_ =
  ListWorkGroupsResponse'
    { nextToken =
        Prelude.Nothing,
      workGroups = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A token generated by the Athena service that specifies where to continue
-- pagination if a previous request was truncated. To obtain the next set
-- of pages, pass in the @NextToken@ from the response object of the
-- previous page call.
listWorkGroupsResponse_nextToken :: Lens.Lens' ListWorkGroupsResponse (Prelude.Maybe Prelude.Text)
listWorkGroupsResponse_nextToken = Lens.lens (\ListWorkGroupsResponse' {nextToken} -> nextToken) (\s@ListWorkGroupsResponse' {} a -> s {nextToken = a} :: ListWorkGroupsResponse)

-- | A list of WorkGroupSummary objects that include the names, descriptions,
-- creation times, and states for each workgroup.
listWorkGroupsResponse_workGroups :: Lens.Lens' ListWorkGroupsResponse (Prelude.Maybe [WorkGroupSummary])
listWorkGroupsResponse_workGroups = Lens.lens (\ListWorkGroupsResponse' {workGroups} -> workGroups) (\s@ListWorkGroupsResponse' {} a -> s {workGroups = a} :: ListWorkGroupsResponse) Prelude.. Lens.mapping Lens._Coerce

-- | The response's http status code.
listWorkGroupsResponse_httpStatus :: Lens.Lens' ListWorkGroupsResponse Prelude.Int
listWorkGroupsResponse_httpStatus = Lens.lens (\ListWorkGroupsResponse' {httpStatus} -> httpStatus) (\s@ListWorkGroupsResponse' {} a -> s {httpStatus = a} :: ListWorkGroupsResponse)

instance Prelude.NFData ListWorkGroupsResponse