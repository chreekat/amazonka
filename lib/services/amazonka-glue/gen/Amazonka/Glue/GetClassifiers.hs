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
-- Module      : Amazonka.Glue.GetClassifiers
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all classifier objects in the Data Catalog.
--
-- This operation returns paginated results.
module Amazonka.Glue.GetClassifiers
  ( -- * Creating a Request
    GetClassifiers (..),
    newGetClassifiers,

    -- * Request Lenses
    getClassifiers_nextToken,
    getClassifiers_maxResults,

    -- * Destructuring the Response
    GetClassifiersResponse (..),
    newGetClassifiersResponse,

    -- * Response Lenses
    getClassifiersResponse_nextToken,
    getClassifiersResponse_classifiers,
    getClassifiersResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.Glue.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetClassifiers' smart constructor.
data GetClassifiers = GetClassifiers'
  { -- | An optional continuation token.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The size of the list to return (optional).
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetClassifiers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getClassifiers_nextToken' - An optional continuation token.
--
-- 'maxResults', 'getClassifiers_maxResults' - The size of the list to return (optional).
newGetClassifiers ::
  GetClassifiers
newGetClassifiers =
  GetClassifiers'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | An optional continuation token.
getClassifiers_nextToken :: Lens.Lens' GetClassifiers (Prelude.Maybe Prelude.Text)
getClassifiers_nextToken = Lens.lens (\GetClassifiers' {nextToken} -> nextToken) (\s@GetClassifiers' {} a -> s {nextToken = a} :: GetClassifiers)

-- | The size of the list to return (optional).
getClassifiers_maxResults :: Lens.Lens' GetClassifiers (Prelude.Maybe Prelude.Natural)
getClassifiers_maxResults = Lens.lens (\GetClassifiers' {maxResults} -> maxResults) (\s@GetClassifiers' {} a -> s {maxResults = a} :: GetClassifiers)

instance Core.AWSPager GetClassifiers where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? getClassifiersResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? getClassifiersResponse_classifiers
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& getClassifiers_nextToken
          Lens..~ rs
          Lens.^? getClassifiersResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest GetClassifiers where
  type
    AWSResponse GetClassifiers =
      GetClassifiersResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          GetClassifiersResponse'
            Prelude.<$> (x Data..?> "NextToken")
            Prelude.<*> (x Data..?> "Classifiers" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetClassifiers where
  hashWithSalt _salt GetClassifiers' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData GetClassifiers where
  rnf GetClassifiers' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults

instance Data.ToHeaders GetClassifiers where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Data.=# ("AWSGlue.GetClassifiers" :: Prelude.ByteString),
            "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON GetClassifiers where
  toJSON GetClassifiers' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("NextToken" Data..=) Prelude.<$> nextToken,
            ("MaxResults" Data..=) Prelude.<$> maxResults
          ]
      )

instance Data.ToPath GetClassifiers where
  toPath = Prelude.const "/"

instance Data.ToQuery GetClassifiers where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetClassifiersResponse' smart constructor.
data GetClassifiersResponse = GetClassifiersResponse'
  { -- | A continuation token.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The requested list of classifier objects.
    classifiers :: Prelude.Maybe [Classifier],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetClassifiersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getClassifiersResponse_nextToken' - A continuation token.
--
-- 'classifiers', 'getClassifiersResponse_classifiers' - The requested list of classifier objects.
--
-- 'httpStatus', 'getClassifiersResponse_httpStatus' - The response's http status code.
newGetClassifiersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetClassifiersResponse
newGetClassifiersResponse pHttpStatus_ =
  GetClassifiersResponse'
    { nextToken =
        Prelude.Nothing,
      classifiers = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A continuation token.
getClassifiersResponse_nextToken :: Lens.Lens' GetClassifiersResponse (Prelude.Maybe Prelude.Text)
getClassifiersResponse_nextToken = Lens.lens (\GetClassifiersResponse' {nextToken} -> nextToken) (\s@GetClassifiersResponse' {} a -> s {nextToken = a} :: GetClassifiersResponse)

-- | The requested list of classifier objects.
getClassifiersResponse_classifiers :: Lens.Lens' GetClassifiersResponse (Prelude.Maybe [Classifier])
getClassifiersResponse_classifiers = Lens.lens (\GetClassifiersResponse' {classifiers} -> classifiers) (\s@GetClassifiersResponse' {} a -> s {classifiers = a} :: GetClassifiersResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getClassifiersResponse_httpStatus :: Lens.Lens' GetClassifiersResponse Prelude.Int
getClassifiersResponse_httpStatus = Lens.lens (\GetClassifiersResponse' {httpStatus} -> httpStatus) (\s@GetClassifiersResponse' {} a -> s {httpStatus = a} :: GetClassifiersResponse)

instance Prelude.NFData GetClassifiersResponse where
  rnf GetClassifiersResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf classifiers
      `Prelude.seq` Prelude.rnf httpStatus
