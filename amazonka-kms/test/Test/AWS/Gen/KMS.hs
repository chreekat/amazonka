{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.KMS
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.KMS where

import Data.Proxy
import Network.AWS.KMS
import Test.AWS.Fixture
import Test.AWS.KMS.Internal
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestVerify $
--             newVerify
--
--         , requestDisableKeyRotation $
--             newDisableKeyRotation
--
--         , requestListGrants $
--             newListGrants
--
--         , requestDeleteAlias $
--             newDeleteAlias
--
--         , requestCreateCustomKeyStore $
--             newCreateCustomKeyStore
--
--         , requestUpdateAlias $
--             newUpdateAlias
--
--         , requestGenerateDataKey $
--             newGenerateDataKey
--
--         , requestDeleteImportedKeyMaterial $
--             newDeleteImportedKeyMaterial
--
--         , requestImportKeyMaterial $
--             newImportKeyMaterial
--
--         , requestGetKeyRotationStatus $
--             newGetKeyRotationStatus
--
--         , requestListResourceTags $
--             newListResourceTags
--
--         , requestReplicateKey $
--             newReplicateKey
--
--         , requestPutKeyPolicy $
--             newPutKeyPolicy
--
--         , requestDisableKey $
--             newDisableKey
--
--         , requestListKeyPolicies $
--             newListKeyPolicies
--
--         , requestUntagResource $
--             newUntagResource
--
--         , requestDisconnectCustomKeyStore $
--             newDisconnectCustomKeyStore
--
--         , requestTagResource $
--             newTagResource
--
--         , requestGetPublicKey $
--             newGetPublicKey
--
--         , requestGenerateRandom $
--             newGenerateRandom
--
--         , requestReEncrypt $
--             newReEncrypt
--
--         , requestListRetirableGrants $
--             newListRetirableGrants
--
--         , requestConnectCustomKeyStore $
--             newConnectCustomKeyStore
--
--         , requestUpdatePrimaryRegion $
--             newUpdatePrimaryRegion
--
--         , requestDescribeKey $
--             newDescribeKey
--
--         , requestGetParametersForImport $
--             newGetParametersForImport
--
--         , requestUpdateCustomKeyStore $
--             newUpdateCustomKeyStore
--
--         , requestDeleteCustomKeyStore $
--             newDeleteCustomKeyStore
--
--         , requestEncrypt $
--             newEncrypt
--
--         , requestGenerateDataKeyWithoutPlaintext $
--             newGenerateDataKeyWithoutPlaintext
--
--         , requestGetKeyPolicy $
--             newGetKeyPolicy
--
--         , requestEnableKey $
--             newEnableKey
--
--         , requestGenerateDataKeyPair $
--             newGenerateDataKeyPair
--
--         , requestListKeys $
--             newListKeys
--
--         , requestRevokeGrant $
--             newRevokeGrant
--
--         , requestScheduleKeyDeletion $
--             newScheduleKeyDeletion
--
--         , requestRetireGrant $
--             newRetireGrant
--
--         , requestCreateKey $
--             newCreateKey
--
--         , requestSign $
--             newSign
--
--         , requestUpdateKeyDescription $
--             newUpdateKeyDescription
--
--         , requestGenerateDataKeyPairWithoutPlaintext $
--             newGenerateDataKeyPairWithoutPlaintext
--
--         , requestCancelKeyDeletion $
--             newCancelKeyDeletion
--
--         , requestDecrypt $
--             newDecrypt
--
--         , requestDescribeCustomKeyStores $
--             newDescribeCustomKeyStores
--
--         , requestCreateGrant $
--             newCreateGrant
--
--         , requestEnableKeyRotation $
--             newEnableKeyRotation
--
--         , requestListAliases $
--             newListAliases
--
--         , requestCreateAlias $
--             newCreateAlias
--
--           ]

--     , testGroup "response"
--         [ responseVerify $
--             newVerifyResponse
--
--         , responseDisableKeyRotation $
--             newDisableKeyRotationResponse
--
--         , responseListGrants $
--             newListGrantsResponse
--
--         , responseDeleteAlias $
--             newDeleteAliasResponse
--
--         , responseCreateCustomKeyStore $
--             newCreateCustomKeyStoreResponse
--
--         , responseUpdateAlias $
--             newUpdateAliasResponse
--
--         , responseGenerateDataKey $
--             newGenerateDataKeyResponse
--
--         , responseDeleteImportedKeyMaterial $
--             newDeleteImportedKeyMaterialResponse
--
--         , responseImportKeyMaterial $
--             newImportKeyMaterialResponse
--
--         , responseGetKeyRotationStatus $
--             newGetKeyRotationStatusResponse
--
--         , responseListResourceTags $
--             newListResourceTagsResponse
--
--         , responseReplicateKey $
--             newReplicateKeyResponse
--
--         , responsePutKeyPolicy $
--             newPutKeyPolicyResponse
--
--         , responseDisableKey $
--             newDisableKeyResponse
--
--         , responseListKeyPolicies $
--             newListKeyPoliciesResponse
--
--         , responseUntagResource $
--             newUntagResourceResponse
--
--         , responseDisconnectCustomKeyStore $
--             newDisconnectCustomKeyStoreResponse
--
--         , responseTagResource $
--             newTagResourceResponse
--
--         , responseGetPublicKey $
--             newGetPublicKeyResponse
--
--         , responseGenerateRandom $
--             newGenerateRandomResponse
--
--         , responseReEncrypt $
--             newReEncryptResponse
--
--         , responseListRetirableGrants $
--             newListGrantsResponse
--
--         , responseConnectCustomKeyStore $
--             newConnectCustomKeyStoreResponse
--
--         , responseUpdatePrimaryRegion $
--             newUpdatePrimaryRegionResponse
--
--         , responseDescribeKey $
--             newDescribeKeyResponse
--
--         , responseGetParametersForImport $
--             newGetParametersForImportResponse
--
--         , responseUpdateCustomKeyStore $
--             newUpdateCustomKeyStoreResponse
--
--         , responseDeleteCustomKeyStore $
--             newDeleteCustomKeyStoreResponse
--
--         , responseEncrypt $
--             newEncryptResponse
--
--         , responseGenerateDataKeyWithoutPlaintext $
--             newGenerateDataKeyWithoutPlaintextResponse
--
--         , responseGetKeyPolicy $
--             newGetKeyPolicyResponse
--
--         , responseEnableKey $
--             newEnableKeyResponse
--
--         , responseGenerateDataKeyPair $
--             newGenerateDataKeyPairResponse
--
--         , responseListKeys $
--             newListKeysResponse
--
--         , responseRevokeGrant $
--             newRevokeGrantResponse
--
--         , responseScheduleKeyDeletion $
--             newScheduleKeyDeletionResponse
--
--         , responseRetireGrant $
--             newRetireGrantResponse
--
--         , responseCreateKey $
--             newCreateKeyResponse
--
--         , responseSign $
--             newSignResponse
--
--         , responseUpdateKeyDescription $
--             newUpdateKeyDescriptionResponse
--
--         , responseGenerateDataKeyPairWithoutPlaintext $
--             newGenerateDataKeyPairWithoutPlaintextResponse
--
--         , responseCancelKeyDeletion $
--             newCancelKeyDeletionResponse
--
--         , responseDecrypt $
--             newDecryptResponse
--
--         , responseDescribeCustomKeyStores $
--             newDescribeCustomKeyStoresResponse
--
--         , responseCreateGrant $
--             newCreateGrantResponse
--
--         , responseEnableKeyRotation $
--             newEnableKeyRotationResponse
--
--         , responseListAliases $
--             newListAliasesResponse
--
--         , responseCreateAlias $
--             newCreateAliasResponse
--
--           ]
--     ]

-- Requests

requestVerify :: Verify -> TestTree
requestVerify =
  req
    "Verify"
    "fixture/Verify.yaml"

requestDisableKeyRotation :: DisableKeyRotation -> TestTree
requestDisableKeyRotation =
  req
    "DisableKeyRotation"
    "fixture/DisableKeyRotation.yaml"

requestListGrants :: ListGrants -> TestTree
requestListGrants =
  req
    "ListGrants"
    "fixture/ListGrants.yaml"

requestDeleteAlias :: DeleteAlias -> TestTree
requestDeleteAlias =
  req
    "DeleteAlias"
    "fixture/DeleteAlias.yaml"

requestCreateCustomKeyStore :: CreateCustomKeyStore -> TestTree
requestCreateCustomKeyStore =
  req
    "CreateCustomKeyStore"
    "fixture/CreateCustomKeyStore.yaml"

requestUpdateAlias :: UpdateAlias -> TestTree
requestUpdateAlias =
  req
    "UpdateAlias"
    "fixture/UpdateAlias.yaml"

requestGenerateDataKey :: GenerateDataKey -> TestTree
requestGenerateDataKey =
  req
    "GenerateDataKey"
    "fixture/GenerateDataKey.yaml"

requestDeleteImportedKeyMaterial :: DeleteImportedKeyMaterial -> TestTree
requestDeleteImportedKeyMaterial =
  req
    "DeleteImportedKeyMaterial"
    "fixture/DeleteImportedKeyMaterial.yaml"

requestImportKeyMaterial :: ImportKeyMaterial -> TestTree
requestImportKeyMaterial =
  req
    "ImportKeyMaterial"
    "fixture/ImportKeyMaterial.yaml"

requestGetKeyRotationStatus :: GetKeyRotationStatus -> TestTree
requestGetKeyRotationStatus =
  req
    "GetKeyRotationStatus"
    "fixture/GetKeyRotationStatus.yaml"

requestListResourceTags :: ListResourceTags -> TestTree
requestListResourceTags =
  req
    "ListResourceTags"
    "fixture/ListResourceTags.yaml"

requestReplicateKey :: ReplicateKey -> TestTree
requestReplicateKey =
  req
    "ReplicateKey"
    "fixture/ReplicateKey.yaml"

requestPutKeyPolicy :: PutKeyPolicy -> TestTree
requestPutKeyPolicy =
  req
    "PutKeyPolicy"
    "fixture/PutKeyPolicy.yaml"

requestDisableKey :: DisableKey -> TestTree
requestDisableKey =
  req
    "DisableKey"
    "fixture/DisableKey.yaml"

requestListKeyPolicies :: ListKeyPolicies -> TestTree
requestListKeyPolicies =
  req
    "ListKeyPolicies"
    "fixture/ListKeyPolicies.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestDisconnectCustomKeyStore :: DisconnectCustomKeyStore -> TestTree
requestDisconnectCustomKeyStore =
  req
    "DisconnectCustomKeyStore"
    "fixture/DisconnectCustomKeyStore.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestGetPublicKey :: GetPublicKey -> TestTree
requestGetPublicKey =
  req
    "GetPublicKey"
    "fixture/GetPublicKey.yaml"

requestGenerateRandom :: GenerateRandom -> TestTree
requestGenerateRandom =
  req
    "GenerateRandom"
    "fixture/GenerateRandom.yaml"

requestReEncrypt :: ReEncrypt -> TestTree
requestReEncrypt =
  req
    "ReEncrypt"
    "fixture/ReEncrypt.yaml"

requestListRetirableGrants :: ListRetirableGrants -> TestTree
requestListRetirableGrants =
  req
    "ListRetirableGrants"
    "fixture/ListRetirableGrants.yaml"

requestConnectCustomKeyStore :: ConnectCustomKeyStore -> TestTree
requestConnectCustomKeyStore =
  req
    "ConnectCustomKeyStore"
    "fixture/ConnectCustomKeyStore.yaml"

requestUpdatePrimaryRegion :: UpdatePrimaryRegion -> TestTree
requestUpdatePrimaryRegion =
  req
    "UpdatePrimaryRegion"
    "fixture/UpdatePrimaryRegion.yaml"

requestDescribeKey :: DescribeKey -> TestTree
requestDescribeKey =
  req
    "DescribeKey"
    "fixture/DescribeKey.yaml"

requestGetParametersForImport :: GetParametersForImport -> TestTree
requestGetParametersForImport =
  req
    "GetParametersForImport"
    "fixture/GetParametersForImport.yaml"

requestUpdateCustomKeyStore :: UpdateCustomKeyStore -> TestTree
requestUpdateCustomKeyStore =
  req
    "UpdateCustomKeyStore"
    "fixture/UpdateCustomKeyStore.yaml"

requestDeleteCustomKeyStore :: DeleteCustomKeyStore -> TestTree
requestDeleteCustomKeyStore =
  req
    "DeleteCustomKeyStore"
    "fixture/DeleteCustomKeyStore.yaml"

requestEncrypt :: Encrypt -> TestTree
requestEncrypt =
  req
    "Encrypt"
    "fixture/Encrypt.yaml"

requestGenerateDataKeyWithoutPlaintext :: GenerateDataKeyWithoutPlaintext -> TestTree
requestGenerateDataKeyWithoutPlaintext =
  req
    "GenerateDataKeyWithoutPlaintext"
    "fixture/GenerateDataKeyWithoutPlaintext.yaml"

requestGetKeyPolicy :: GetKeyPolicy -> TestTree
requestGetKeyPolicy =
  req
    "GetKeyPolicy"
    "fixture/GetKeyPolicy.yaml"

requestEnableKey :: EnableKey -> TestTree
requestEnableKey =
  req
    "EnableKey"
    "fixture/EnableKey.yaml"

requestGenerateDataKeyPair :: GenerateDataKeyPair -> TestTree
requestGenerateDataKeyPair =
  req
    "GenerateDataKeyPair"
    "fixture/GenerateDataKeyPair.yaml"

requestListKeys :: ListKeys -> TestTree
requestListKeys =
  req
    "ListKeys"
    "fixture/ListKeys.yaml"

requestRevokeGrant :: RevokeGrant -> TestTree
requestRevokeGrant =
  req
    "RevokeGrant"
    "fixture/RevokeGrant.yaml"

requestScheduleKeyDeletion :: ScheduleKeyDeletion -> TestTree
requestScheduleKeyDeletion =
  req
    "ScheduleKeyDeletion"
    "fixture/ScheduleKeyDeletion.yaml"

requestRetireGrant :: RetireGrant -> TestTree
requestRetireGrant =
  req
    "RetireGrant"
    "fixture/RetireGrant.yaml"

requestCreateKey :: CreateKey -> TestTree
requestCreateKey =
  req
    "CreateKey"
    "fixture/CreateKey.yaml"

requestSign :: Sign -> TestTree
requestSign =
  req
    "Sign"
    "fixture/Sign.yaml"

requestUpdateKeyDescription :: UpdateKeyDescription -> TestTree
requestUpdateKeyDescription =
  req
    "UpdateKeyDescription"
    "fixture/UpdateKeyDescription.yaml"

requestGenerateDataKeyPairWithoutPlaintext :: GenerateDataKeyPairWithoutPlaintext -> TestTree
requestGenerateDataKeyPairWithoutPlaintext =
  req
    "GenerateDataKeyPairWithoutPlaintext"
    "fixture/GenerateDataKeyPairWithoutPlaintext.yaml"

requestCancelKeyDeletion :: CancelKeyDeletion -> TestTree
requestCancelKeyDeletion =
  req
    "CancelKeyDeletion"
    "fixture/CancelKeyDeletion.yaml"

requestDecrypt :: Decrypt -> TestTree
requestDecrypt =
  req
    "Decrypt"
    "fixture/Decrypt.yaml"

requestDescribeCustomKeyStores :: DescribeCustomKeyStores -> TestTree
requestDescribeCustomKeyStores =
  req
    "DescribeCustomKeyStores"
    "fixture/DescribeCustomKeyStores.yaml"

requestCreateGrant :: CreateGrant -> TestTree
requestCreateGrant =
  req
    "CreateGrant"
    "fixture/CreateGrant.yaml"

requestEnableKeyRotation :: EnableKeyRotation -> TestTree
requestEnableKeyRotation =
  req
    "EnableKeyRotation"
    "fixture/EnableKeyRotation.yaml"

requestListAliases :: ListAliases -> TestTree
requestListAliases =
  req
    "ListAliases"
    "fixture/ListAliases.yaml"

requestCreateAlias :: CreateAlias -> TestTree
requestCreateAlias =
  req
    "CreateAlias"
    "fixture/CreateAlias.yaml"

-- Responses

responseVerify :: VerifyResponse -> TestTree
responseVerify =
  res
    "VerifyResponse"
    "fixture/VerifyResponse.proto"
    defaultService
    (Proxy :: Proxy Verify)

responseDisableKeyRotation :: DisableKeyRotationResponse -> TestTree
responseDisableKeyRotation =
  res
    "DisableKeyRotationResponse"
    "fixture/DisableKeyRotationResponse.proto"
    defaultService
    (Proxy :: Proxy DisableKeyRotation)

responseListGrants :: ListGrantsResponse -> TestTree
responseListGrants =
  res
    "ListGrantsResponse"
    "fixture/ListGrantsResponse.proto"
    defaultService
    (Proxy :: Proxy ListGrants)

responseDeleteAlias :: DeleteAliasResponse -> TestTree
responseDeleteAlias =
  res
    "DeleteAliasResponse"
    "fixture/DeleteAliasResponse.proto"
    defaultService
    (Proxy :: Proxy DeleteAlias)

responseCreateCustomKeyStore :: CreateCustomKeyStoreResponse -> TestTree
responseCreateCustomKeyStore =
  res
    "CreateCustomKeyStoreResponse"
    "fixture/CreateCustomKeyStoreResponse.proto"
    defaultService
    (Proxy :: Proxy CreateCustomKeyStore)

responseUpdateAlias :: UpdateAliasResponse -> TestTree
responseUpdateAlias =
  res
    "UpdateAliasResponse"
    "fixture/UpdateAliasResponse.proto"
    defaultService
    (Proxy :: Proxy UpdateAlias)

responseGenerateDataKey :: GenerateDataKeyResponse -> TestTree
responseGenerateDataKey =
  res
    "GenerateDataKeyResponse"
    "fixture/GenerateDataKeyResponse.proto"
    defaultService
    (Proxy :: Proxy GenerateDataKey)

responseDeleteImportedKeyMaterial :: DeleteImportedKeyMaterialResponse -> TestTree
responseDeleteImportedKeyMaterial =
  res
    "DeleteImportedKeyMaterialResponse"
    "fixture/DeleteImportedKeyMaterialResponse.proto"
    defaultService
    (Proxy :: Proxy DeleteImportedKeyMaterial)

responseImportKeyMaterial :: ImportKeyMaterialResponse -> TestTree
responseImportKeyMaterial =
  res
    "ImportKeyMaterialResponse"
    "fixture/ImportKeyMaterialResponse.proto"
    defaultService
    (Proxy :: Proxy ImportKeyMaterial)

responseGetKeyRotationStatus :: GetKeyRotationStatusResponse -> TestTree
responseGetKeyRotationStatus =
  res
    "GetKeyRotationStatusResponse"
    "fixture/GetKeyRotationStatusResponse.proto"
    defaultService
    (Proxy :: Proxy GetKeyRotationStatus)

responseListResourceTags :: ListResourceTagsResponse -> TestTree
responseListResourceTags =
  res
    "ListResourceTagsResponse"
    "fixture/ListResourceTagsResponse.proto"
    defaultService
    (Proxy :: Proxy ListResourceTags)

responseReplicateKey :: ReplicateKeyResponse -> TestTree
responseReplicateKey =
  res
    "ReplicateKeyResponse"
    "fixture/ReplicateKeyResponse.proto"
    defaultService
    (Proxy :: Proxy ReplicateKey)

responsePutKeyPolicy :: PutKeyPolicyResponse -> TestTree
responsePutKeyPolicy =
  res
    "PutKeyPolicyResponse"
    "fixture/PutKeyPolicyResponse.proto"
    defaultService
    (Proxy :: Proxy PutKeyPolicy)

responseDisableKey :: DisableKeyResponse -> TestTree
responseDisableKey =
  res
    "DisableKeyResponse"
    "fixture/DisableKeyResponse.proto"
    defaultService
    (Proxy :: Proxy DisableKey)

responseListKeyPolicies :: ListKeyPoliciesResponse -> TestTree
responseListKeyPolicies =
  res
    "ListKeyPoliciesResponse"
    "fixture/ListKeyPoliciesResponse.proto"
    defaultService
    (Proxy :: Proxy ListKeyPolicies)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    defaultService
    (Proxy :: Proxy UntagResource)

responseDisconnectCustomKeyStore :: DisconnectCustomKeyStoreResponse -> TestTree
responseDisconnectCustomKeyStore =
  res
    "DisconnectCustomKeyStoreResponse"
    "fixture/DisconnectCustomKeyStoreResponse.proto"
    defaultService
    (Proxy :: Proxy DisconnectCustomKeyStore)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    defaultService
    (Proxy :: Proxy TagResource)

responseGetPublicKey :: GetPublicKeyResponse -> TestTree
responseGetPublicKey =
  res
    "GetPublicKeyResponse"
    "fixture/GetPublicKeyResponse.proto"
    defaultService
    (Proxy :: Proxy GetPublicKey)

responseGenerateRandom :: GenerateRandomResponse -> TestTree
responseGenerateRandom =
  res
    "GenerateRandomResponse"
    "fixture/GenerateRandomResponse.proto"
    defaultService
    (Proxy :: Proxy GenerateRandom)

responseReEncrypt :: ReEncryptResponse -> TestTree
responseReEncrypt =
  res
    "ReEncryptResponse"
    "fixture/ReEncryptResponse.proto"
    defaultService
    (Proxy :: Proxy ReEncrypt)

responseListRetirableGrants :: ListGrantsResponse -> TestTree
responseListRetirableGrants =
  res
    "ListRetirableGrantsResponse"
    "fixture/ListRetirableGrantsResponse.proto"
    defaultService
    (Proxy :: Proxy ListRetirableGrants)

responseConnectCustomKeyStore :: ConnectCustomKeyStoreResponse -> TestTree
responseConnectCustomKeyStore =
  res
    "ConnectCustomKeyStoreResponse"
    "fixture/ConnectCustomKeyStoreResponse.proto"
    defaultService
    (Proxy :: Proxy ConnectCustomKeyStore)

responseUpdatePrimaryRegion :: UpdatePrimaryRegionResponse -> TestTree
responseUpdatePrimaryRegion =
  res
    "UpdatePrimaryRegionResponse"
    "fixture/UpdatePrimaryRegionResponse.proto"
    defaultService
    (Proxy :: Proxy UpdatePrimaryRegion)

responseDescribeKey :: DescribeKeyResponse -> TestTree
responseDescribeKey =
  res
    "DescribeKeyResponse"
    "fixture/DescribeKeyResponse.proto"
    defaultService
    (Proxy :: Proxy DescribeKey)

responseGetParametersForImport :: GetParametersForImportResponse -> TestTree
responseGetParametersForImport =
  res
    "GetParametersForImportResponse"
    "fixture/GetParametersForImportResponse.proto"
    defaultService
    (Proxy :: Proxy GetParametersForImport)

responseUpdateCustomKeyStore :: UpdateCustomKeyStoreResponse -> TestTree
responseUpdateCustomKeyStore =
  res
    "UpdateCustomKeyStoreResponse"
    "fixture/UpdateCustomKeyStoreResponse.proto"
    defaultService
    (Proxy :: Proxy UpdateCustomKeyStore)

responseDeleteCustomKeyStore :: DeleteCustomKeyStoreResponse -> TestTree
responseDeleteCustomKeyStore =
  res
    "DeleteCustomKeyStoreResponse"
    "fixture/DeleteCustomKeyStoreResponse.proto"
    defaultService
    (Proxy :: Proxy DeleteCustomKeyStore)

responseEncrypt :: EncryptResponse -> TestTree
responseEncrypt =
  res
    "EncryptResponse"
    "fixture/EncryptResponse.proto"
    defaultService
    (Proxy :: Proxy Encrypt)

responseGenerateDataKeyWithoutPlaintext :: GenerateDataKeyWithoutPlaintextResponse -> TestTree
responseGenerateDataKeyWithoutPlaintext =
  res
    "GenerateDataKeyWithoutPlaintextResponse"
    "fixture/GenerateDataKeyWithoutPlaintextResponse.proto"
    defaultService
    (Proxy :: Proxy GenerateDataKeyWithoutPlaintext)

responseGetKeyPolicy :: GetKeyPolicyResponse -> TestTree
responseGetKeyPolicy =
  res
    "GetKeyPolicyResponse"
    "fixture/GetKeyPolicyResponse.proto"
    defaultService
    (Proxy :: Proxy GetKeyPolicy)

responseEnableKey :: EnableKeyResponse -> TestTree
responseEnableKey =
  res
    "EnableKeyResponse"
    "fixture/EnableKeyResponse.proto"
    defaultService
    (Proxy :: Proxy EnableKey)

responseGenerateDataKeyPair :: GenerateDataKeyPairResponse -> TestTree
responseGenerateDataKeyPair =
  res
    "GenerateDataKeyPairResponse"
    "fixture/GenerateDataKeyPairResponse.proto"
    defaultService
    (Proxy :: Proxy GenerateDataKeyPair)

responseListKeys :: ListKeysResponse -> TestTree
responseListKeys =
  res
    "ListKeysResponse"
    "fixture/ListKeysResponse.proto"
    defaultService
    (Proxy :: Proxy ListKeys)

responseRevokeGrant :: RevokeGrantResponse -> TestTree
responseRevokeGrant =
  res
    "RevokeGrantResponse"
    "fixture/RevokeGrantResponse.proto"
    defaultService
    (Proxy :: Proxy RevokeGrant)

responseScheduleKeyDeletion :: ScheduleKeyDeletionResponse -> TestTree
responseScheduleKeyDeletion =
  res
    "ScheduleKeyDeletionResponse"
    "fixture/ScheduleKeyDeletionResponse.proto"
    defaultService
    (Proxy :: Proxy ScheduleKeyDeletion)

responseRetireGrant :: RetireGrantResponse -> TestTree
responseRetireGrant =
  res
    "RetireGrantResponse"
    "fixture/RetireGrantResponse.proto"
    defaultService
    (Proxy :: Proxy RetireGrant)

responseCreateKey :: CreateKeyResponse -> TestTree
responseCreateKey =
  res
    "CreateKeyResponse"
    "fixture/CreateKeyResponse.proto"
    defaultService
    (Proxy :: Proxy CreateKey)

responseSign :: SignResponse -> TestTree
responseSign =
  res
    "SignResponse"
    "fixture/SignResponse.proto"
    defaultService
    (Proxy :: Proxy Sign)

responseUpdateKeyDescription :: UpdateKeyDescriptionResponse -> TestTree
responseUpdateKeyDescription =
  res
    "UpdateKeyDescriptionResponse"
    "fixture/UpdateKeyDescriptionResponse.proto"
    defaultService
    (Proxy :: Proxy UpdateKeyDescription)

responseGenerateDataKeyPairWithoutPlaintext :: GenerateDataKeyPairWithoutPlaintextResponse -> TestTree
responseGenerateDataKeyPairWithoutPlaintext =
  res
    "GenerateDataKeyPairWithoutPlaintextResponse"
    "fixture/GenerateDataKeyPairWithoutPlaintextResponse.proto"
    defaultService
    (Proxy :: Proxy GenerateDataKeyPairWithoutPlaintext)

responseCancelKeyDeletion :: CancelKeyDeletionResponse -> TestTree
responseCancelKeyDeletion =
  res
    "CancelKeyDeletionResponse"
    "fixture/CancelKeyDeletionResponse.proto"
    defaultService
    (Proxy :: Proxy CancelKeyDeletion)

responseDecrypt :: DecryptResponse -> TestTree
responseDecrypt =
  res
    "DecryptResponse"
    "fixture/DecryptResponse.proto"
    defaultService
    (Proxy :: Proxy Decrypt)

responseDescribeCustomKeyStores :: DescribeCustomKeyStoresResponse -> TestTree
responseDescribeCustomKeyStores =
  res
    "DescribeCustomKeyStoresResponse"
    "fixture/DescribeCustomKeyStoresResponse.proto"
    defaultService
    (Proxy :: Proxy DescribeCustomKeyStores)

responseCreateGrant :: CreateGrantResponse -> TestTree
responseCreateGrant =
  res
    "CreateGrantResponse"
    "fixture/CreateGrantResponse.proto"
    defaultService
    (Proxy :: Proxy CreateGrant)

responseEnableKeyRotation :: EnableKeyRotationResponse -> TestTree
responseEnableKeyRotation =
  res
    "EnableKeyRotationResponse"
    "fixture/EnableKeyRotationResponse.proto"
    defaultService
    (Proxy :: Proxy EnableKeyRotation)

responseListAliases :: ListAliasesResponse -> TestTree
responseListAliases =
  res
    "ListAliasesResponse"
    "fixture/ListAliasesResponse.proto"
    defaultService
    (Proxy :: Proxy ListAliases)

responseCreateAlias :: CreateAliasResponse -> TestTree
responseCreateAlias =
  res
    "CreateAliasResponse"
    "fixture/CreateAliasResponse.proto"
    defaultService
    (Proxy :: Proxy CreateAlias)
