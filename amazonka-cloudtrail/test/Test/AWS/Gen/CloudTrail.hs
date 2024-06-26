{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.CloudTrail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.CloudTrail where

import Data.Proxy
import Network.AWS.CloudTrail
import Test.AWS.CloudTrail.Internal
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
--         [ requestListPublicKeys $
--             newListPublicKeys
--
--         , requestRemoveTags $
--             newRemoveTags
--
--         , requestGetEventSelectors $
--             newGetEventSelectors
--
--         , requestDescribeTrails $
--             newDescribeTrails
--
--         , requestCreateTrail $
--             newCreateTrail
--
--         , requestPutEventSelectors $
--             newPutEventSelectors
--
--         , requestAddTags $
--             newAddTags
--
--         , requestGetTrail $
--             newGetTrail
--
--         , requestPutInsightSelectors $
--             newPutInsightSelectors
--
--         , requestGetInsightSelectors $
--             newGetInsightSelectors
--
--         , requestListTrails $
--             newListTrails
--
--         , requestDeleteTrail $
--             newDeleteTrail
--
--         , requestListTags $
--             newListTags
--
--         , requestStopLogging $
--             newStopLogging
--
--         , requestUpdateTrail $
--             newUpdateTrail
--
--         , requestStartLogging $
--             newStartLogging
--
--         , requestGetTrailStatus $
--             newGetTrailStatus
--
--         , requestLookupEvents $
--             newLookupEvents
--
--           ]

--     , testGroup "response"
--         [ responseListPublicKeys $
--             newListPublicKeysResponse
--
--         , responseRemoveTags $
--             newRemoveTagsResponse
--
--         , responseGetEventSelectors $
--             newGetEventSelectorsResponse
--
--         , responseDescribeTrails $
--             newDescribeTrailsResponse
--
--         , responseCreateTrail $
--             newCreateTrailResponse
--
--         , responsePutEventSelectors $
--             newPutEventSelectorsResponse
--
--         , responseAddTags $
--             newAddTagsResponse
--
--         , responseGetTrail $
--             newGetTrailResponse
--
--         , responsePutInsightSelectors $
--             newPutInsightSelectorsResponse
--
--         , responseGetInsightSelectors $
--             newGetInsightSelectorsResponse
--
--         , responseListTrails $
--             newListTrailsResponse
--
--         , responseDeleteTrail $
--             newDeleteTrailResponse
--
--         , responseListTags $
--             newListTagsResponse
--
--         , responseStopLogging $
--             newStopLoggingResponse
--
--         , responseUpdateTrail $
--             newUpdateTrailResponse
--
--         , responseStartLogging $
--             newStartLoggingResponse
--
--         , responseGetTrailStatus $
--             newGetTrailStatusResponse
--
--         , responseLookupEvents $
--             newLookupEventsResponse
--
--           ]
--     ]

-- Requests

requestListPublicKeys :: ListPublicKeys -> TestTree
requestListPublicKeys =
  req
    "ListPublicKeys"
    "fixture/ListPublicKeys.yaml"

requestRemoveTags :: RemoveTags -> TestTree
requestRemoveTags =
  req
    "RemoveTags"
    "fixture/RemoveTags.yaml"

requestGetEventSelectors :: GetEventSelectors -> TestTree
requestGetEventSelectors =
  req
    "GetEventSelectors"
    "fixture/GetEventSelectors.yaml"

requestDescribeTrails :: DescribeTrails -> TestTree
requestDescribeTrails =
  req
    "DescribeTrails"
    "fixture/DescribeTrails.yaml"

requestCreateTrail :: CreateTrail -> TestTree
requestCreateTrail =
  req
    "CreateTrail"
    "fixture/CreateTrail.yaml"

requestPutEventSelectors :: PutEventSelectors -> TestTree
requestPutEventSelectors =
  req
    "PutEventSelectors"
    "fixture/PutEventSelectors.yaml"

requestAddTags :: AddTags -> TestTree
requestAddTags =
  req
    "AddTags"
    "fixture/AddTags.yaml"

requestGetTrail :: GetTrail -> TestTree
requestGetTrail =
  req
    "GetTrail"
    "fixture/GetTrail.yaml"

requestPutInsightSelectors :: PutInsightSelectors -> TestTree
requestPutInsightSelectors =
  req
    "PutInsightSelectors"
    "fixture/PutInsightSelectors.yaml"

requestGetInsightSelectors :: GetInsightSelectors -> TestTree
requestGetInsightSelectors =
  req
    "GetInsightSelectors"
    "fixture/GetInsightSelectors.yaml"

requestListTrails :: ListTrails -> TestTree
requestListTrails =
  req
    "ListTrails"
    "fixture/ListTrails.yaml"

requestDeleteTrail :: DeleteTrail -> TestTree
requestDeleteTrail =
  req
    "DeleteTrail"
    "fixture/DeleteTrail.yaml"

requestListTags :: ListTags -> TestTree
requestListTags =
  req
    "ListTags"
    "fixture/ListTags.yaml"

requestStopLogging :: StopLogging -> TestTree
requestStopLogging =
  req
    "StopLogging"
    "fixture/StopLogging.yaml"

requestUpdateTrail :: UpdateTrail -> TestTree
requestUpdateTrail =
  req
    "UpdateTrail"
    "fixture/UpdateTrail.yaml"

requestStartLogging :: StartLogging -> TestTree
requestStartLogging =
  req
    "StartLogging"
    "fixture/StartLogging.yaml"

requestGetTrailStatus :: GetTrailStatus -> TestTree
requestGetTrailStatus =
  req
    "GetTrailStatus"
    "fixture/GetTrailStatus.yaml"

requestLookupEvents :: LookupEvents -> TestTree
requestLookupEvents =
  req
    "LookupEvents"
    "fixture/LookupEvents.yaml"

-- Responses

responseListPublicKeys :: ListPublicKeysResponse -> TestTree
responseListPublicKeys =
  res
    "ListPublicKeysResponse"
    "fixture/ListPublicKeysResponse.proto"
    defaultService
    (Proxy :: Proxy ListPublicKeys)

responseRemoveTags :: RemoveTagsResponse -> TestTree
responseRemoveTags =
  res
    "RemoveTagsResponse"
    "fixture/RemoveTagsResponse.proto"
    defaultService
    (Proxy :: Proxy RemoveTags)

responseGetEventSelectors :: GetEventSelectorsResponse -> TestTree
responseGetEventSelectors =
  res
    "GetEventSelectorsResponse"
    "fixture/GetEventSelectorsResponse.proto"
    defaultService
    (Proxy :: Proxy GetEventSelectors)

responseDescribeTrails :: DescribeTrailsResponse -> TestTree
responseDescribeTrails =
  res
    "DescribeTrailsResponse"
    "fixture/DescribeTrailsResponse.proto"
    defaultService
    (Proxy :: Proxy DescribeTrails)

responseCreateTrail :: CreateTrailResponse -> TestTree
responseCreateTrail =
  res
    "CreateTrailResponse"
    "fixture/CreateTrailResponse.proto"
    defaultService
    (Proxy :: Proxy CreateTrail)

responsePutEventSelectors :: PutEventSelectorsResponse -> TestTree
responsePutEventSelectors =
  res
    "PutEventSelectorsResponse"
    "fixture/PutEventSelectorsResponse.proto"
    defaultService
    (Proxy :: Proxy PutEventSelectors)

responseAddTags :: AddTagsResponse -> TestTree
responseAddTags =
  res
    "AddTagsResponse"
    "fixture/AddTagsResponse.proto"
    defaultService
    (Proxy :: Proxy AddTags)

responseGetTrail :: GetTrailResponse -> TestTree
responseGetTrail =
  res
    "GetTrailResponse"
    "fixture/GetTrailResponse.proto"
    defaultService
    (Proxy :: Proxy GetTrail)

responsePutInsightSelectors :: PutInsightSelectorsResponse -> TestTree
responsePutInsightSelectors =
  res
    "PutInsightSelectorsResponse"
    "fixture/PutInsightSelectorsResponse.proto"
    defaultService
    (Proxy :: Proxy PutInsightSelectors)

responseGetInsightSelectors :: GetInsightSelectorsResponse -> TestTree
responseGetInsightSelectors =
  res
    "GetInsightSelectorsResponse"
    "fixture/GetInsightSelectorsResponse.proto"
    defaultService
    (Proxy :: Proxy GetInsightSelectors)

responseListTrails :: ListTrailsResponse -> TestTree
responseListTrails =
  res
    "ListTrailsResponse"
    "fixture/ListTrailsResponse.proto"
    defaultService
    (Proxy :: Proxy ListTrails)

responseDeleteTrail :: DeleteTrailResponse -> TestTree
responseDeleteTrail =
  res
    "DeleteTrailResponse"
    "fixture/DeleteTrailResponse.proto"
    defaultService
    (Proxy :: Proxy DeleteTrail)

responseListTags :: ListTagsResponse -> TestTree
responseListTags =
  res
    "ListTagsResponse"
    "fixture/ListTagsResponse.proto"
    defaultService
    (Proxy :: Proxy ListTags)

responseStopLogging :: StopLoggingResponse -> TestTree
responseStopLogging =
  res
    "StopLoggingResponse"
    "fixture/StopLoggingResponse.proto"
    defaultService
    (Proxy :: Proxy StopLogging)

responseUpdateTrail :: UpdateTrailResponse -> TestTree
responseUpdateTrail =
  res
    "UpdateTrailResponse"
    "fixture/UpdateTrailResponse.proto"
    defaultService
    (Proxy :: Proxy UpdateTrail)

responseStartLogging :: StartLoggingResponse -> TestTree
responseStartLogging =
  res
    "StartLoggingResponse"
    "fixture/StartLoggingResponse.proto"
    defaultService
    (Proxy :: Proxy StartLogging)

responseGetTrailStatus :: GetTrailStatusResponse -> TestTree
responseGetTrailStatus =
  res
    "GetTrailStatusResponse"
    "fixture/GetTrailStatusResponse.proto"
    defaultService
    (Proxy :: Proxy GetTrailStatus)

responseLookupEvents :: LookupEventsResponse -> TestTree
responseLookupEvents =
  res
    "LookupEventsResponse"
    "fixture/LookupEventsResponse.proto"
    defaultService
    (Proxy :: Proxy LookupEvents)
