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
-- Module      : Amazonka.IdentityStore.ListUsers
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all users in the identity store. Returns a paginated list of
-- complete @User@ objects. Filtering for a @User@ by the @UserName@
-- attribute is deprecated. Instead, use the @GetUserId@ API action.
--
-- This operation returns paginated results.
module Amazonka.IdentityStore.ListUsers
  ( -- * Creating a Request
    ListUsers (..),
    newListUsers,

    -- * Request Lenses
    listUsers_nextToken,
    listUsers_filters,
    listUsers_maxResults,
    listUsers_identityStoreId,

    -- * Destructuring the Response
    ListUsersResponse (..),
    newListUsersResponse,

    -- * Response Lenses
    listUsersResponse_nextToken,
    listUsersResponse_httpStatus,
    listUsersResponse_users,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import Amazonka.IdentityStore.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListUsers' smart constructor.
data ListUsers = ListUsers'
  { -- | The pagination token used for the @ListUsers@ and @ListGroups@ API
    -- operations. This value is generated by the identity store service. It is
    -- returned in the API response if the total results are more than the size
    -- of one page. This token is also returned when it is used in the API
    -- request to search for the next page.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of @Filter@ objects, which is used in the @ListUsers@ and
    -- @ListGroups@ requests.
    filters :: Prelude.Maybe [Filter],
    -- | The maximum number of results to be returned per request. This parameter
    -- is used in the @ListUsers@ and @ListGroups@ requests to specify how many
    -- results to return in one page. The length limit is 50 characters.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The globally unique identifier for the identity store, such as
    -- @d-1234567890@. In this example, @d-@ is a fixed prefix, and
    -- @1234567890@ is a randomly generated string that contains numbers and
    -- lower case letters. This value is generated at the time that a new
    -- identity store is created.
    identityStoreId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListUsers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listUsers_nextToken' - The pagination token used for the @ListUsers@ and @ListGroups@ API
-- operations. This value is generated by the identity store service. It is
-- returned in the API response if the total results are more than the size
-- of one page. This token is also returned when it is used in the API
-- request to search for the next page.
--
-- 'filters', 'listUsers_filters' - A list of @Filter@ objects, which is used in the @ListUsers@ and
-- @ListGroups@ requests.
--
-- 'maxResults', 'listUsers_maxResults' - The maximum number of results to be returned per request. This parameter
-- is used in the @ListUsers@ and @ListGroups@ requests to specify how many
-- results to return in one page. The length limit is 50 characters.
--
-- 'identityStoreId', 'listUsers_identityStoreId' - The globally unique identifier for the identity store, such as
-- @d-1234567890@. In this example, @d-@ is a fixed prefix, and
-- @1234567890@ is a randomly generated string that contains numbers and
-- lower case letters. This value is generated at the time that a new
-- identity store is created.
newListUsers ::
  -- | 'identityStoreId'
  Prelude.Text ->
  ListUsers
newListUsers pIdentityStoreId_ =
  ListUsers'
    { nextToken = Prelude.Nothing,
      filters = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      identityStoreId = pIdentityStoreId_
    }

-- | The pagination token used for the @ListUsers@ and @ListGroups@ API
-- operations. This value is generated by the identity store service. It is
-- returned in the API response if the total results are more than the size
-- of one page. This token is also returned when it is used in the API
-- request to search for the next page.
listUsers_nextToken :: Lens.Lens' ListUsers (Prelude.Maybe Prelude.Text)
listUsers_nextToken = Lens.lens (\ListUsers' {nextToken} -> nextToken) (\s@ListUsers' {} a -> s {nextToken = a} :: ListUsers)

-- | A list of @Filter@ objects, which is used in the @ListUsers@ and
-- @ListGroups@ requests.
listUsers_filters :: Lens.Lens' ListUsers (Prelude.Maybe [Filter])
listUsers_filters = Lens.lens (\ListUsers' {filters} -> filters) (\s@ListUsers' {} a -> s {filters = a} :: ListUsers) Prelude.. Lens.mapping Lens.coerced

-- | The maximum number of results to be returned per request. This parameter
-- is used in the @ListUsers@ and @ListGroups@ requests to specify how many
-- results to return in one page. The length limit is 50 characters.
listUsers_maxResults :: Lens.Lens' ListUsers (Prelude.Maybe Prelude.Natural)
listUsers_maxResults = Lens.lens (\ListUsers' {maxResults} -> maxResults) (\s@ListUsers' {} a -> s {maxResults = a} :: ListUsers)

-- | The globally unique identifier for the identity store, such as
-- @d-1234567890@. In this example, @d-@ is a fixed prefix, and
-- @1234567890@ is a randomly generated string that contains numbers and
-- lower case letters. This value is generated at the time that a new
-- identity store is created.
listUsers_identityStoreId :: Lens.Lens' ListUsers Prelude.Text
listUsers_identityStoreId = Lens.lens (\ListUsers' {identityStoreId} -> identityStoreId) (\s@ListUsers' {} a -> s {identityStoreId = a} :: ListUsers)

instance Core.AWSPager ListUsers where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listUsersResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop (rs Lens.^. listUsersResponse_users) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listUsers_nextToken
          Lens..~ rs
          Lens.^? listUsersResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListUsers where
  type AWSResponse ListUsers = ListUsersResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          ListUsersResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "Users" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable ListUsers where
  hashWithSalt _salt ListUsers' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` identityStoreId

instance Prelude.NFData ListUsers where
  rnf ListUsers' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf identityStoreId

instance Core.ToHeaders ListUsers where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("AWSIdentityStore.ListUsers" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListUsers where
  toJSON ListUsers' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("Filters" Core..=) Prelude.<$> filters,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just
              ("IdentityStoreId" Core..= identityStoreId)
          ]
      )

instance Core.ToPath ListUsers where
  toPath = Prelude.const "/"

instance Core.ToQuery ListUsers where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListUsersResponse' smart constructor.
data ListUsersResponse = ListUsersResponse'
  { -- | The pagination token used for the @ListUsers@ and @ListGroups@ API
    -- operations. This value is generated by the identity store service. It is
    -- returned in the API response if the total results are more than the size
    -- of one page. This token is also returned when it is used in the API
    -- request to search for the next page.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A list of @User@ objects in the identity store.
    users :: [User]
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListUsersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listUsersResponse_nextToken' - The pagination token used for the @ListUsers@ and @ListGroups@ API
-- operations. This value is generated by the identity store service. It is
-- returned in the API response if the total results are more than the size
-- of one page. This token is also returned when it is used in the API
-- request to search for the next page.
--
-- 'httpStatus', 'listUsersResponse_httpStatus' - The response's http status code.
--
-- 'users', 'listUsersResponse_users' - A list of @User@ objects in the identity store.
newListUsersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListUsersResponse
newListUsersResponse pHttpStatus_ =
  ListUsersResponse'
    { nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_,
      users = Prelude.mempty
    }

-- | The pagination token used for the @ListUsers@ and @ListGroups@ API
-- operations. This value is generated by the identity store service. It is
-- returned in the API response if the total results are more than the size
-- of one page. This token is also returned when it is used in the API
-- request to search for the next page.
listUsersResponse_nextToken :: Lens.Lens' ListUsersResponse (Prelude.Maybe Prelude.Text)
listUsersResponse_nextToken = Lens.lens (\ListUsersResponse' {nextToken} -> nextToken) (\s@ListUsersResponse' {} a -> s {nextToken = a} :: ListUsersResponse)

-- | The response's http status code.
listUsersResponse_httpStatus :: Lens.Lens' ListUsersResponse Prelude.Int
listUsersResponse_httpStatus = Lens.lens (\ListUsersResponse' {httpStatus} -> httpStatus) (\s@ListUsersResponse' {} a -> s {httpStatus = a} :: ListUsersResponse)

-- | A list of @User@ objects in the identity store.
listUsersResponse_users :: Lens.Lens' ListUsersResponse [User]
listUsersResponse_users = Lens.lens (\ListUsersResponse' {users} -> users) (\s@ListUsersResponse' {} a -> s {users = a} :: ListUsersResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListUsersResponse where
  rnf ListUsersResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf users
