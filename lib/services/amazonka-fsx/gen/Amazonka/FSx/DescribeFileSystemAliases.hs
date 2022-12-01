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
-- Module      : Amazonka.FSx.DescribeFileSystemAliases
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the DNS aliases that are associated with the specified Amazon
-- FSx for Windows File Server file system. A history of all DNS aliases
-- that have been associated with and disassociated from the file system is
-- available in the list of AdministrativeAction provided in the
-- DescribeFileSystems operation response.
module Amazonka.FSx.DescribeFileSystemAliases
  ( -- * Creating a Request
    DescribeFileSystemAliases (..),
    newDescribeFileSystemAliases,

    -- * Request Lenses
    describeFileSystemAliases_nextToken,
    describeFileSystemAliases_clientRequestToken,
    describeFileSystemAliases_maxResults,
    describeFileSystemAliases_fileSystemId,

    -- * Destructuring the Response
    DescribeFileSystemAliasesResponse (..),
    newDescribeFileSystemAliasesResponse,

    -- * Response Lenses
    describeFileSystemAliasesResponse_nextToken,
    describeFileSystemAliasesResponse_aliases,
    describeFileSystemAliasesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import Amazonka.FSx.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | The request object for @DescribeFileSystemAliases@ operation.
--
-- /See:/ 'newDescribeFileSystemAliases' smart constructor.
data DescribeFileSystemAliases = DescribeFileSystemAliases'
  { -- | Opaque pagination token returned from a previous
    -- @DescribeFileSystemAliases@ operation (String). If a token is included
    -- in the request, the action continues the list from where the previous
    -- returning call left off.
    nextToken :: Prelude.Maybe Prelude.Text,
    clientRequestToken :: Prelude.Maybe Prelude.Text,
    -- | Maximum number of DNS aliases to return in the response (integer). This
    -- parameter value must be greater than 0. The number of items that Amazon
    -- FSx returns is the minimum of the @MaxResults@ parameter specified in
    -- the request and the service\'s internal maximum number of items per
    -- page.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The ID of the file system to return the associated DNS aliases for
    -- (String).
    fileSystemId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeFileSystemAliases' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeFileSystemAliases_nextToken' - Opaque pagination token returned from a previous
-- @DescribeFileSystemAliases@ operation (String). If a token is included
-- in the request, the action continues the list from where the previous
-- returning call left off.
--
-- 'clientRequestToken', 'describeFileSystemAliases_clientRequestToken' - Undocumented member.
--
-- 'maxResults', 'describeFileSystemAliases_maxResults' - Maximum number of DNS aliases to return in the response (integer). This
-- parameter value must be greater than 0. The number of items that Amazon
-- FSx returns is the minimum of the @MaxResults@ parameter specified in
-- the request and the service\'s internal maximum number of items per
-- page.
--
-- 'fileSystemId', 'describeFileSystemAliases_fileSystemId' - The ID of the file system to return the associated DNS aliases for
-- (String).
newDescribeFileSystemAliases ::
  -- | 'fileSystemId'
  Prelude.Text ->
  DescribeFileSystemAliases
newDescribeFileSystemAliases pFileSystemId_ =
  DescribeFileSystemAliases'
    { nextToken =
        Prelude.Nothing,
      clientRequestToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      fileSystemId = pFileSystemId_
    }

-- | Opaque pagination token returned from a previous
-- @DescribeFileSystemAliases@ operation (String). If a token is included
-- in the request, the action continues the list from where the previous
-- returning call left off.
describeFileSystemAliases_nextToken :: Lens.Lens' DescribeFileSystemAliases (Prelude.Maybe Prelude.Text)
describeFileSystemAliases_nextToken = Lens.lens (\DescribeFileSystemAliases' {nextToken} -> nextToken) (\s@DescribeFileSystemAliases' {} a -> s {nextToken = a} :: DescribeFileSystemAliases)

-- | Undocumented member.
describeFileSystemAliases_clientRequestToken :: Lens.Lens' DescribeFileSystemAliases (Prelude.Maybe Prelude.Text)
describeFileSystemAliases_clientRequestToken = Lens.lens (\DescribeFileSystemAliases' {clientRequestToken} -> clientRequestToken) (\s@DescribeFileSystemAliases' {} a -> s {clientRequestToken = a} :: DescribeFileSystemAliases)

-- | Maximum number of DNS aliases to return in the response (integer). This
-- parameter value must be greater than 0. The number of items that Amazon
-- FSx returns is the minimum of the @MaxResults@ parameter specified in
-- the request and the service\'s internal maximum number of items per
-- page.
describeFileSystemAliases_maxResults :: Lens.Lens' DescribeFileSystemAliases (Prelude.Maybe Prelude.Natural)
describeFileSystemAliases_maxResults = Lens.lens (\DescribeFileSystemAliases' {maxResults} -> maxResults) (\s@DescribeFileSystemAliases' {} a -> s {maxResults = a} :: DescribeFileSystemAliases)

-- | The ID of the file system to return the associated DNS aliases for
-- (String).
describeFileSystemAliases_fileSystemId :: Lens.Lens' DescribeFileSystemAliases Prelude.Text
describeFileSystemAliases_fileSystemId = Lens.lens (\DescribeFileSystemAliases' {fileSystemId} -> fileSystemId) (\s@DescribeFileSystemAliases' {} a -> s {fileSystemId = a} :: DescribeFileSystemAliases)

instance Core.AWSRequest DescribeFileSystemAliases where
  type
    AWSResponse DescribeFileSystemAliases =
      DescribeFileSystemAliasesResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeFileSystemAliasesResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Aliases" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeFileSystemAliases where
  hashWithSalt _salt DescribeFileSystemAliases' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` clientRequestToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` fileSystemId

instance Prelude.NFData DescribeFileSystemAliases where
  rnf DescribeFileSystemAliases' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf clientRequestToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf fileSystemId

instance Core.ToHeaders DescribeFileSystemAliases where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSSimbaAPIService_v20180301.DescribeFileSystemAliases" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeFileSystemAliases where
  toJSON DescribeFileSystemAliases' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("ClientRequestToken" Core..=)
              Prelude.<$> clientRequestToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just ("FileSystemId" Core..= fileSystemId)
          ]
      )

instance Core.ToPath DescribeFileSystemAliases where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeFileSystemAliases where
  toQuery = Prelude.const Prelude.mempty

-- | The response object for @DescribeFileSystemAliases@ operation.
--
-- /See:/ 'newDescribeFileSystemAliasesResponse' smart constructor.
data DescribeFileSystemAliasesResponse = DescribeFileSystemAliasesResponse'
  { -- | Present if there are more DNS aliases than returned in the response
    -- (String). You can use the @NextToken@ value in a later request to fetch
    -- additional descriptions.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | An array of one or more DNS aliases currently associated with the
    -- specified file system.
    aliases :: Prelude.Maybe [Alias],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeFileSystemAliasesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeFileSystemAliasesResponse_nextToken' - Present if there are more DNS aliases than returned in the response
-- (String). You can use the @NextToken@ value in a later request to fetch
-- additional descriptions.
--
-- 'aliases', 'describeFileSystemAliasesResponse_aliases' - An array of one or more DNS aliases currently associated with the
-- specified file system.
--
-- 'httpStatus', 'describeFileSystemAliasesResponse_httpStatus' - The response's http status code.
newDescribeFileSystemAliasesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeFileSystemAliasesResponse
newDescribeFileSystemAliasesResponse pHttpStatus_ =
  DescribeFileSystemAliasesResponse'
    { nextToken =
        Prelude.Nothing,
      aliases = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Present if there are more DNS aliases than returned in the response
-- (String). You can use the @NextToken@ value in a later request to fetch
-- additional descriptions.
describeFileSystemAliasesResponse_nextToken :: Lens.Lens' DescribeFileSystemAliasesResponse (Prelude.Maybe Prelude.Text)
describeFileSystemAliasesResponse_nextToken = Lens.lens (\DescribeFileSystemAliasesResponse' {nextToken} -> nextToken) (\s@DescribeFileSystemAliasesResponse' {} a -> s {nextToken = a} :: DescribeFileSystemAliasesResponse)

-- | An array of one or more DNS aliases currently associated with the
-- specified file system.
describeFileSystemAliasesResponse_aliases :: Lens.Lens' DescribeFileSystemAliasesResponse (Prelude.Maybe [Alias])
describeFileSystemAliasesResponse_aliases = Lens.lens (\DescribeFileSystemAliasesResponse' {aliases} -> aliases) (\s@DescribeFileSystemAliasesResponse' {} a -> s {aliases = a} :: DescribeFileSystemAliasesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeFileSystemAliasesResponse_httpStatus :: Lens.Lens' DescribeFileSystemAliasesResponse Prelude.Int
describeFileSystemAliasesResponse_httpStatus = Lens.lens (\DescribeFileSystemAliasesResponse' {httpStatus} -> httpStatus) (\s@DescribeFileSystemAliasesResponse' {} a -> s {httpStatus = a} :: DescribeFileSystemAliasesResponse)

instance
  Prelude.NFData
    DescribeFileSystemAliasesResponse
  where
  rnf DescribeFileSystemAliasesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf aliases
      `Prelude.seq` Prelude.rnf httpStatus
