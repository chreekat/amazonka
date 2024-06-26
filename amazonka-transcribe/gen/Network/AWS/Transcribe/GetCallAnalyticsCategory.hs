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
-- Module      : Network.AWS.Transcribe.GetCallAnalyticsCategory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a call analytics category.
module Network.AWS.Transcribe.GetCallAnalyticsCategory
  ( -- * Creating a Request
    GetCallAnalyticsCategory (..),
    newGetCallAnalyticsCategory,

    -- * Request Lenses
    getCallAnalyticsCategory_categoryName,

    -- * Destructuring the Response
    GetCallAnalyticsCategoryResponse (..),
    newGetCallAnalyticsCategoryResponse,

    -- * Response Lenses
    getCallAnalyticsCategoryResponse_categoryProperties,
    getCallAnalyticsCategoryResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Transcribe.Types

-- | /See:/ 'newGetCallAnalyticsCategory' smart constructor.
data GetCallAnalyticsCategory = GetCallAnalyticsCategory'
  { -- | The name of the category you want information about. This value is case
    -- sensitive.
    categoryName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetCallAnalyticsCategory' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'categoryName', 'getCallAnalyticsCategory_categoryName' - The name of the category you want information about. This value is case
-- sensitive.
newGetCallAnalyticsCategory ::
  -- | 'categoryName'
  Prelude.Text ->
  GetCallAnalyticsCategory
newGetCallAnalyticsCategory pCategoryName_ =
  GetCallAnalyticsCategory'
    { categoryName =
        pCategoryName_
    }

-- | The name of the category you want information about. This value is case
-- sensitive.
getCallAnalyticsCategory_categoryName :: Lens.Lens' GetCallAnalyticsCategory Prelude.Text
getCallAnalyticsCategory_categoryName = Lens.lens (\GetCallAnalyticsCategory' {categoryName} -> categoryName) (\s@GetCallAnalyticsCategory' {} a -> s {categoryName = a} :: GetCallAnalyticsCategory)

instance Core.AWSRequest GetCallAnalyticsCategory where
  type
    AWSResponse GetCallAnalyticsCategory =
      GetCallAnalyticsCategoryResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetCallAnalyticsCategoryResponse'
            Prelude.<$> (x Core..?> "CategoryProperties")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetCallAnalyticsCategory

instance Prelude.NFData GetCallAnalyticsCategory

instance Core.ToHeaders GetCallAnalyticsCategory where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Transcribe.GetCallAnalyticsCategory" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetCallAnalyticsCategory where
  toJSON GetCallAnalyticsCategory' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("CategoryName" Core..= categoryName)]
      )

instance Core.ToPath GetCallAnalyticsCategory where
  toPath = Prelude.const "/"

instance Core.ToQuery GetCallAnalyticsCategory where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetCallAnalyticsCategoryResponse' smart constructor.
data GetCallAnalyticsCategoryResponse = GetCallAnalyticsCategoryResponse'
  { -- | The rules you\'ve defined for a category.
    categoryProperties :: Prelude.Maybe CategoryProperties,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetCallAnalyticsCategoryResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'categoryProperties', 'getCallAnalyticsCategoryResponse_categoryProperties' - The rules you\'ve defined for a category.
--
-- 'httpStatus', 'getCallAnalyticsCategoryResponse_httpStatus' - The response's http status code.
newGetCallAnalyticsCategoryResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetCallAnalyticsCategoryResponse
newGetCallAnalyticsCategoryResponse pHttpStatus_ =
  GetCallAnalyticsCategoryResponse'
    { categoryProperties =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The rules you\'ve defined for a category.
getCallAnalyticsCategoryResponse_categoryProperties :: Lens.Lens' GetCallAnalyticsCategoryResponse (Prelude.Maybe CategoryProperties)
getCallAnalyticsCategoryResponse_categoryProperties = Lens.lens (\GetCallAnalyticsCategoryResponse' {categoryProperties} -> categoryProperties) (\s@GetCallAnalyticsCategoryResponse' {} a -> s {categoryProperties = a} :: GetCallAnalyticsCategoryResponse)

-- | The response's http status code.
getCallAnalyticsCategoryResponse_httpStatus :: Lens.Lens' GetCallAnalyticsCategoryResponse Prelude.Int
getCallAnalyticsCategoryResponse_httpStatus = Lens.lens (\GetCallAnalyticsCategoryResponse' {httpStatus} -> httpStatus) (\s@GetCallAnalyticsCategoryResponse' {} a -> s {httpStatus = a} :: GetCallAnalyticsCategoryResponse)

instance
  Prelude.NFData
    GetCallAnalyticsCategoryResponse
