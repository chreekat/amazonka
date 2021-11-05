{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.IoTEvents.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoTEvents.Lens
  ( -- * Operations

    -- ** ListInputs
    listInputs_nextToken,
    listInputs_maxResults,
    listInputsResponse_inputSummaries,
    listInputsResponse_nextToken,
    listInputsResponse_httpStatus,

    -- ** StartDetectorModelAnalysis
    startDetectorModelAnalysis_detectorModelDefinition,
    startDetectorModelAnalysisResponse_analysisId,
    startDetectorModelAnalysisResponse_httpStatus,

    -- ** PutLoggingOptions
    putLoggingOptions_loggingOptions,

    -- ** DescribeDetectorModelAnalysis
    describeDetectorModelAnalysis_analysisId,
    describeDetectorModelAnalysisResponse_status,
    describeDetectorModelAnalysisResponse_httpStatus,

    -- ** CreateInput
    createInput_inputDescription,
    createInput_tags,
    createInput_inputName,
    createInput_inputDefinition,
    createInputResponse_inputConfiguration,
    createInputResponse_httpStatus,

    -- ** ListTagsForResource
    listTagsForResource_resourceArn,
    listTagsForResourceResponse_tags,
    listTagsForResourceResponse_httpStatus,

    -- ** ListAlarmModels
    listAlarmModels_nextToken,
    listAlarmModels_maxResults,
    listAlarmModelsResponse_nextToken,
    listAlarmModelsResponse_alarmModelSummaries,
    listAlarmModelsResponse_httpStatus,

    -- ** DeleteAlarmModel
    deleteAlarmModel_alarmModelName,
    deleteAlarmModelResponse_httpStatus,

    -- ** UpdateAlarmModel
    updateAlarmModel_severity,
    updateAlarmModel_alarmNotification,
    updateAlarmModel_alarmModelDescription,
    updateAlarmModel_alarmEventActions,
    updateAlarmModel_alarmCapabilities,
    updateAlarmModel_alarmModelName,
    updateAlarmModel_roleArn,
    updateAlarmModel_alarmRule,
    updateAlarmModelResponse_creationTime,
    updateAlarmModelResponse_status,
    updateAlarmModelResponse_lastUpdateTime,
    updateAlarmModelResponse_alarmModelVersion,
    updateAlarmModelResponse_alarmModelArn,
    updateAlarmModelResponse_httpStatus,

    -- ** CreateAlarmModel
    createAlarmModel_severity,
    createAlarmModel_alarmNotification,
    createAlarmModel_key,
    createAlarmModel_alarmModelDescription,
    createAlarmModel_alarmEventActions,
    createAlarmModel_alarmCapabilities,
    createAlarmModel_tags,
    createAlarmModel_alarmModelName,
    createAlarmModel_roleArn,
    createAlarmModel_alarmRule,
    createAlarmModelResponse_creationTime,
    createAlarmModelResponse_status,
    createAlarmModelResponse_lastUpdateTime,
    createAlarmModelResponse_alarmModelVersion,
    createAlarmModelResponse_alarmModelArn,
    createAlarmModelResponse_httpStatus,

    -- ** GetDetectorModelAnalysisResults
    getDetectorModelAnalysisResults_nextToken,
    getDetectorModelAnalysisResults_maxResults,
    getDetectorModelAnalysisResults_analysisId,
    getDetectorModelAnalysisResultsResponse_nextToken,
    getDetectorModelAnalysisResultsResponse_analysisResults,
    getDetectorModelAnalysisResultsResponse_httpStatus,

    -- ** ListDetectorModelVersions
    listDetectorModelVersions_nextToken,
    listDetectorModelVersions_maxResults,
    listDetectorModelVersions_detectorModelName,
    listDetectorModelVersionsResponse_nextToken,
    listDetectorModelVersionsResponse_detectorModelVersionSummaries,
    listDetectorModelVersionsResponse_httpStatus,

    -- ** DescribeAlarmModel
    describeAlarmModel_alarmModelVersion,
    describeAlarmModel_alarmModelName,
    describeAlarmModelResponse_creationTime,
    describeAlarmModelResponse_status,
    describeAlarmModelResponse_alarmRule,
    describeAlarmModelResponse_alarmModelName,
    describeAlarmModelResponse_severity,
    describeAlarmModelResponse_alarmNotification,
    describeAlarmModelResponse_key,
    describeAlarmModelResponse_statusMessage,
    describeAlarmModelResponse_alarmModelDescription,
    describeAlarmModelResponse_alarmEventActions,
    describeAlarmModelResponse_alarmCapabilities,
    describeAlarmModelResponse_lastUpdateTime,
    describeAlarmModelResponse_alarmModelVersion,
    describeAlarmModelResponse_alarmModelArn,
    describeAlarmModelResponse_roleArn,
    describeAlarmModelResponse_httpStatus,

    -- ** CreateDetectorModel
    createDetectorModel_detectorModelDescription,
    createDetectorModel_key,
    createDetectorModel_evaluationMethod,
    createDetectorModel_tags,
    createDetectorModel_detectorModelName,
    createDetectorModel_detectorModelDefinition,
    createDetectorModel_roleArn,
    createDetectorModelResponse_detectorModelConfiguration,
    createDetectorModelResponse_httpStatus,

    -- ** ListDetectorModels
    listDetectorModels_nextToken,
    listDetectorModels_maxResults,
    listDetectorModelsResponse_nextToken,
    listDetectorModelsResponse_detectorModelSummaries,
    listDetectorModelsResponse_httpStatus,

    -- ** UpdateDetectorModel
    updateDetectorModel_detectorModelDescription,
    updateDetectorModel_evaluationMethod,
    updateDetectorModel_detectorModelName,
    updateDetectorModel_detectorModelDefinition,
    updateDetectorModel_roleArn,
    updateDetectorModelResponse_detectorModelConfiguration,
    updateDetectorModelResponse_httpStatus,

    -- ** DeleteDetectorModel
    deleteDetectorModel_detectorModelName,
    deleteDetectorModelResponse_httpStatus,

    -- ** DeleteInput
    deleteInput_inputName,
    deleteInputResponse_httpStatus,

    -- ** UpdateInput
    updateInput_inputDescription,
    updateInput_inputName,
    updateInput_inputDefinition,
    updateInputResponse_inputConfiguration,
    updateInputResponse_httpStatus,

    -- ** ListAlarmModelVersions
    listAlarmModelVersions_nextToken,
    listAlarmModelVersions_maxResults,
    listAlarmModelVersions_alarmModelName,
    listAlarmModelVersionsResponse_alarmModelVersionSummaries,
    listAlarmModelVersionsResponse_nextToken,
    listAlarmModelVersionsResponse_httpStatus,

    -- ** TagResource
    tagResource_resourceArn,
    tagResource_tags,
    tagResourceResponse_httpStatus,

    -- ** DescribeDetectorModel
    describeDetectorModel_detectorModelVersion,
    describeDetectorModel_detectorModelName,
    describeDetectorModelResponse_detectorModel,
    describeDetectorModelResponse_httpStatus,

    -- ** DescribeInput
    describeInput_inputName,
    describeInputResponse_input,
    describeInputResponse_httpStatus,

    -- ** UntagResource
    untagResource_resourceArn,
    untagResource_tagKeys,
    untagResourceResponse_httpStatus,

    -- ** ListInputRoutings
    listInputRoutings_nextToken,
    listInputRoutings_maxResults,
    listInputRoutings_inputIdentifier,
    listInputRoutingsResponse_routedResources,
    listInputRoutingsResponse_nextToken,
    listInputRoutingsResponse_httpStatus,

    -- ** DescribeLoggingOptions
    describeLoggingOptionsResponse_loggingOptions,
    describeLoggingOptionsResponse_httpStatus,

    -- * Types

    -- ** AcknowledgeFlow
    acknowledgeFlow_enabled,

    -- ** Action
    action_iotTopicPublish,
    action_dynamoDBv2,
    action_resetTimer,
    action_setTimer,
    action_sns,
    action_clearTimer,
    action_dynamoDB,
    action_firehose,
    action_iotSiteWise,
    action_setVariable,
    action_lambda,
    action_iotEvents,
    action_sqs,

    -- ** AlarmAction
    alarmAction_iotTopicPublish,
    alarmAction_dynamoDBv2,
    alarmAction_sns,
    alarmAction_dynamoDB,
    alarmAction_firehose,
    alarmAction_iotSiteWise,
    alarmAction_lambda,
    alarmAction_iotEvents,
    alarmAction_sqs,

    -- ** AlarmCapabilities
    alarmCapabilities_acknowledgeFlow,
    alarmCapabilities_initializationConfiguration,

    -- ** AlarmEventActions
    alarmEventActions_alarmActions,

    -- ** AlarmModelSummary
    alarmModelSummary_creationTime,
    alarmModelSummary_alarmModelName,
    alarmModelSummary_alarmModelDescription,

    -- ** AlarmModelVersionSummary
    alarmModelVersionSummary_creationTime,
    alarmModelVersionSummary_status,
    alarmModelVersionSummary_alarmModelName,
    alarmModelVersionSummary_statusMessage,
    alarmModelVersionSummary_lastUpdateTime,
    alarmModelVersionSummary_alarmModelVersion,
    alarmModelVersionSummary_alarmModelArn,
    alarmModelVersionSummary_roleArn,

    -- ** AlarmNotification
    alarmNotification_notificationActions,

    -- ** AlarmRule
    alarmRule_simpleRule,

    -- ** AnalysisResult
    analysisResult_type,
    analysisResult_message,
    analysisResult_level,
    analysisResult_locations,

    -- ** AnalysisResultLocation
    analysisResultLocation_path,

    -- ** AssetPropertyTimestamp
    assetPropertyTimestamp_offsetInNanos,
    assetPropertyTimestamp_timeInSeconds,

    -- ** AssetPropertyValue
    assetPropertyValue_value,
    assetPropertyValue_quality,
    assetPropertyValue_timestamp,

    -- ** AssetPropertyVariant
    assetPropertyVariant_integerValue,
    assetPropertyVariant_doubleValue,
    assetPropertyVariant_stringValue,
    assetPropertyVariant_booleanValue,

    -- ** Attribute
    attribute_jsonPath,

    -- ** ClearTimerAction
    clearTimerAction_timerName,

    -- ** DetectorDebugOption
    detectorDebugOption_keyValue,
    detectorDebugOption_detectorModelName,

    -- ** DetectorModel
    detectorModel_detectorModelConfiguration,
    detectorModel_detectorModelDefinition,

    -- ** DetectorModelConfiguration
    detectorModelConfiguration_creationTime,
    detectorModelConfiguration_status,
    detectorModelConfiguration_detectorModelName,
    detectorModelConfiguration_detectorModelArn,
    detectorModelConfiguration_detectorModelDescription,
    detectorModelConfiguration_key,
    detectorModelConfiguration_detectorModelVersion,
    detectorModelConfiguration_lastUpdateTime,
    detectorModelConfiguration_evaluationMethod,
    detectorModelConfiguration_roleArn,

    -- ** DetectorModelDefinition
    detectorModelDefinition_states,
    detectorModelDefinition_initialStateName,

    -- ** DetectorModelSummary
    detectorModelSummary_creationTime,
    detectorModelSummary_detectorModelName,
    detectorModelSummary_detectorModelDescription,

    -- ** DetectorModelVersionSummary
    detectorModelVersionSummary_creationTime,
    detectorModelVersionSummary_status,
    detectorModelVersionSummary_detectorModelName,
    detectorModelVersionSummary_detectorModelArn,
    detectorModelVersionSummary_detectorModelVersion,
    detectorModelVersionSummary_lastUpdateTime,
    detectorModelVersionSummary_evaluationMethod,
    detectorModelVersionSummary_roleArn,

    -- ** DynamoDBAction
    dynamoDBAction_hashKeyType,
    dynamoDBAction_operation,
    dynamoDBAction_rangeKeyType,
    dynamoDBAction_payload,
    dynamoDBAction_payloadField,
    dynamoDBAction_rangeKeyField,
    dynamoDBAction_rangeKeyValue,
    dynamoDBAction_hashKeyField,
    dynamoDBAction_hashKeyValue,
    dynamoDBAction_tableName,

    -- ** DynamoDBv2Action
    dynamoDBv2Action_payload,
    dynamoDBv2Action_tableName,

    -- ** EmailConfiguration
    emailConfiguration_content,
    emailConfiguration_from,
    emailConfiguration_recipients,

    -- ** EmailContent
    emailContent_subject,
    emailContent_additionalMessage,

    -- ** EmailRecipients
    emailRecipients_to,

    -- ** Event
    event_actions,
    event_condition,
    event_eventName,

    -- ** FirehoseAction
    firehoseAction_separator,
    firehoseAction_payload,
    firehoseAction_deliveryStreamName,

    -- ** InitializationConfiguration
    initializationConfiguration_disabledOnInitialization,

    -- ** Input
    input_inputDefinition,
    input_inputConfiguration,

    -- ** InputConfiguration
    inputConfiguration_inputDescription,
    inputConfiguration_inputName,
    inputConfiguration_inputArn,
    inputConfiguration_creationTime,
    inputConfiguration_lastUpdateTime,
    inputConfiguration_status,

    -- ** InputDefinition
    inputDefinition_attributes,

    -- ** InputIdentifier
    inputIdentifier_iotSiteWiseInputIdentifier,
    inputIdentifier_iotEventsInputIdentifier,

    -- ** InputSummary
    inputSummary_creationTime,
    inputSummary_status,
    inputSummary_inputName,
    inputSummary_inputDescription,
    inputSummary_inputArn,
    inputSummary_lastUpdateTime,

    -- ** IotEventsAction
    iotEventsAction_payload,
    iotEventsAction_inputName,

    -- ** IotEventsInputIdentifier
    iotEventsInputIdentifier_inputName,

    -- ** IotSiteWiseAction
    iotSiteWiseAction_entryId,
    iotSiteWiseAction_propertyAlias,
    iotSiteWiseAction_propertyValue,
    iotSiteWiseAction_propertyId,
    iotSiteWiseAction_assetId,

    -- ** IotSiteWiseAssetModelPropertyIdentifier
    iotSiteWiseAssetModelPropertyIdentifier_assetModelId,
    iotSiteWiseAssetModelPropertyIdentifier_propertyId,

    -- ** IotSiteWiseInputIdentifier
    iotSiteWiseInputIdentifier_iotSiteWiseAssetModelPropertyIdentifier,

    -- ** IotTopicPublishAction
    iotTopicPublishAction_payload,
    iotTopicPublishAction_mqttTopic,

    -- ** LambdaAction
    lambdaAction_payload,
    lambdaAction_functionArn,

    -- ** LoggingOptions
    loggingOptions_detectorDebugOptions,
    loggingOptions_roleArn,
    loggingOptions_level,
    loggingOptions_enabled,

    -- ** NotificationAction
    notificationAction_emailConfigurations,
    notificationAction_smsConfigurations,
    notificationAction_action,

    -- ** NotificationTargetActions
    notificationTargetActions_lambdaAction,

    -- ** OnEnterLifecycle
    onEnterLifecycle_events,

    -- ** OnExitLifecycle
    onExitLifecycle_events,

    -- ** OnInputLifecycle
    onInputLifecycle_events,
    onInputLifecycle_transitionEvents,

    -- ** Payload
    payload_contentExpression,
    payload_type,

    -- ** RecipientDetail
    recipientDetail_ssoIdentity,

    -- ** ResetTimerAction
    resetTimerAction_timerName,

    -- ** RoutedResource
    routedResource_arn,
    routedResource_name,

    -- ** SMSConfiguration
    sMSConfiguration_additionalMessage,
    sMSConfiguration_senderId,
    sMSConfiguration_recipients,

    -- ** SNSTopicPublishAction
    sNSTopicPublishAction_payload,
    sNSTopicPublishAction_targetArn,

    -- ** SSOIdentity
    sSOIdentity_userId,
    sSOIdentity_identityStoreId,

    -- ** SetTimerAction
    setTimerAction_durationExpression,
    setTimerAction_seconds,
    setTimerAction_timerName,

    -- ** SetVariableAction
    setVariableAction_variableName,
    setVariableAction_value,

    -- ** SimpleRule
    simpleRule_inputProperty,
    simpleRule_comparisonOperator,
    simpleRule_threshold,

    -- ** SqsAction
    sqsAction_payload,
    sqsAction_useBase64,
    sqsAction_queueUrl,

    -- ** State
    state_onEnter,
    state_onInput,
    state_onExit,
    state_stateName,

    -- ** Tag
    tag_key,
    tag_value,

    -- ** TransitionEvent
    transitionEvent_actions,
    transitionEvent_eventName,
    transitionEvent_condition,
    transitionEvent_nextState,
  )
where

import Amazonka.IoTEvents.CreateAlarmModel
import Amazonka.IoTEvents.CreateDetectorModel
import Amazonka.IoTEvents.CreateInput
import Amazonka.IoTEvents.DeleteAlarmModel
import Amazonka.IoTEvents.DeleteDetectorModel
import Amazonka.IoTEvents.DeleteInput
import Amazonka.IoTEvents.DescribeAlarmModel
import Amazonka.IoTEvents.DescribeDetectorModel
import Amazonka.IoTEvents.DescribeDetectorModelAnalysis
import Amazonka.IoTEvents.DescribeInput
import Amazonka.IoTEvents.DescribeLoggingOptions
import Amazonka.IoTEvents.GetDetectorModelAnalysisResults
import Amazonka.IoTEvents.ListAlarmModelVersions
import Amazonka.IoTEvents.ListAlarmModels
import Amazonka.IoTEvents.ListDetectorModelVersions
import Amazonka.IoTEvents.ListDetectorModels
import Amazonka.IoTEvents.ListInputRoutings
import Amazonka.IoTEvents.ListInputs
import Amazonka.IoTEvents.ListTagsForResource
import Amazonka.IoTEvents.PutLoggingOptions
import Amazonka.IoTEvents.StartDetectorModelAnalysis
import Amazonka.IoTEvents.TagResource
import Amazonka.IoTEvents.Types.AcknowledgeFlow
import Amazonka.IoTEvents.Types.Action
import Amazonka.IoTEvents.Types.AlarmAction
import Amazonka.IoTEvents.Types.AlarmCapabilities
import Amazonka.IoTEvents.Types.AlarmEventActions
import Amazonka.IoTEvents.Types.AlarmModelSummary
import Amazonka.IoTEvents.Types.AlarmModelVersionSummary
import Amazonka.IoTEvents.Types.AlarmNotification
import Amazonka.IoTEvents.Types.AlarmRule
import Amazonka.IoTEvents.Types.AnalysisResult
import Amazonka.IoTEvents.Types.AnalysisResultLocation
import Amazonka.IoTEvents.Types.AssetPropertyTimestamp
import Amazonka.IoTEvents.Types.AssetPropertyValue
import Amazonka.IoTEvents.Types.AssetPropertyVariant
import Amazonka.IoTEvents.Types.Attribute
import Amazonka.IoTEvents.Types.ClearTimerAction
import Amazonka.IoTEvents.Types.DetectorDebugOption
import Amazonka.IoTEvents.Types.DetectorModel
import Amazonka.IoTEvents.Types.DetectorModelConfiguration
import Amazonka.IoTEvents.Types.DetectorModelDefinition
import Amazonka.IoTEvents.Types.DetectorModelSummary
import Amazonka.IoTEvents.Types.DetectorModelVersionSummary
import Amazonka.IoTEvents.Types.DynamoDBAction
import Amazonka.IoTEvents.Types.DynamoDBv2Action
import Amazonka.IoTEvents.Types.EmailConfiguration
import Amazonka.IoTEvents.Types.EmailContent
import Amazonka.IoTEvents.Types.EmailRecipients
import Amazonka.IoTEvents.Types.Event
import Amazonka.IoTEvents.Types.FirehoseAction
import Amazonka.IoTEvents.Types.InitializationConfiguration
import Amazonka.IoTEvents.Types.Input
import Amazonka.IoTEvents.Types.InputConfiguration
import Amazonka.IoTEvents.Types.InputDefinition
import Amazonka.IoTEvents.Types.InputIdentifier
import Amazonka.IoTEvents.Types.InputSummary
import Amazonka.IoTEvents.Types.IotEventsAction
import Amazonka.IoTEvents.Types.IotEventsInputIdentifier
import Amazonka.IoTEvents.Types.IotSiteWiseAction
import Amazonka.IoTEvents.Types.IotSiteWiseAssetModelPropertyIdentifier
import Amazonka.IoTEvents.Types.IotSiteWiseInputIdentifier
import Amazonka.IoTEvents.Types.IotTopicPublishAction
import Amazonka.IoTEvents.Types.LambdaAction
import Amazonka.IoTEvents.Types.LoggingOptions
import Amazonka.IoTEvents.Types.NotificationAction
import Amazonka.IoTEvents.Types.NotificationTargetActions
import Amazonka.IoTEvents.Types.OnEnterLifecycle
import Amazonka.IoTEvents.Types.OnExitLifecycle
import Amazonka.IoTEvents.Types.OnInputLifecycle
import Amazonka.IoTEvents.Types.Payload
import Amazonka.IoTEvents.Types.RecipientDetail
import Amazonka.IoTEvents.Types.ResetTimerAction
import Amazonka.IoTEvents.Types.RoutedResource
import Amazonka.IoTEvents.Types.SMSConfiguration
import Amazonka.IoTEvents.Types.SNSTopicPublishAction
import Amazonka.IoTEvents.Types.SSOIdentity
import Amazonka.IoTEvents.Types.SetTimerAction
import Amazonka.IoTEvents.Types.SetVariableAction
import Amazonka.IoTEvents.Types.SimpleRule
import Amazonka.IoTEvents.Types.SqsAction
import Amazonka.IoTEvents.Types.State
import Amazonka.IoTEvents.Types.Tag
import Amazonka.IoTEvents.Types.TransitionEvent
import Amazonka.IoTEvents.UntagResource
import Amazonka.IoTEvents.UpdateAlarmModel
import Amazonka.IoTEvents.UpdateDetectorModel
import Amazonka.IoTEvents.UpdateInput
