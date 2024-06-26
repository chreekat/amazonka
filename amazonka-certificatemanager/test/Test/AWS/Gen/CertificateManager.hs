{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.CertificateManager
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.CertificateManager where

import Data.Proxy
import Network.AWS.CertificateManager
import Test.AWS.CertificateManager.Internal
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestGetAccountConfiguration $
--             newGetAccountConfiguration
--
--         , requestRemoveTagsFromCertificate $
--             newRemoveTagsFromCertificate
--
--         , requestDeleteCertificate $
--             newDeleteCertificate
--
--         , requestUpdateCertificateOptions $
--             newUpdateCertificateOptions
--
--         , requestExportCertificate $
--             newExportCertificate
--
--         , requestRenewCertificate $
--             newRenewCertificate
--
--         , requestGetCertificate $
--             newGetCertificate
--
--         , requestImportCertificate $
--             newImportCertificate
--
--         , requestDescribeCertificate $
--             newDescribeCertificate
--
--         , requestPutAccountConfiguration $
--             newPutAccountConfiguration
--
--         , requestResendValidationEmail $
--             newResendValidationEmail
--
--         , requestListCertificates $
--             newListCertificates
--
--         , requestRequestCertificate $
--             newRequestCertificate
--
--         , requestAddTagsToCertificate $
--             newAddTagsToCertificate
--
--         , requestListTagsForCertificate $
--             newListTagsForCertificate
--
--           ]

--     , testGroup "response"
--         [ responseGetAccountConfiguration $
--             newGetAccountConfigurationResponse
--
--         , responseRemoveTagsFromCertificate $
--             newRemoveTagsFromCertificateResponse
--
--         , responseDeleteCertificate $
--             newDeleteCertificateResponse
--
--         , responseUpdateCertificateOptions $
--             newUpdateCertificateOptionsResponse
--
--         , responseExportCertificate $
--             newExportCertificateResponse
--
--         , responseRenewCertificate $
--             newRenewCertificateResponse
--
--         , responseGetCertificate $
--             newGetCertificateResponse
--
--         , responseImportCertificate $
--             newImportCertificateResponse
--
--         , responseDescribeCertificate $
--             newDescribeCertificateResponse
--
--         , responsePutAccountConfiguration $
--             newPutAccountConfigurationResponse
--
--         , responseResendValidationEmail $
--             newResendValidationEmailResponse
--
--         , responseListCertificates $
--             newListCertificatesResponse
--
--         , responseRequestCertificate $
--             newRequestCertificateResponse
--
--         , responseAddTagsToCertificate $
--             newAddTagsToCertificateResponse
--
--         , responseListTagsForCertificate $
--             newListTagsForCertificateResponse
--
--           ]
--     ]

-- Requests

requestGetAccountConfiguration :: GetAccountConfiguration -> TestTree
requestGetAccountConfiguration =
  req
    "GetAccountConfiguration"
    "fixture/GetAccountConfiguration.yaml"

requestRemoveTagsFromCertificate :: RemoveTagsFromCertificate -> TestTree
requestRemoveTagsFromCertificate =
  req
    "RemoveTagsFromCertificate"
    "fixture/RemoveTagsFromCertificate.yaml"

requestDeleteCertificate :: DeleteCertificate -> TestTree
requestDeleteCertificate =
  req
    "DeleteCertificate"
    "fixture/DeleteCertificate.yaml"

requestUpdateCertificateOptions :: UpdateCertificateOptions -> TestTree
requestUpdateCertificateOptions =
  req
    "UpdateCertificateOptions"
    "fixture/UpdateCertificateOptions.yaml"

requestExportCertificate :: ExportCertificate -> TestTree
requestExportCertificate =
  req
    "ExportCertificate"
    "fixture/ExportCertificate.yaml"

requestRenewCertificate :: RenewCertificate -> TestTree
requestRenewCertificate =
  req
    "RenewCertificate"
    "fixture/RenewCertificate.yaml"

requestGetCertificate :: GetCertificate -> TestTree
requestGetCertificate =
  req
    "GetCertificate"
    "fixture/GetCertificate.yaml"

requestImportCertificate :: ImportCertificate -> TestTree
requestImportCertificate =
  req
    "ImportCertificate"
    "fixture/ImportCertificate.yaml"

requestDescribeCertificate :: DescribeCertificate -> TestTree
requestDescribeCertificate =
  req
    "DescribeCertificate"
    "fixture/DescribeCertificate.yaml"

requestPutAccountConfiguration :: PutAccountConfiguration -> TestTree
requestPutAccountConfiguration =
  req
    "PutAccountConfiguration"
    "fixture/PutAccountConfiguration.yaml"

requestResendValidationEmail :: ResendValidationEmail -> TestTree
requestResendValidationEmail =
  req
    "ResendValidationEmail"
    "fixture/ResendValidationEmail.yaml"

requestListCertificates :: ListCertificates -> TestTree
requestListCertificates =
  req
    "ListCertificates"
    "fixture/ListCertificates.yaml"

requestRequestCertificate :: RequestCertificate -> TestTree
requestRequestCertificate =
  req
    "RequestCertificate"
    "fixture/RequestCertificate.yaml"

requestAddTagsToCertificate :: AddTagsToCertificate -> TestTree
requestAddTagsToCertificate =
  req
    "AddTagsToCertificate"
    "fixture/AddTagsToCertificate.yaml"

requestListTagsForCertificate :: ListTagsForCertificate -> TestTree
requestListTagsForCertificate =
  req
    "ListTagsForCertificate"
    "fixture/ListTagsForCertificate.yaml"

-- Responses

responseGetAccountConfiguration :: GetAccountConfigurationResponse -> TestTree
responseGetAccountConfiguration =
  res
    "GetAccountConfigurationResponse"
    "fixture/GetAccountConfigurationResponse.proto"
    defaultService
    (Proxy :: Proxy GetAccountConfiguration)

responseRemoveTagsFromCertificate :: RemoveTagsFromCertificateResponse -> TestTree
responseRemoveTagsFromCertificate =
  res
    "RemoveTagsFromCertificateResponse"
    "fixture/RemoveTagsFromCertificateResponse.proto"
    defaultService
    (Proxy :: Proxy RemoveTagsFromCertificate)

responseDeleteCertificate :: DeleteCertificateResponse -> TestTree
responseDeleteCertificate =
  res
    "DeleteCertificateResponse"
    "fixture/DeleteCertificateResponse.proto"
    defaultService
    (Proxy :: Proxy DeleteCertificate)

responseUpdateCertificateOptions :: UpdateCertificateOptionsResponse -> TestTree
responseUpdateCertificateOptions =
  res
    "UpdateCertificateOptionsResponse"
    "fixture/UpdateCertificateOptionsResponse.proto"
    defaultService
    (Proxy :: Proxy UpdateCertificateOptions)

responseExportCertificate :: ExportCertificateResponse -> TestTree
responseExportCertificate =
  res
    "ExportCertificateResponse"
    "fixture/ExportCertificateResponse.proto"
    defaultService
    (Proxy :: Proxy ExportCertificate)

responseRenewCertificate :: RenewCertificateResponse -> TestTree
responseRenewCertificate =
  res
    "RenewCertificateResponse"
    "fixture/RenewCertificateResponse.proto"
    defaultService
    (Proxy :: Proxy RenewCertificate)

responseGetCertificate :: GetCertificateResponse -> TestTree
responseGetCertificate =
  res
    "GetCertificateResponse"
    "fixture/GetCertificateResponse.proto"
    defaultService
    (Proxy :: Proxy GetCertificate)

responseImportCertificate :: ImportCertificateResponse -> TestTree
responseImportCertificate =
  res
    "ImportCertificateResponse"
    "fixture/ImportCertificateResponse.proto"
    defaultService
    (Proxy :: Proxy ImportCertificate)

responseDescribeCertificate :: DescribeCertificateResponse -> TestTree
responseDescribeCertificate =
  res
    "DescribeCertificateResponse"
    "fixture/DescribeCertificateResponse.proto"
    defaultService
    (Proxy :: Proxy DescribeCertificate)

responsePutAccountConfiguration :: PutAccountConfigurationResponse -> TestTree
responsePutAccountConfiguration =
  res
    "PutAccountConfigurationResponse"
    "fixture/PutAccountConfigurationResponse.proto"
    defaultService
    (Proxy :: Proxy PutAccountConfiguration)

responseResendValidationEmail :: ResendValidationEmailResponse -> TestTree
responseResendValidationEmail =
  res
    "ResendValidationEmailResponse"
    "fixture/ResendValidationEmailResponse.proto"
    defaultService
    (Proxy :: Proxy ResendValidationEmail)

responseListCertificates :: ListCertificatesResponse -> TestTree
responseListCertificates =
  res
    "ListCertificatesResponse"
    "fixture/ListCertificatesResponse.proto"
    defaultService
    (Proxy :: Proxy ListCertificates)

responseRequestCertificate :: RequestCertificateResponse -> TestTree
responseRequestCertificate =
  res
    "RequestCertificateResponse"
    "fixture/RequestCertificateResponse.proto"
    defaultService
    (Proxy :: Proxy RequestCertificate)

responseAddTagsToCertificate :: AddTagsToCertificateResponse -> TestTree
responseAddTagsToCertificate =
  res
    "AddTagsToCertificateResponse"
    "fixture/AddTagsToCertificateResponse.proto"
    defaultService
    (Proxy :: Proxy AddTagsToCertificate)

responseListTagsForCertificate :: ListTagsForCertificateResponse -> TestTree
responseListTagsForCertificate =
  res
    "ListTagsForCertificateResponse"
    "fixture/ListTagsForCertificateResponse.proto"
    defaultService
    (Proxy :: Proxy ListTagsForCertificate)
