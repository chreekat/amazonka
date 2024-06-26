{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.LexModels
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.LexModels where

import Data.Proxy
import Network.AWS.LexModels
import Test.AWS.Fixture
import Test.AWS.LexModels.Internal
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestDeleteSlotTypeVersion $
--             newDeleteSlotTypeVersion
--
--         , requestStartMigration $
--             newStartMigration
--
--         , requestGetBots $
--             newGetBots
--
--         , requestGetBotAlias $
--             newGetBotAlias
--
--         , requestGetSlotTypes $
--             newGetSlotTypes
--
--         , requestDeleteUtterances $
--             newDeleteUtterances
--
--         , requestGetBotChannelAssociations $
--             newGetBotChannelAssociations
--
--         , requestPutBotAlias $
--             newPutBotAlias
--
--         , requestGetSlotTypeVersions $
--             newGetSlotTypeVersions
--
--         , requestGetBuiltinIntent $
--             newGetBuiltinIntent
--
--         , requestUntagResource $
--             newUntagResource
--
--         , requestGetUtterancesView $
--             newGetUtterancesView
--
--         , requestTagResource $
--             newTagResource
--
--         , requestGetBuiltinSlotTypes $
--             newGetBuiltinSlotTypes
--
--         , requestPutBot $
--             newPutBot
--
--         , requestPutIntent $
--             newPutIntent
--
--         , requestGetBotChannelAssociation $
--             newGetBotChannelAssociation
--
--         , requestDeleteSlotType $
--             newDeleteSlotType
--
--         , requestGetExport $
--             newGetExport
--
--         , requestGetSlotType $
--             newGetSlotType
--
--         , requestCreateIntentVersion $
--             newCreateIntentVersion
--
--         , requestGetBot $
--             newGetBot
--
--         , requestGetBotAliases $
--             newGetBotAliases
--
--         , requestDeleteIntentVersion $
--             newDeleteIntentVersion
--
--         , requestCreateBotVersion $
--             newCreateBotVersion
--
--         , requestGetIntents $
--             newGetIntents
--
--         , requestGetMigrations $
--             newGetMigrations
--
--         , requestGetBotVersions $
--             newGetBotVersions
--
--         , requestDeleteBotAlias $
--             newDeleteBotAlias
--
--         , requestGetIntentVersions $
--             newGetIntentVersions
--
--         , requestGetImport $
--             newGetImport
--
--         , requestGetBuiltinIntents $
--             newGetBuiltinIntents
--
--         , requestDeleteBot $
--             newDeleteBot
--
--         , requestStartImport $
--             newStartImport
--
--         , requestPutSlotType $
--             newPutSlotType
--
--         , requestDeleteIntent $
--             newDeleteIntent
--
--         , requestCreateSlotTypeVersion $
--             newCreateSlotTypeVersion
--
--         , requestDeleteBotChannelAssociation $
--             newDeleteBotChannelAssociation
--
--         , requestListTagsForResource $
--             newListTagsForResource
--
--         , requestGetMigration $
--             newGetMigration
--
--         , requestGetIntent $
--             newGetIntent
--
--         , requestDeleteBotVersion $
--             newDeleteBotVersion
--
--           ]

--     , testGroup "response"
--         [ responseDeleteSlotTypeVersion $
--             newDeleteSlotTypeVersionResponse
--
--         , responseStartMigration $
--             newStartMigrationResponse
--
--         , responseGetBots $
--             newGetBotsResponse
--
--         , responseGetBotAlias $
--             newGetBotAliasResponse
--
--         , responseGetSlotTypes $
--             newGetSlotTypesResponse
--
--         , responseDeleteUtterances $
--             newDeleteUtterancesResponse
--
--         , responseGetBotChannelAssociations $
--             newGetBotChannelAssociationsResponse
--
--         , responsePutBotAlias $
--             newPutBotAliasResponse
--
--         , responseGetSlotTypeVersions $
--             newGetSlotTypeVersionsResponse
--
--         , responseGetBuiltinIntent $
--             newGetBuiltinIntentResponse
--
--         , responseUntagResource $
--             newUntagResourceResponse
--
--         , responseGetUtterancesView $
--             newGetUtterancesViewResponse
--
--         , responseTagResource $
--             newTagResourceResponse
--
--         , responseGetBuiltinSlotTypes $
--             newGetBuiltinSlotTypesResponse
--
--         , responsePutBot $
--             newPutBotResponse
--
--         , responsePutIntent $
--             newPutIntentResponse
--
--         , responseGetBotChannelAssociation $
--             newGetBotChannelAssociationResponse
--
--         , responseDeleteSlotType $
--             newDeleteSlotTypeResponse
--
--         , responseGetExport $
--             newGetExportResponse
--
--         , responseGetSlotType $
--             newGetSlotTypeResponse
--
--         , responseCreateIntentVersion $
--             newCreateIntentVersionResponse
--
--         , responseGetBot $
--             newGetBotResponse
--
--         , responseGetBotAliases $
--             newGetBotAliasesResponse
--
--         , responseDeleteIntentVersion $
--             newDeleteIntentVersionResponse
--
--         , responseCreateBotVersion $
--             newCreateBotVersionResponse
--
--         , responseGetIntents $
--             newGetIntentsResponse
--
--         , responseGetMigrations $
--             newGetMigrationsResponse
--
--         , responseGetBotVersions $
--             newGetBotVersionsResponse
--
--         , responseDeleteBotAlias $
--             newDeleteBotAliasResponse
--
--         , responseGetIntentVersions $
--             newGetIntentVersionsResponse
--
--         , responseGetImport $
--             newGetImportResponse
--
--         , responseGetBuiltinIntents $
--             newGetBuiltinIntentsResponse
--
--         , responseDeleteBot $
--             newDeleteBotResponse
--
--         , responseStartImport $
--             newStartImportResponse
--
--         , responsePutSlotType $
--             newPutSlotTypeResponse
--
--         , responseDeleteIntent $
--             newDeleteIntentResponse
--
--         , responseCreateSlotTypeVersion $
--             newCreateSlotTypeVersionResponse
--
--         , responseDeleteBotChannelAssociation $
--             newDeleteBotChannelAssociationResponse
--
--         , responseListTagsForResource $
--             newListTagsForResourceResponse
--
--         , responseGetMigration $
--             newGetMigrationResponse
--
--         , responseGetIntent $
--             newGetIntentResponse
--
--         , responseDeleteBotVersion $
--             newDeleteBotVersionResponse
--
--           ]
--     ]

-- Requests

requestDeleteSlotTypeVersion :: DeleteSlotTypeVersion -> TestTree
requestDeleteSlotTypeVersion =
  req
    "DeleteSlotTypeVersion"
    "fixture/DeleteSlotTypeVersion.yaml"

requestStartMigration :: StartMigration -> TestTree
requestStartMigration =
  req
    "StartMigration"
    "fixture/StartMigration.yaml"

requestGetBots :: GetBots -> TestTree
requestGetBots =
  req
    "GetBots"
    "fixture/GetBots.yaml"

requestGetBotAlias :: GetBotAlias -> TestTree
requestGetBotAlias =
  req
    "GetBotAlias"
    "fixture/GetBotAlias.yaml"

requestGetSlotTypes :: GetSlotTypes -> TestTree
requestGetSlotTypes =
  req
    "GetSlotTypes"
    "fixture/GetSlotTypes.yaml"

requestDeleteUtterances :: DeleteUtterances -> TestTree
requestDeleteUtterances =
  req
    "DeleteUtterances"
    "fixture/DeleteUtterances.yaml"

requestGetBotChannelAssociations :: GetBotChannelAssociations -> TestTree
requestGetBotChannelAssociations =
  req
    "GetBotChannelAssociations"
    "fixture/GetBotChannelAssociations.yaml"

requestPutBotAlias :: PutBotAlias -> TestTree
requestPutBotAlias =
  req
    "PutBotAlias"
    "fixture/PutBotAlias.yaml"

requestGetSlotTypeVersions :: GetSlotTypeVersions -> TestTree
requestGetSlotTypeVersions =
  req
    "GetSlotTypeVersions"
    "fixture/GetSlotTypeVersions.yaml"

requestGetBuiltinIntent :: GetBuiltinIntent -> TestTree
requestGetBuiltinIntent =
  req
    "GetBuiltinIntent"
    "fixture/GetBuiltinIntent.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestGetUtterancesView :: GetUtterancesView -> TestTree
requestGetUtterancesView =
  req
    "GetUtterancesView"
    "fixture/GetUtterancesView.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestGetBuiltinSlotTypes :: GetBuiltinSlotTypes -> TestTree
requestGetBuiltinSlotTypes =
  req
    "GetBuiltinSlotTypes"
    "fixture/GetBuiltinSlotTypes.yaml"

requestPutBot :: PutBot -> TestTree
requestPutBot =
  req
    "PutBot"
    "fixture/PutBot.yaml"

requestPutIntent :: PutIntent -> TestTree
requestPutIntent =
  req
    "PutIntent"
    "fixture/PutIntent.yaml"

requestGetBotChannelAssociation :: GetBotChannelAssociation -> TestTree
requestGetBotChannelAssociation =
  req
    "GetBotChannelAssociation"
    "fixture/GetBotChannelAssociation.yaml"

requestDeleteSlotType :: DeleteSlotType -> TestTree
requestDeleteSlotType =
  req
    "DeleteSlotType"
    "fixture/DeleteSlotType.yaml"

requestGetExport :: GetExport -> TestTree
requestGetExport =
  req
    "GetExport"
    "fixture/GetExport.yaml"

requestGetSlotType :: GetSlotType -> TestTree
requestGetSlotType =
  req
    "GetSlotType"
    "fixture/GetSlotType.yaml"

requestCreateIntentVersion :: CreateIntentVersion -> TestTree
requestCreateIntentVersion =
  req
    "CreateIntentVersion"
    "fixture/CreateIntentVersion.yaml"

requestGetBot :: GetBot -> TestTree
requestGetBot =
  req
    "GetBot"
    "fixture/GetBot.yaml"

requestGetBotAliases :: GetBotAliases -> TestTree
requestGetBotAliases =
  req
    "GetBotAliases"
    "fixture/GetBotAliases.yaml"

requestDeleteIntentVersion :: DeleteIntentVersion -> TestTree
requestDeleteIntentVersion =
  req
    "DeleteIntentVersion"
    "fixture/DeleteIntentVersion.yaml"

requestCreateBotVersion :: CreateBotVersion -> TestTree
requestCreateBotVersion =
  req
    "CreateBotVersion"
    "fixture/CreateBotVersion.yaml"

requestGetIntents :: GetIntents -> TestTree
requestGetIntents =
  req
    "GetIntents"
    "fixture/GetIntents.yaml"

requestGetMigrations :: GetMigrations -> TestTree
requestGetMigrations =
  req
    "GetMigrations"
    "fixture/GetMigrations.yaml"

requestGetBotVersions :: GetBotVersions -> TestTree
requestGetBotVersions =
  req
    "GetBotVersions"
    "fixture/GetBotVersions.yaml"

requestDeleteBotAlias :: DeleteBotAlias -> TestTree
requestDeleteBotAlias =
  req
    "DeleteBotAlias"
    "fixture/DeleteBotAlias.yaml"

requestGetIntentVersions :: GetIntentVersions -> TestTree
requestGetIntentVersions =
  req
    "GetIntentVersions"
    "fixture/GetIntentVersions.yaml"

requestGetImport :: GetImport -> TestTree
requestGetImport =
  req
    "GetImport"
    "fixture/GetImport.yaml"

requestGetBuiltinIntents :: GetBuiltinIntents -> TestTree
requestGetBuiltinIntents =
  req
    "GetBuiltinIntents"
    "fixture/GetBuiltinIntents.yaml"

requestDeleteBot :: DeleteBot -> TestTree
requestDeleteBot =
  req
    "DeleteBot"
    "fixture/DeleteBot.yaml"

requestStartImport :: StartImport -> TestTree
requestStartImport =
  req
    "StartImport"
    "fixture/StartImport.yaml"

requestPutSlotType :: PutSlotType -> TestTree
requestPutSlotType =
  req
    "PutSlotType"
    "fixture/PutSlotType.yaml"

requestDeleteIntent :: DeleteIntent -> TestTree
requestDeleteIntent =
  req
    "DeleteIntent"
    "fixture/DeleteIntent.yaml"

requestCreateSlotTypeVersion :: CreateSlotTypeVersion -> TestTree
requestCreateSlotTypeVersion =
  req
    "CreateSlotTypeVersion"
    "fixture/CreateSlotTypeVersion.yaml"

requestDeleteBotChannelAssociation :: DeleteBotChannelAssociation -> TestTree
requestDeleteBotChannelAssociation =
  req
    "DeleteBotChannelAssociation"
    "fixture/DeleteBotChannelAssociation.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestGetMigration :: GetMigration -> TestTree
requestGetMigration =
  req
    "GetMigration"
    "fixture/GetMigration.yaml"

requestGetIntent :: GetIntent -> TestTree
requestGetIntent =
  req
    "GetIntent"
    "fixture/GetIntent.yaml"

requestDeleteBotVersion :: DeleteBotVersion -> TestTree
requestDeleteBotVersion =
  req
    "DeleteBotVersion"
    "fixture/DeleteBotVersion.yaml"

-- Responses

responseDeleteSlotTypeVersion :: DeleteSlotTypeVersionResponse -> TestTree
responseDeleteSlotTypeVersion =
  res
    "DeleteSlotTypeVersionResponse"
    "fixture/DeleteSlotTypeVersionResponse.proto"
    defaultService
    (Proxy :: Proxy DeleteSlotTypeVersion)

responseStartMigration :: StartMigrationResponse -> TestTree
responseStartMigration =
  res
    "StartMigrationResponse"
    "fixture/StartMigrationResponse.proto"
    defaultService
    (Proxy :: Proxy StartMigration)

responseGetBots :: GetBotsResponse -> TestTree
responseGetBots =
  res
    "GetBotsResponse"
    "fixture/GetBotsResponse.proto"
    defaultService
    (Proxy :: Proxy GetBots)

responseGetBotAlias :: GetBotAliasResponse -> TestTree
responseGetBotAlias =
  res
    "GetBotAliasResponse"
    "fixture/GetBotAliasResponse.proto"
    defaultService
    (Proxy :: Proxy GetBotAlias)

responseGetSlotTypes :: GetSlotTypesResponse -> TestTree
responseGetSlotTypes =
  res
    "GetSlotTypesResponse"
    "fixture/GetSlotTypesResponse.proto"
    defaultService
    (Proxy :: Proxy GetSlotTypes)

responseDeleteUtterances :: DeleteUtterancesResponse -> TestTree
responseDeleteUtterances =
  res
    "DeleteUtterancesResponse"
    "fixture/DeleteUtterancesResponse.proto"
    defaultService
    (Proxy :: Proxy DeleteUtterances)

responseGetBotChannelAssociations :: GetBotChannelAssociationsResponse -> TestTree
responseGetBotChannelAssociations =
  res
    "GetBotChannelAssociationsResponse"
    "fixture/GetBotChannelAssociationsResponse.proto"
    defaultService
    (Proxy :: Proxy GetBotChannelAssociations)

responsePutBotAlias :: PutBotAliasResponse -> TestTree
responsePutBotAlias =
  res
    "PutBotAliasResponse"
    "fixture/PutBotAliasResponse.proto"
    defaultService
    (Proxy :: Proxy PutBotAlias)

responseGetSlotTypeVersions :: GetSlotTypeVersionsResponse -> TestTree
responseGetSlotTypeVersions =
  res
    "GetSlotTypeVersionsResponse"
    "fixture/GetSlotTypeVersionsResponse.proto"
    defaultService
    (Proxy :: Proxy GetSlotTypeVersions)

responseGetBuiltinIntent :: GetBuiltinIntentResponse -> TestTree
responseGetBuiltinIntent =
  res
    "GetBuiltinIntentResponse"
    "fixture/GetBuiltinIntentResponse.proto"
    defaultService
    (Proxy :: Proxy GetBuiltinIntent)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    defaultService
    (Proxy :: Proxy UntagResource)

responseGetUtterancesView :: GetUtterancesViewResponse -> TestTree
responseGetUtterancesView =
  res
    "GetUtterancesViewResponse"
    "fixture/GetUtterancesViewResponse.proto"
    defaultService
    (Proxy :: Proxy GetUtterancesView)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    defaultService
    (Proxy :: Proxy TagResource)

responseGetBuiltinSlotTypes :: GetBuiltinSlotTypesResponse -> TestTree
responseGetBuiltinSlotTypes =
  res
    "GetBuiltinSlotTypesResponse"
    "fixture/GetBuiltinSlotTypesResponse.proto"
    defaultService
    (Proxy :: Proxy GetBuiltinSlotTypes)

responsePutBot :: PutBotResponse -> TestTree
responsePutBot =
  res
    "PutBotResponse"
    "fixture/PutBotResponse.proto"
    defaultService
    (Proxy :: Proxy PutBot)

responsePutIntent :: PutIntentResponse -> TestTree
responsePutIntent =
  res
    "PutIntentResponse"
    "fixture/PutIntentResponse.proto"
    defaultService
    (Proxy :: Proxy PutIntent)

responseGetBotChannelAssociation :: GetBotChannelAssociationResponse -> TestTree
responseGetBotChannelAssociation =
  res
    "GetBotChannelAssociationResponse"
    "fixture/GetBotChannelAssociationResponse.proto"
    defaultService
    (Proxy :: Proxy GetBotChannelAssociation)

responseDeleteSlotType :: DeleteSlotTypeResponse -> TestTree
responseDeleteSlotType =
  res
    "DeleteSlotTypeResponse"
    "fixture/DeleteSlotTypeResponse.proto"
    defaultService
    (Proxy :: Proxy DeleteSlotType)

responseGetExport :: GetExportResponse -> TestTree
responseGetExport =
  res
    "GetExportResponse"
    "fixture/GetExportResponse.proto"
    defaultService
    (Proxy :: Proxy GetExport)

responseGetSlotType :: GetSlotTypeResponse -> TestTree
responseGetSlotType =
  res
    "GetSlotTypeResponse"
    "fixture/GetSlotTypeResponse.proto"
    defaultService
    (Proxy :: Proxy GetSlotType)

responseCreateIntentVersion :: CreateIntentVersionResponse -> TestTree
responseCreateIntentVersion =
  res
    "CreateIntentVersionResponse"
    "fixture/CreateIntentVersionResponse.proto"
    defaultService
    (Proxy :: Proxy CreateIntentVersion)

responseGetBot :: GetBotResponse -> TestTree
responseGetBot =
  res
    "GetBotResponse"
    "fixture/GetBotResponse.proto"
    defaultService
    (Proxy :: Proxy GetBot)

responseGetBotAliases :: GetBotAliasesResponse -> TestTree
responseGetBotAliases =
  res
    "GetBotAliasesResponse"
    "fixture/GetBotAliasesResponse.proto"
    defaultService
    (Proxy :: Proxy GetBotAliases)

responseDeleteIntentVersion :: DeleteIntentVersionResponse -> TestTree
responseDeleteIntentVersion =
  res
    "DeleteIntentVersionResponse"
    "fixture/DeleteIntentVersionResponse.proto"
    defaultService
    (Proxy :: Proxy DeleteIntentVersion)

responseCreateBotVersion :: CreateBotVersionResponse -> TestTree
responseCreateBotVersion =
  res
    "CreateBotVersionResponse"
    "fixture/CreateBotVersionResponse.proto"
    defaultService
    (Proxy :: Proxy CreateBotVersion)

responseGetIntents :: GetIntentsResponse -> TestTree
responseGetIntents =
  res
    "GetIntentsResponse"
    "fixture/GetIntentsResponse.proto"
    defaultService
    (Proxy :: Proxy GetIntents)

responseGetMigrations :: GetMigrationsResponse -> TestTree
responseGetMigrations =
  res
    "GetMigrationsResponse"
    "fixture/GetMigrationsResponse.proto"
    defaultService
    (Proxy :: Proxy GetMigrations)

responseGetBotVersions :: GetBotVersionsResponse -> TestTree
responseGetBotVersions =
  res
    "GetBotVersionsResponse"
    "fixture/GetBotVersionsResponse.proto"
    defaultService
    (Proxy :: Proxy GetBotVersions)

responseDeleteBotAlias :: DeleteBotAliasResponse -> TestTree
responseDeleteBotAlias =
  res
    "DeleteBotAliasResponse"
    "fixture/DeleteBotAliasResponse.proto"
    defaultService
    (Proxy :: Proxy DeleteBotAlias)

responseGetIntentVersions :: GetIntentVersionsResponse -> TestTree
responseGetIntentVersions =
  res
    "GetIntentVersionsResponse"
    "fixture/GetIntentVersionsResponse.proto"
    defaultService
    (Proxy :: Proxy GetIntentVersions)

responseGetImport :: GetImportResponse -> TestTree
responseGetImport =
  res
    "GetImportResponse"
    "fixture/GetImportResponse.proto"
    defaultService
    (Proxy :: Proxy GetImport)

responseGetBuiltinIntents :: GetBuiltinIntentsResponse -> TestTree
responseGetBuiltinIntents =
  res
    "GetBuiltinIntentsResponse"
    "fixture/GetBuiltinIntentsResponse.proto"
    defaultService
    (Proxy :: Proxy GetBuiltinIntents)

responseDeleteBot :: DeleteBotResponse -> TestTree
responseDeleteBot =
  res
    "DeleteBotResponse"
    "fixture/DeleteBotResponse.proto"
    defaultService
    (Proxy :: Proxy DeleteBot)

responseStartImport :: StartImportResponse -> TestTree
responseStartImport =
  res
    "StartImportResponse"
    "fixture/StartImportResponse.proto"
    defaultService
    (Proxy :: Proxy StartImport)

responsePutSlotType :: PutSlotTypeResponse -> TestTree
responsePutSlotType =
  res
    "PutSlotTypeResponse"
    "fixture/PutSlotTypeResponse.proto"
    defaultService
    (Proxy :: Proxy PutSlotType)

responseDeleteIntent :: DeleteIntentResponse -> TestTree
responseDeleteIntent =
  res
    "DeleteIntentResponse"
    "fixture/DeleteIntentResponse.proto"
    defaultService
    (Proxy :: Proxy DeleteIntent)

responseCreateSlotTypeVersion :: CreateSlotTypeVersionResponse -> TestTree
responseCreateSlotTypeVersion =
  res
    "CreateSlotTypeVersionResponse"
    "fixture/CreateSlotTypeVersionResponse.proto"
    defaultService
    (Proxy :: Proxy CreateSlotTypeVersion)

responseDeleteBotChannelAssociation :: DeleteBotChannelAssociationResponse -> TestTree
responseDeleteBotChannelAssociation =
  res
    "DeleteBotChannelAssociationResponse"
    "fixture/DeleteBotChannelAssociationResponse.proto"
    defaultService
    (Proxy :: Proxy DeleteBotChannelAssociation)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    defaultService
    (Proxy :: Proxy ListTagsForResource)

responseGetMigration :: GetMigrationResponse -> TestTree
responseGetMigration =
  res
    "GetMigrationResponse"
    "fixture/GetMigrationResponse.proto"
    defaultService
    (Proxy :: Proxy GetMigration)

responseGetIntent :: GetIntentResponse -> TestTree
responseGetIntent =
  res
    "GetIntentResponse"
    "fixture/GetIntentResponse.proto"
    defaultService
    (Proxy :: Proxy GetIntent)

responseDeleteBotVersion :: DeleteBotVersionResponse -> TestTree
responseDeleteBotVersion =
  res
    "DeleteBotVersionResponse"
    "fixture/DeleteBotVersionResponse.proto"
    defaultService
    (Proxy :: Proxy DeleteBotVersion)
