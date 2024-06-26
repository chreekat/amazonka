{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.Route53AutoNaming
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.Route53AutoNaming where

import Data.Proxy
import Network.AWS.Route53AutoNaming
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.AWS.Route53AutoNaming.Internal
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestCreatePublicDnsNamespace $
--             newCreatePublicDnsNamespace
--
--         , requestListOperations $
--             newListOperations
--
--         , requestListServices $
--             newListServices
--
--         , requestCreateService $
--             newCreateService
--
--         , requestCreatePrivateDnsNamespace $
--             newCreatePrivateDnsNamespace
--
--         , requestUntagResource $
--             newUntagResource
--
--         , requestTagResource $
--             newTagResource
--
--         , requestListInstances $
--             newListInstances
--
--         , requestGetNamespace $
--             newGetNamespace
--
--         , requestUpdatePublicDnsNamespace $
--             newUpdatePublicDnsNamespace
--
--         , requestListNamespaces $
--             newListNamespaces
--
--         , requestUpdateHttpNamespace $
--             newUpdateHttpNamespace
--
--         , requestGetInstance $
--             newGetInstance
--
--         , requestCreateHttpNamespace $
--             newCreateHttpNamespace
--
--         , requestGetInstancesHealthStatus $
--             newGetInstancesHealthStatus
--
--         , requestDeleteService $
--             newDeleteService
--
--         , requestUpdateService $
--             newUpdateService
--
--         , requestDiscoverInstances $
--             newDiscoverInstances
--
--         , requestDeregisterInstance $
--             newDeregisterInstance
--
--         , requestUpdatePrivateDnsNamespace $
--             newUpdatePrivateDnsNamespace
--
--         , requestGetOperation $
--             newGetOperation
--
--         , requestUpdateInstanceCustomHealthStatus $
--             newUpdateInstanceCustomHealthStatus
--
--         , requestGetService $
--             newGetService
--
--         , requestRegisterInstance $
--             newRegisterInstance
--
--         , requestListTagsForResource $
--             newListTagsForResource
--
--         , requestDeleteNamespace $
--             newDeleteNamespace
--
--           ]

--     , testGroup "response"
--         [ responseCreatePublicDnsNamespace $
--             newCreatePublicDnsNamespaceResponse
--
--         , responseListOperations $
--             newListOperationsResponse
--
--         , responseListServices $
--             newListServicesResponse
--
--         , responseCreateService $
--             newCreateServiceResponse
--
--         , responseCreatePrivateDnsNamespace $
--             newCreatePrivateDnsNamespaceResponse
--
--         , responseUntagResource $
--             newUntagResourceResponse
--
--         , responseTagResource $
--             newTagResourceResponse
--
--         , responseListInstances $
--             newListInstancesResponse
--
--         , responseGetNamespace $
--             newGetNamespaceResponse
--
--         , responseUpdatePublicDnsNamespace $
--             newUpdatePublicDnsNamespaceResponse
--
--         , responseListNamespaces $
--             newListNamespacesResponse
--
--         , responseUpdateHttpNamespace $
--             newUpdateHttpNamespaceResponse
--
--         , responseGetInstance $
--             newGetInstanceResponse
--
--         , responseCreateHttpNamespace $
--             newCreateHttpNamespaceResponse
--
--         , responseGetInstancesHealthStatus $
--             newGetInstancesHealthStatusResponse
--
--         , responseDeleteService $
--             newDeleteServiceResponse
--
--         , responseUpdateService $
--             newUpdateServiceResponse
--
--         , responseDiscoverInstances $
--             newDiscoverInstancesResponse
--
--         , responseDeregisterInstance $
--             newDeregisterInstanceResponse
--
--         , responseUpdatePrivateDnsNamespace $
--             newUpdatePrivateDnsNamespaceResponse
--
--         , responseGetOperation $
--             newGetOperationResponse
--
--         , responseUpdateInstanceCustomHealthStatus $
--             newUpdateInstanceCustomHealthStatusResponse
--
--         , responseGetService $
--             newGetServiceResponse
--
--         , responseRegisterInstance $
--             newRegisterInstanceResponse
--
--         , responseListTagsForResource $
--             newListTagsForResourceResponse
--
--         , responseDeleteNamespace $
--             newDeleteNamespaceResponse
--
--           ]
--     ]

-- Requests

requestCreatePublicDnsNamespace :: CreatePublicDnsNamespace -> TestTree
requestCreatePublicDnsNamespace =
  req
    "CreatePublicDnsNamespace"
    "fixture/CreatePublicDnsNamespace.yaml"

requestListOperations :: ListOperations -> TestTree
requestListOperations =
  req
    "ListOperations"
    "fixture/ListOperations.yaml"

requestListServices :: ListServices -> TestTree
requestListServices =
  req
    "ListServices"
    "fixture/ListServices.yaml"

requestCreateService :: CreateService -> TestTree
requestCreateService =
  req
    "CreateService"
    "fixture/CreateService.yaml"

requestCreatePrivateDnsNamespace :: CreatePrivateDnsNamespace -> TestTree
requestCreatePrivateDnsNamespace =
  req
    "CreatePrivateDnsNamespace"
    "fixture/CreatePrivateDnsNamespace.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestListInstances :: ListInstances -> TestTree
requestListInstances =
  req
    "ListInstances"
    "fixture/ListInstances.yaml"

requestGetNamespace :: GetNamespace -> TestTree
requestGetNamespace =
  req
    "GetNamespace"
    "fixture/GetNamespace.yaml"

requestUpdatePublicDnsNamespace :: UpdatePublicDnsNamespace -> TestTree
requestUpdatePublicDnsNamespace =
  req
    "UpdatePublicDnsNamespace"
    "fixture/UpdatePublicDnsNamespace.yaml"

requestListNamespaces :: ListNamespaces -> TestTree
requestListNamespaces =
  req
    "ListNamespaces"
    "fixture/ListNamespaces.yaml"

requestUpdateHttpNamespace :: UpdateHttpNamespace -> TestTree
requestUpdateHttpNamespace =
  req
    "UpdateHttpNamespace"
    "fixture/UpdateHttpNamespace.yaml"

requestGetInstance :: GetInstance -> TestTree
requestGetInstance =
  req
    "GetInstance"
    "fixture/GetInstance.yaml"

requestCreateHttpNamespace :: CreateHttpNamespace -> TestTree
requestCreateHttpNamespace =
  req
    "CreateHttpNamespace"
    "fixture/CreateHttpNamespace.yaml"

requestGetInstancesHealthStatus :: GetInstancesHealthStatus -> TestTree
requestGetInstancesHealthStatus =
  req
    "GetInstancesHealthStatus"
    "fixture/GetInstancesHealthStatus.yaml"

requestDeleteService :: DeleteService -> TestTree
requestDeleteService =
  req
    "DeleteService"
    "fixture/DeleteService.yaml"

requestUpdateService :: UpdateService -> TestTree
requestUpdateService =
  req
    "UpdateService"
    "fixture/UpdateService.yaml"

requestDiscoverInstances :: DiscoverInstances -> TestTree
requestDiscoverInstances =
  req
    "DiscoverInstances"
    "fixture/DiscoverInstances.yaml"

requestDeregisterInstance :: DeregisterInstance -> TestTree
requestDeregisterInstance =
  req
    "DeregisterInstance"
    "fixture/DeregisterInstance.yaml"

requestUpdatePrivateDnsNamespace :: UpdatePrivateDnsNamespace -> TestTree
requestUpdatePrivateDnsNamespace =
  req
    "UpdatePrivateDnsNamespace"
    "fixture/UpdatePrivateDnsNamespace.yaml"

requestGetOperation :: GetOperation -> TestTree
requestGetOperation =
  req
    "GetOperation"
    "fixture/GetOperation.yaml"

requestUpdateInstanceCustomHealthStatus :: UpdateInstanceCustomHealthStatus -> TestTree
requestUpdateInstanceCustomHealthStatus =
  req
    "UpdateInstanceCustomHealthStatus"
    "fixture/UpdateInstanceCustomHealthStatus.yaml"

requestGetService :: GetService -> TestTree
requestGetService =
  req
    "GetService"
    "fixture/GetService.yaml"

requestRegisterInstance :: RegisterInstance -> TestTree
requestRegisterInstance =
  req
    "RegisterInstance"
    "fixture/RegisterInstance.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestDeleteNamespace :: DeleteNamespace -> TestTree
requestDeleteNamespace =
  req
    "DeleteNamespace"
    "fixture/DeleteNamespace.yaml"

-- Responses

responseCreatePublicDnsNamespace :: CreatePublicDnsNamespaceResponse -> TestTree
responseCreatePublicDnsNamespace =
  res
    "CreatePublicDnsNamespaceResponse"
    "fixture/CreatePublicDnsNamespaceResponse.proto"
    defaultService
    (Proxy :: Proxy CreatePublicDnsNamespace)

responseListOperations :: ListOperationsResponse -> TestTree
responseListOperations =
  res
    "ListOperationsResponse"
    "fixture/ListOperationsResponse.proto"
    defaultService
    (Proxy :: Proxy ListOperations)

responseListServices :: ListServicesResponse -> TestTree
responseListServices =
  res
    "ListServicesResponse"
    "fixture/ListServicesResponse.proto"
    defaultService
    (Proxy :: Proxy ListServices)

responseCreateService :: CreateServiceResponse -> TestTree
responseCreateService =
  res
    "CreateServiceResponse"
    "fixture/CreateServiceResponse.proto"
    defaultService
    (Proxy :: Proxy CreateService)

responseCreatePrivateDnsNamespace :: CreatePrivateDnsNamespaceResponse -> TestTree
responseCreatePrivateDnsNamespace =
  res
    "CreatePrivateDnsNamespaceResponse"
    "fixture/CreatePrivateDnsNamespaceResponse.proto"
    defaultService
    (Proxy :: Proxy CreatePrivateDnsNamespace)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    defaultService
    (Proxy :: Proxy UntagResource)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    defaultService
    (Proxy :: Proxy TagResource)

responseListInstances :: ListInstancesResponse -> TestTree
responseListInstances =
  res
    "ListInstancesResponse"
    "fixture/ListInstancesResponse.proto"
    defaultService
    (Proxy :: Proxy ListInstances)

responseGetNamespace :: GetNamespaceResponse -> TestTree
responseGetNamespace =
  res
    "GetNamespaceResponse"
    "fixture/GetNamespaceResponse.proto"
    defaultService
    (Proxy :: Proxy GetNamespace)

responseUpdatePublicDnsNamespace :: UpdatePublicDnsNamespaceResponse -> TestTree
responseUpdatePublicDnsNamespace =
  res
    "UpdatePublicDnsNamespaceResponse"
    "fixture/UpdatePublicDnsNamespaceResponse.proto"
    defaultService
    (Proxy :: Proxy UpdatePublicDnsNamespace)

responseListNamespaces :: ListNamespacesResponse -> TestTree
responseListNamespaces =
  res
    "ListNamespacesResponse"
    "fixture/ListNamespacesResponse.proto"
    defaultService
    (Proxy :: Proxy ListNamespaces)

responseUpdateHttpNamespace :: UpdateHttpNamespaceResponse -> TestTree
responseUpdateHttpNamespace =
  res
    "UpdateHttpNamespaceResponse"
    "fixture/UpdateHttpNamespaceResponse.proto"
    defaultService
    (Proxy :: Proxy UpdateHttpNamespace)

responseGetInstance :: GetInstanceResponse -> TestTree
responseGetInstance =
  res
    "GetInstanceResponse"
    "fixture/GetInstanceResponse.proto"
    defaultService
    (Proxy :: Proxy GetInstance)

responseCreateHttpNamespace :: CreateHttpNamespaceResponse -> TestTree
responseCreateHttpNamespace =
  res
    "CreateHttpNamespaceResponse"
    "fixture/CreateHttpNamespaceResponse.proto"
    defaultService
    (Proxy :: Proxy CreateHttpNamespace)

responseGetInstancesHealthStatus :: GetInstancesHealthStatusResponse -> TestTree
responseGetInstancesHealthStatus =
  res
    "GetInstancesHealthStatusResponse"
    "fixture/GetInstancesHealthStatusResponse.proto"
    defaultService
    (Proxy :: Proxy GetInstancesHealthStatus)

responseDeleteService :: DeleteServiceResponse -> TestTree
responseDeleteService =
  res
    "DeleteServiceResponse"
    "fixture/DeleteServiceResponse.proto"
    defaultService
    (Proxy :: Proxy DeleteService)

responseUpdateService :: UpdateServiceResponse -> TestTree
responseUpdateService =
  res
    "UpdateServiceResponse"
    "fixture/UpdateServiceResponse.proto"
    defaultService
    (Proxy :: Proxy UpdateService)

responseDiscoverInstances :: DiscoverInstancesResponse -> TestTree
responseDiscoverInstances =
  res
    "DiscoverInstancesResponse"
    "fixture/DiscoverInstancesResponse.proto"
    defaultService
    (Proxy :: Proxy DiscoverInstances)

responseDeregisterInstance :: DeregisterInstanceResponse -> TestTree
responseDeregisterInstance =
  res
    "DeregisterInstanceResponse"
    "fixture/DeregisterInstanceResponse.proto"
    defaultService
    (Proxy :: Proxy DeregisterInstance)

responseUpdatePrivateDnsNamespace :: UpdatePrivateDnsNamespaceResponse -> TestTree
responseUpdatePrivateDnsNamespace =
  res
    "UpdatePrivateDnsNamespaceResponse"
    "fixture/UpdatePrivateDnsNamespaceResponse.proto"
    defaultService
    (Proxy :: Proxy UpdatePrivateDnsNamespace)

responseGetOperation :: GetOperationResponse -> TestTree
responseGetOperation =
  res
    "GetOperationResponse"
    "fixture/GetOperationResponse.proto"
    defaultService
    (Proxy :: Proxy GetOperation)

responseUpdateInstanceCustomHealthStatus :: UpdateInstanceCustomHealthStatusResponse -> TestTree
responseUpdateInstanceCustomHealthStatus =
  res
    "UpdateInstanceCustomHealthStatusResponse"
    "fixture/UpdateInstanceCustomHealthStatusResponse.proto"
    defaultService
    (Proxy :: Proxy UpdateInstanceCustomHealthStatus)

responseGetService :: GetServiceResponse -> TestTree
responseGetService =
  res
    "GetServiceResponse"
    "fixture/GetServiceResponse.proto"
    defaultService
    (Proxy :: Proxy GetService)

responseRegisterInstance :: RegisterInstanceResponse -> TestTree
responseRegisterInstance =
  res
    "RegisterInstanceResponse"
    "fixture/RegisterInstanceResponse.proto"
    defaultService
    (Proxy :: Proxy RegisterInstance)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    defaultService
    (Proxy :: Proxy ListTagsForResource)

responseDeleteNamespace :: DeleteNamespaceResponse -> TestTree
responseDeleteNamespace =
  res
    "DeleteNamespaceResponse"
    "fixture/DeleteNamespaceResponse.proto"
    defaultService
    (Proxy :: Proxy DeleteNamespace)
