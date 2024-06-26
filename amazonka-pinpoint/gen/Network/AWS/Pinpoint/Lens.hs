{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Lens
  ( -- * Operations

    -- ** UpdateCampaign
    updateCampaign_campaignId,
    updateCampaign_applicationId,
    updateCampaign_writeCampaignRequest,
    updateCampaignResponse_httpStatus,
    updateCampaignResponse_campaignResponse,

    -- ** UpdatePushTemplate
    updatePushTemplate_version,
    updatePushTemplate_createNewVersion,
    updatePushTemplate_templateName,
    updatePushTemplate_pushNotificationTemplateRequest,
    updatePushTemplateResponse_httpStatus,
    updatePushTemplateResponse_messageBody,

    -- ** DeleteInAppTemplate
    deleteInAppTemplate_version,
    deleteInAppTemplate_templateName,
    deleteInAppTemplateResponse_httpStatus,
    deleteInAppTemplateResponse_messageBody,

    -- ** UpdateInAppTemplate
    updateInAppTemplate_version,
    updateInAppTemplate_createNewVersion,
    updateInAppTemplate_templateName,
    updateInAppTemplate_inAppTemplateRequest,
    updateInAppTemplateResponse_httpStatus,
    updateInAppTemplateResponse_messageBody,

    -- ** DeleteVoiceTemplate
    deleteVoiceTemplate_version,
    deleteVoiceTemplate_templateName,
    deleteVoiceTemplateResponse_httpStatus,
    deleteVoiceTemplateResponse_messageBody,

    -- ** CreateRecommenderConfiguration
    createRecommenderConfiguration'_createRecommenderConfiguration,
    createRecommenderConfigurationResponse_httpStatus,
    createRecommenderConfigurationResponse_recommenderConfigurationResponse,

    -- ** UpdateTemplateActiveVersion
    updateTemplateActiveVersion_templateName,
    updateTemplateActiveVersion_templateType,
    updateTemplateActiveVersion_templateActiveVersionRequest,
    updateTemplateActiveVersionResponse_httpStatus,
    updateTemplateActiveVersionResponse_messageBody,

    -- ** DeletePushTemplate
    deletePushTemplate_version,
    deletePushTemplate_templateName,
    deletePushTemplateResponse_httpStatus,
    deletePushTemplateResponse_messageBody,

    -- ** GetImportJobs
    getImportJobs_pageSize,
    getImportJobs_token,
    getImportJobs_applicationId,
    getImportJobsResponse_httpStatus,
    getImportJobsResponse_importJobsResponse,

    -- ** DeleteCampaign
    deleteCampaign_campaignId,
    deleteCampaign_applicationId,
    deleteCampaignResponse_httpStatus,
    deleteCampaignResponse_campaignResponse,

    -- ** UpdateVoiceTemplate
    updateVoiceTemplate_version,
    updateVoiceTemplate_createNewVersion,
    updateVoiceTemplate_templateName,
    updateVoiceTemplate_voiceTemplateRequest,
    updateVoiceTemplateResponse_httpStatus,
    updateVoiceTemplateResponse_messageBody,

    -- ** GetSegmentVersions
    getSegmentVersions_pageSize,
    getSegmentVersions_token,
    getSegmentVersions_segmentId,
    getSegmentVersions_applicationId,
    getSegmentVersionsResponse_httpStatus,
    getSegmentVersionsResponse_segmentsResponse,

    -- ** GetApps
    getApps_pageSize,
    getApps_token,
    getAppsResponse_httpStatus,
    getAppsResponse_applicationsResponse,

    -- ** GetApnsSandboxChannel
    getApnsSandboxChannel_applicationId,
    getApnsSandboxChannelResponse_httpStatus,
    getApnsSandboxChannelResponse_aPNSSandboxChannelResponse,

    -- ** GetImportJob
    getImportJob_applicationId,
    getImportJob_jobId,
    getImportJobResponse_httpStatus,
    getImportJobResponse_importJobResponse,

    -- ** GetSegmentImportJobs
    getSegmentImportJobs_pageSize,
    getSegmentImportJobs_token,
    getSegmentImportJobs_segmentId,
    getSegmentImportJobs_applicationId,
    getSegmentImportJobsResponse_httpStatus,
    getSegmentImportJobsResponse_importJobsResponse,

    -- ** CreateJourney
    createJourney_applicationId,
    createJourney_writeJourneyRequest,
    createJourneyResponse_httpStatus,
    createJourneyResponse_journeyResponse,

    -- ** SendMessages
    sendMessages_applicationId,
    sendMessages_messageRequest,
    sendMessagesResponse_httpStatus,
    sendMessagesResponse_messageResponse,

    -- ** PhoneNumberValidate
    phoneNumberValidate_numberValidateRequest,
    phoneNumberValidateResponse_httpStatus,
    phoneNumberValidateResponse_numberValidateResponse,

    -- ** GetEmailChannel
    getEmailChannel_applicationId,
    getEmailChannelResponse_httpStatus,
    getEmailChannelResponse_emailChannelResponse,

    -- ** GetApnsChannel
    getApnsChannel_applicationId,
    getApnsChannelResponse_httpStatus,
    getApnsChannelResponse_aPNSChannelResponse,

    -- ** RemoveAttributes
    removeAttributes_attributeType,
    removeAttributes_applicationId,
    removeAttributes_updateAttributesRequest,
    removeAttributesResponse_httpStatus,
    removeAttributesResponse_attributesResource,

    -- ** CreateSmsTemplate
    createSmsTemplate_templateName,
    createSmsTemplate_sMSTemplateRequest,
    createSmsTemplateResponse_httpStatus,
    createSmsTemplateResponse_createTemplateMessageBody,

    -- ** PutEventStream
    putEventStream_applicationId,
    putEventStream_writeEventStream,
    putEventStreamResponse_httpStatus,
    putEventStreamResponse_eventStream,

    -- ** DeleteApnsChannel
    deleteApnsChannel_applicationId,
    deleteApnsChannelResponse_httpStatus,
    deleteApnsChannelResponse_aPNSChannelResponse,

    -- ** GetBaiduChannel
    getBaiduChannel_applicationId,
    getBaiduChannelResponse_httpStatus,
    getBaiduChannelResponse_baiduChannelResponse,

    -- ** GetJourneyExecutionActivityMetrics
    getJourneyExecutionActivityMetrics_nextToken,
    getJourneyExecutionActivityMetrics_pageSize,
    getJourneyExecutionActivityMetrics_journeyActivityId,
    getJourneyExecutionActivityMetrics_applicationId,
    getJourneyExecutionActivityMetrics_journeyId,
    getJourneyExecutionActivityMetricsResponse_httpStatus,
    getJourneyExecutionActivityMetricsResponse_journeyExecutionActivityMetricsResponse,

    -- ** UpdateApnsChannel
    updateApnsChannel_applicationId,
    updateApnsChannel_aPNSChannelRequest,
    updateApnsChannelResponse_httpStatus,
    updateApnsChannelResponse_aPNSChannelResponse,

    -- ** GetChannels
    getChannels_applicationId,
    getChannelsResponse_httpStatus,
    getChannelsResponse_channelsResponse,

    -- ** GetRecommenderConfigurations
    getRecommenderConfigurations_pageSize,
    getRecommenderConfigurations_token,
    getRecommenderConfigurationsResponse_httpStatus,
    getRecommenderConfigurationsResponse_listRecommenderConfigurationsResponse,

    -- ** UpdateApnsVoipSandboxChannel
    updateApnsVoipSandboxChannel_applicationId,
    updateApnsVoipSandboxChannel_aPNSVoipSandboxChannelRequest,
    updateApnsVoipSandboxChannelResponse_httpStatus,
    updateApnsVoipSandboxChannelResponse_aPNSVoipSandboxChannelResponse,

    -- ** DeleteGcmChannel
    deleteGcmChannel_applicationId,
    deleteGcmChannelResponse_httpStatus,
    deleteGcmChannelResponse_gCMChannelResponse,

    -- ** UpdateGcmChannel
    updateGcmChannel_applicationId,
    updateGcmChannel_gCMChannelRequest,
    updateGcmChannelResponse_httpStatus,
    updateGcmChannelResponse_gCMChannelResponse,

    -- ** GetVoiceChannel
    getVoiceChannel_applicationId,
    getVoiceChannelResponse_httpStatus,
    getVoiceChannelResponse_voiceChannelResponse,

    -- ** GetJourneyExecutionMetrics
    getJourneyExecutionMetrics_nextToken,
    getJourneyExecutionMetrics_pageSize,
    getJourneyExecutionMetrics_applicationId,
    getJourneyExecutionMetrics_journeyId,
    getJourneyExecutionMetricsResponse_httpStatus,
    getJourneyExecutionMetricsResponse_journeyExecutionMetricsResponse,

    -- ** UntagResource
    untagResource_tagKeys,
    untagResource_resourceArn,

    -- ** DeleteApnsVoipSandboxChannel
    deleteApnsVoipSandboxChannel_applicationId,
    deleteApnsVoipSandboxChannelResponse_httpStatus,
    deleteApnsVoipSandboxChannelResponse_aPNSVoipSandboxChannelResponse,

    -- ** TagResource
    tagResource_resourceArn,
    tagResource_tagsModel,

    -- ** GetSmsChannel
    getSmsChannel_applicationId,
    getSmsChannelResponse_httpStatus,
    getSmsChannelResponse_sMSChannelResponse,

    -- ** GetVoiceTemplate
    getVoiceTemplate_version,
    getVoiceTemplate_templateName,
    getVoiceTemplateResponse_httpStatus,
    getVoiceTemplateResponse_voiceTemplateResponse,

    -- ** GetInAppMessages
    getInAppMessages_applicationId,
    getInAppMessages_endpointId,
    getInAppMessagesResponse_httpStatus,
    getInAppMessagesResponse_inAppMessagesResponse,

    -- ** GetInAppTemplate
    getInAppTemplate_version,
    getInAppTemplate_templateName,
    getInAppTemplateResponse_httpStatus,
    getInAppTemplateResponse_inAppTemplateResponse,

    -- ** GetEndpoint
    getEndpoint_applicationId,
    getEndpoint_endpointId,
    getEndpointResponse_httpStatus,
    getEndpointResponse_endpointResponse,

    -- ** GetSegmentExportJobs
    getSegmentExportJobs_pageSize,
    getSegmentExportJobs_token,
    getSegmentExportJobs_segmentId,
    getSegmentExportJobs_applicationId,
    getSegmentExportJobsResponse_httpStatus,
    getSegmentExportJobsResponse_exportJobsResponse,

    -- ** GetApplicationDateRangeKpi
    getApplicationDateRangeKpi_nextToken,
    getApplicationDateRangeKpi_pageSize,
    getApplicationDateRangeKpi_startTime,
    getApplicationDateRangeKpi_endTime,
    getApplicationDateRangeKpi_applicationId,
    getApplicationDateRangeKpi_kpiName,
    getApplicationDateRangeKpiResponse_httpStatus,
    getApplicationDateRangeKpiResponse_applicationDateRangeKpiResponse,

    -- ** GetAdmChannel
    getAdmChannel_applicationId,
    getAdmChannelResponse_httpStatus,
    getAdmChannelResponse_aDMChannelResponse,

    -- ** GetRecommenderConfiguration
    getRecommenderConfiguration_recommenderId,
    getRecommenderConfigurationResponse_httpStatus,
    getRecommenderConfigurationResponse_recommenderConfigurationResponse,

    -- ** UpdateSegment
    updateSegment_segmentId,
    updateSegment_applicationId,
    updateSegment_writeSegmentRequest,
    updateSegmentResponse_httpStatus,
    updateSegmentResponse_segmentResponse,

    -- ** DeleteAdmChannel
    deleteAdmChannel_applicationId,
    deleteAdmChannelResponse_httpStatus,
    deleteAdmChannelResponse_aDMChannelResponse,

    -- ** DeleteEndpoint
    deleteEndpoint_applicationId,
    deleteEndpoint_endpointId,
    deleteEndpointResponse_httpStatus,
    deleteEndpointResponse_endpointResponse,

    -- ** DeleteSegment
    deleteSegment_segmentId,
    deleteSegment_applicationId,
    deleteSegmentResponse_httpStatus,
    deleteSegmentResponse_segmentResponse,

    -- ** DeleteRecommenderConfiguration
    deleteRecommenderConfiguration_recommenderId,
    deleteRecommenderConfigurationResponse_httpStatus,
    deleteRecommenderConfigurationResponse_recommenderConfigurationResponse,

    -- ** CreatePushTemplate
    createPushTemplate_templateName,
    createPushTemplate_pushNotificationTemplateRequest,
    createPushTemplateResponse_httpStatus,
    createPushTemplateResponse_createTemplateMessageBody,

    -- ** UpdateEndpoint
    updateEndpoint_applicationId,
    updateEndpoint_endpointId,
    updateEndpoint_endpointRequest,
    updateEndpointResponse_httpStatus,
    updateEndpointResponse_messageBody,

    -- ** UpdateRecommenderConfiguration
    updateRecommenderConfiguration'_recommenderId,
    updateRecommenderConfiguration'_updateRecommenderConfiguration,
    updateRecommenderConfigurationResponse_httpStatus,
    updateRecommenderConfigurationResponse_recommenderConfigurationResponse,

    -- ** GetEmailTemplate
    getEmailTemplate_version,
    getEmailTemplate_templateName,
    getEmailTemplateResponse_httpStatus,
    getEmailTemplateResponse_emailTemplateResponse,

    -- ** CreateCampaign
    createCampaign_applicationId,
    createCampaign_writeCampaignRequest,
    createCampaignResponse_httpStatus,
    createCampaignResponse_campaignResponse,

    -- ** UpdateAdmChannel
    updateAdmChannel_applicationId,
    updateAdmChannel_aDMChannelRequest,
    updateAdmChannelResponse_httpStatus,
    updateAdmChannelResponse_aDMChannelResponse,

    -- ** GetApp
    getApp_applicationId,
    getAppResponse_httpStatus,
    getAppResponse_applicationResponse,

    -- ** GetSegmentVersion
    getSegmentVersion_segmentId,
    getSegmentVersion_version,
    getSegmentVersion_applicationId,
    getSegmentVersionResponse_httpStatus,
    getSegmentVersionResponse_segmentResponse,

    -- ** UpdateSmsChannel
    updateSmsChannel_applicationId,
    updateSmsChannel_sMSChannelRequest,
    updateSmsChannelResponse_httpStatus,
    updateSmsChannelResponse_sMSChannelResponse,

    -- ** CreateSegment
    createSegment_applicationId,
    createSegment_writeSegmentRequest,
    createSegmentResponse_httpStatus,
    createSegmentResponse_segmentResponse,

    -- ** DeleteSmsChannel
    deleteSmsChannel_applicationId,
    deleteSmsChannelResponse_httpStatus,
    deleteSmsChannelResponse_sMSChannelResponse,

    -- ** GetUserEndpoints
    getUserEndpoints_applicationId,
    getUserEndpoints_userId,
    getUserEndpointsResponse_httpStatus,
    getUserEndpointsResponse_endpointsResponse,

    -- ** GetJourneyDateRangeKpi
    getJourneyDateRangeKpi_nextToken,
    getJourneyDateRangeKpi_pageSize,
    getJourneyDateRangeKpi_startTime,
    getJourneyDateRangeKpi_endTime,
    getJourneyDateRangeKpi_journeyId,
    getJourneyDateRangeKpi_applicationId,
    getJourneyDateRangeKpi_kpiName,
    getJourneyDateRangeKpiResponse_httpStatus,
    getJourneyDateRangeKpiResponse_journeyDateRangeKpiResponse,

    -- ** CreateExportJob
    createExportJob_applicationId,
    createExportJob_exportJobRequest,
    createExportJobResponse_httpStatus,
    createExportJobResponse_exportJobResponse,

    -- ** UpdateSmsTemplate
    updateSmsTemplate_version,
    updateSmsTemplate_createNewVersion,
    updateSmsTemplate_templateName,
    updateSmsTemplate_sMSTemplateRequest,
    updateSmsTemplateResponse_httpStatus,
    updateSmsTemplateResponse_messageBody,

    -- ** DeleteVoiceChannel
    deleteVoiceChannel_applicationId,
    deleteVoiceChannelResponse_httpStatus,
    deleteVoiceChannelResponse_voiceChannelResponse,

    -- ** GetGcmChannel
    getGcmChannel_applicationId,
    getGcmChannelResponse_httpStatus,
    getGcmChannelResponse_gCMChannelResponse,

    -- ** UpdateVoiceChannel
    updateVoiceChannel_applicationId,
    updateVoiceChannel_voiceChannelRequest,
    updateVoiceChannelResponse_httpStatus,
    updateVoiceChannelResponse_voiceChannelResponse,

    -- ** DeleteSmsTemplate
    deleteSmsTemplate_version,
    deleteSmsTemplate_templateName,
    deleteSmsTemplateResponse_httpStatus,
    deleteSmsTemplateResponse_messageBody,

    -- ** GetApnsVoipSandboxChannel
    getApnsVoipSandboxChannel_applicationId,
    getApnsVoipSandboxChannelResponse_httpStatus,
    getApnsVoipSandboxChannelResponse_aPNSVoipSandboxChannelResponse,

    -- ** UpdateBaiduChannel
    updateBaiduChannel_applicationId,
    updateBaiduChannel_baiduChannelRequest,
    updateBaiduChannelResponse_httpStatus,
    updateBaiduChannelResponse_baiduChannelResponse,

    -- ** DeleteEventStream
    deleteEventStream_applicationId,
    deleteEventStreamResponse_httpStatus,
    deleteEventStreamResponse_eventStream,

    -- ** GetCampaignVersions
    getCampaignVersions_pageSize,
    getCampaignVersions_token,
    getCampaignVersions_applicationId,
    getCampaignVersions_campaignId,
    getCampaignVersionsResponse_httpStatus,
    getCampaignVersionsResponse_campaignsResponse,

    -- ** DeleteBaiduChannel
    deleteBaiduChannel_applicationId,
    deleteBaiduChannelResponse_httpStatus,
    deleteBaiduChannelResponse_baiduChannelResponse,

    -- ** GetApplicationSettings
    getApplicationSettings_applicationId,
    getApplicationSettingsResponse_httpStatus,
    getApplicationSettingsResponse_applicationSettingsResource,

    -- ** GetCampaignDateRangeKpi
    getCampaignDateRangeKpi_nextToken,
    getCampaignDateRangeKpi_pageSize,
    getCampaignDateRangeKpi_startTime,
    getCampaignDateRangeKpi_endTime,
    getCampaignDateRangeKpi_applicationId,
    getCampaignDateRangeKpi_kpiName,
    getCampaignDateRangeKpi_campaignId,
    getCampaignDateRangeKpiResponse_httpStatus,
    getCampaignDateRangeKpiResponse_campaignDateRangeKpiResponse,

    -- ** ListJourneys
    listJourneys_pageSize,
    listJourneys_token,
    listJourneys_applicationId,
    listJourneysResponse_httpStatus,
    listJourneysResponse_journeysResponse,

    -- ** GetApnsVoipChannel
    getApnsVoipChannel_applicationId,
    getApnsVoipChannelResponse_httpStatus,
    getApnsVoipChannelResponse_aPNSVoipChannelResponse,

    -- ** UpdateJourney
    updateJourney_journeyId,
    updateJourney_applicationId,
    updateJourney_writeJourneyRequest,
    updateJourneyResponse_httpStatus,
    updateJourneyResponse_journeyResponse,

    -- ** ListTemplates
    listTemplates_nextToken,
    listTemplates_pageSize,
    listTemplates_prefix,
    listTemplates_templateType,
    listTemplatesResponse_httpStatus,
    listTemplatesResponse_templatesResponse,

    -- ** DeleteJourney
    deleteJourney_journeyId,
    deleteJourney_applicationId,
    deleteJourneyResponse_httpStatus,
    deleteJourneyResponse_journeyResponse,

    -- ** UpdateEmailChannel
    updateEmailChannel_applicationId,
    updateEmailChannel_emailChannelRequest,
    updateEmailChannelResponse_httpStatus,
    updateEmailChannelResponse_emailChannelResponse,

    -- ** UpdateJourneyState
    updateJourneyState_journeyId,
    updateJourneyState_applicationId,
    updateJourneyState_journeyStateRequest,
    updateJourneyStateResponse_httpStatus,
    updateJourneyStateResponse_journeyResponse,

    -- ** CreateImportJob
    createImportJob_applicationId,
    createImportJob_importJobRequest,
    createImportJobResponse_httpStatus,
    createImportJobResponse_importJobResponse,

    -- ** DeleteApnsVoipChannel
    deleteApnsVoipChannel_applicationId,
    deleteApnsVoipChannelResponse_httpStatus,
    deleteApnsVoipChannelResponse_aPNSVoipChannelResponse,

    -- ** GetJourney
    getJourney_journeyId,
    getJourney_applicationId,
    getJourneyResponse_httpStatus,
    getJourneyResponse_journeyResponse,

    -- ** GetExportJobs
    getExportJobs_pageSize,
    getExportJobs_token,
    getExportJobs_applicationId,
    getExportJobsResponse_httpStatus,
    getExportJobsResponse_exportJobsResponse,

    -- ** PutEvents
    putEvents_applicationId,
    putEvents_eventsRequest,
    putEventsResponse_httpStatus,
    putEventsResponse_eventsResponse,

    -- ** DeleteEmailChannel
    deleteEmailChannel_applicationId,
    deleteEmailChannelResponse_httpStatus,
    deleteEmailChannelResponse_emailChannelResponse,

    -- ** UpdateApplicationSettings
    updateApplicationSettings_applicationId,
    updateApplicationSettings_writeApplicationSettingsRequest,
    updateApplicationSettingsResponse_httpStatus,
    updateApplicationSettingsResponse_applicationSettingsResource,

    -- ** SendUsersMessages
    sendUsersMessages_applicationId,
    sendUsersMessages_sendUsersMessageRequest,
    sendUsersMessagesResponse_httpStatus,
    sendUsersMessagesResponse_sendUsersMessageResponse,

    -- ** GetSegments
    getSegments_pageSize,
    getSegments_token,
    getSegments_applicationId,
    getSegmentsResponse_httpStatus,
    getSegmentsResponse_segmentsResponse,

    -- ** GetEventStream
    getEventStream_applicationId,
    getEventStreamResponse_httpStatus,
    getEventStreamResponse_eventStream,

    -- ** UpdateApnsVoipChannel
    updateApnsVoipChannel_applicationId,
    updateApnsVoipChannel_aPNSVoipChannelRequest,
    updateApnsVoipChannelResponse_httpStatus,
    updateApnsVoipChannelResponse_aPNSVoipChannelResponse,

    -- ** GetSmsTemplate
    getSmsTemplate_version,
    getSmsTemplate_templateName,
    getSmsTemplateResponse_httpStatus,
    getSmsTemplateResponse_sMSTemplateResponse,

    -- ** DeleteApnsSandboxChannel
    deleteApnsSandboxChannel_applicationId,
    deleteApnsSandboxChannelResponse_httpStatus,
    deleteApnsSandboxChannelResponse_aPNSSandboxChannelResponse,

    -- ** ListTemplateVersions
    listTemplateVersions_nextToken,
    listTemplateVersions_pageSize,
    listTemplateVersions_templateName,
    listTemplateVersions_templateType,
    listTemplateVersionsResponse_httpStatus,
    listTemplateVersionsResponse_templateVersionsResponse,

    -- ** GetCampaignActivities
    getCampaignActivities_pageSize,
    getCampaignActivities_token,
    getCampaignActivities_applicationId,
    getCampaignActivities_campaignId,
    getCampaignActivitiesResponse_httpStatus,
    getCampaignActivitiesResponse_activitiesResponse,

    -- ** GetCampaigns
    getCampaigns_pageSize,
    getCampaigns_token,
    getCampaigns_applicationId,
    getCampaignsResponse_httpStatus,
    getCampaignsResponse_campaignsResponse,

    -- ** UpdateApnsSandboxChannel
    updateApnsSandboxChannel_applicationId,
    updateApnsSandboxChannel_aPNSSandboxChannelRequest,
    updateApnsSandboxChannelResponse_httpStatus,
    updateApnsSandboxChannelResponse_aPNSSandboxChannelResponse,

    -- ** GetCampaign
    getCampaign_campaignId,
    getCampaign_applicationId,
    getCampaignResponse_httpStatus,
    getCampaignResponse_campaignResponse,

    -- ** DeleteUserEndpoints
    deleteUserEndpoints_applicationId,
    deleteUserEndpoints_userId,
    deleteUserEndpointsResponse_httpStatus,
    deleteUserEndpointsResponse_endpointsResponse,

    -- ** GetPushTemplate
    getPushTemplate_version,
    getPushTemplate_templateName,
    getPushTemplateResponse_httpStatus,
    getPushTemplateResponse_pushNotificationTemplateResponse,

    -- ** DeleteApp
    deleteApp_applicationId,
    deleteAppResponse_httpStatus,
    deleteAppResponse_applicationResponse,

    -- ** CreateEmailTemplate
    createEmailTemplate_templateName,
    createEmailTemplate_emailTemplateRequest,
    createEmailTemplateResponse_httpStatus,
    createEmailTemplateResponse_createTemplateMessageBody,

    -- ** GetSegment
    getSegment_segmentId,
    getSegment_applicationId,
    getSegmentResponse_httpStatus,
    getSegmentResponse_segmentResponse,

    -- ** UpdateEndpointsBatch
    updateEndpointsBatch_applicationId,
    updateEndpointsBatch_endpointBatchRequest,
    updateEndpointsBatchResponse_httpStatus,
    updateEndpointsBatchResponse_messageBody,

    -- ** CreateApp
    createApp_createApplicationRequest,
    createAppResponse_httpStatus,
    createAppResponse_applicationResponse,

    -- ** GetExportJob
    getExportJob_applicationId,
    getExportJob_jobId,
    getExportJobResponse_httpStatus,
    getExportJobResponse_exportJobResponse,

    -- ** DeleteEmailTemplate
    deleteEmailTemplate_version,
    deleteEmailTemplate_templateName,
    deleteEmailTemplateResponse_httpStatus,
    deleteEmailTemplateResponse_messageBody,

    -- ** UpdateEmailTemplate
    updateEmailTemplate_version,
    updateEmailTemplate_createNewVersion,
    updateEmailTemplate_templateName,
    updateEmailTemplate_emailTemplateRequest,
    updateEmailTemplateResponse_httpStatus,
    updateEmailTemplateResponse_messageBody,

    -- ** CreateVoiceTemplate
    createVoiceTemplate_templateName,
    createVoiceTemplate_voiceTemplateRequest,
    createVoiceTemplateResponse_httpStatus,
    createVoiceTemplateResponse_createTemplateMessageBody,

    -- ** ListTagsForResource
    listTagsForResource_resourceArn,
    listTagsForResourceResponse_httpStatus,
    listTagsForResourceResponse_tagsModel,

    -- ** GetCampaignVersion
    getCampaignVersion_version,
    getCampaignVersion_applicationId,
    getCampaignVersion_campaignId,
    getCampaignVersionResponse_httpStatus,
    getCampaignVersionResponse_campaignResponse,

    -- ** CreateInAppTemplate
    createInAppTemplate_templateName,
    createInAppTemplate_inAppTemplateRequest,
    createInAppTemplateResponse_httpStatus,
    createInAppTemplateResponse_templateCreateMessageBody,

    -- * Types

    -- ** ADMChannelRequest
    aDMChannelRequest_enabled,
    aDMChannelRequest_clientSecret,
    aDMChannelRequest_clientId,

    -- ** ADMChannelResponse
    aDMChannelResponse_applicationId,
    aDMChannelResponse_lastModifiedDate,
    aDMChannelResponse_hasCredential,
    aDMChannelResponse_enabled,
    aDMChannelResponse_creationDate,
    aDMChannelResponse_id,
    aDMChannelResponse_version,
    aDMChannelResponse_isArchived,
    aDMChannelResponse_lastModifiedBy,
    aDMChannelResponse_platform,

    -- ** ADMMessage
    aDMMessage_silentPush,
    aDMMessage_imageIconUrl,
    aDMMessage_expiresAfter,
    aDMMessage_body,
    aDMMessage_iconReference,
    aDMMessage_data,
    aDMMessage_title,
    aDMMessage_consolidationKey,
    aDMMessage_imageUrl,
    aDMMessage_md5,
    aDMMessage_substitutions,
    aDMMessage_action,
    aDMMessage_url,
    aDMMessage_sound,
    aDMMessage_smallImageIconUrl,
    aDMMessage_rawContent,

    -- ** APNSChannelRequest
    aPNSChannelRequest_defaultAuthenticationMethod,
    aPNSChannelRequest_tokenKey,
    aPNSChannelRequest_bundleId,
    aPNSChannelRequest_teamId,
    aPNSChannelRequest_enabled,
    aPNSChannelRequest_privateKey,
    aPNSChannelRequest_tokenKeyId,
    aPNSChannelRequest_certificate,

    -- ** APNSChannelResponse
    aPNSChannelResponse_applicationId,
    aPNSChannelResponse_lastModifiedDate,
    aPNSChannelResponse_defaultAuthenticationMethod,
    aPNSChannelResponse_hasCredential,
    aPNSChannelResponse_hasTokenKey,
    aPNSChannelResponse_enabled,
    aPNSChannelResponse_creationDate,
    aPNSChannelResponse_id,
    aPNSChannelResponse_version,
    aPNSChannelResponse_isArchived,
    aPNSChannelResponse_lastModifiedBy,
    aPNSChannelResponse_platform,

    -- ** APNSMessage
    aPNSMessage_silentPush,
    aPNSMessage_collapseId,
    aPNSMessage_body,
    aPNSMessage_category,
    aPNSMessage_data,
    aPNSMessage_title,
    aPNSMessage_timeToLive,
    aPNSMessage_aPNSPushType,
    aPNSMessage_preferredAuthenticationMethod,
    aPNSMessage_priority,
    aPNSMessage_mediaUrl,
    aPNSMessage_substitutions,
    aPNSMessage_action,
    aPNSMessage_url,
    aPNSMessage_threadId,
    aPNSMessage_sound,
    aPNSMessage_badge,
    aPNSMessage_rawContent,

    -- ** APNSPushNotificationTemplate
    aPNSPushNotificationTemplate_body,
    aPNSPushNotificationTemplate_title,
    aPNSPushNotificationTemplate_mediaUrl,
    aPNSPushNotificationTemplate_action,
    aPNSPushNotificationTemplate_url,
    aPNSPushNotificationTemplate_sound,
    aPNSPushNotificationTemplate_rawContent,

    -- ** APNSSandboxChannelRequest
    aPNSSandboxChannelRequest_defaultAuthenticationMethod,
    aPNSSandboxChannelRequest_tokenKey,
    aPNSSandboxChannelRequest_bundleId,
    aPNSSandboxChannelRequest_teamId,
    aPNSSandboxChannelRequest_enabled,
    aPNSSandboxChannelRequest_privateKey,
    aPNSSandboxChannelRequest_tokenKeyId,
    aPNSSandboxChannelRequest_certificate,

    -- ** APNSSandboxChannelResponse
    aPNSSandboxChannelResponse_applicationId,
    aPNSSandboxChannelResponse_lastModifiedDate,
    aPNSSandboxChannelResponse_defaultAuthenticationMethod,
    aPNSSandboxChannelResponse_hasCredential,
    aPNSSandboxChannelResponse_hasTokenKey,
    aPNSSandboxChannelResponse_enabled,
    aPNSSandboxChannelResponse_creationDate,
    aPNSSandboxChannelResponse_id,
    aPNSSandboxChannelResponse_version,
    aPNSSandboxChannelResponse_isArchived,
    aPNSSandboxChannelResponse_lastModifiedBy,
    aPNSSandboxChannelResponse_platform,

    -- ** APNSVoipChannelRequest
    aPNSVoipChannelRequest_defaultAuthenticationMethod,
    aPNSVoipChannelRequest_tokenKey,
    aPNSVoipChannelRequest_bundleId,
    aPNSVoipChannelRequest_teamId,
    aPNSVoipChannelRequest_enabled,
    aPNSVoipChannelRequest_privateKey,
    aPNSVoipChannelRequest_tokenKeyId,
    aPNSVoipChannelRequest_certificate,

    -- ** APNSVoipChannelResponse
    aPNSVoipChannelResponse_applicationId,
    aPNSVoipChannelResponse_lastModifiedDate,
    aPNSVoipChannelResponse_defaultAuthenticationMethod,
    aPNSVoipChannelResponse_hasCredential,
    aPNSVoipChannelResponse_hasTokenKey,
    aPNSVoipChannelResponse_enabled,
    aPNSVoipChannelResponse_creationDate,
    aPNSVoipChannelResponse_id,
    aPNSVoipChannelResponse_version,
    aPNSVoipChannelResponse_isArchived,
    aPNSVoipChannelResponse_lastModifiedBy,
    aPNSVoipChannelResponse_platform,

    -- ** APNSVoipSandboxChannelRequest
    aPNSVoipSandboxChannelRequest_defaultAuthenticationMethod,
    aPNSVoipSandboxChannelRequest_tokenKey,
    aPNSVoipSandboxChannelRequest_bundleId,
    aPNSVoipSandboxChannelRequest_teamId,
    aPNSVoipSandboxChannelRequest_enabled,
    aPNSVoipSandboxChannelRequest_privateKey,
    aPNSVoipSandboxChannelRequest_tokenKeyId,
    aPNSVoipSandboxChannelRequest_certificate,

    -- ** APNSVoipSandboxChannelResponse
    aPNSVoipSandboxChannelResponse_applicationId,
    aPNSVoipSandboxChannelResponse_lastModifiedDate,
    aPNSVoipSandboxChannelResponse_defaultAuthenticationMethod,
    aPNSVoipSandboxChannelResponse_hasCredential,
    aPNSVoipSandboxChannelResponse_hasTokenKey,
    aPNSVoipSandboxChannelResponse_enabled,
    aPNSVoipSandboxChannelResponse_creationDate,
    aPNSVoipSandboxChannelResponse_id,
    aPNSVoipSandboxChannelResponse_version,
    aPNSVoipSandboxChannelResponse_isArchived,
    aPNSVoipSandboxChannelResponse_lastModifiedBy,
    aPNSVoipSandboxChannelResponse_platform,

    -- ** ActivitiesResponse
    activitiesResponse_nextToken,
    activitiesResponse_item,

    -- ** Activity
    activity_conditionalSplit,
    activity_push,
    activity_wait,
    activity_custom,
    activity_multiCondition,
    activity_email,
    activity_holdout,
    activity_randomSplit,
    activity_description,
    activity_contactCenter,
    activity_sms,

    -- ** ActivityResponse
    activityResponse_end,
    activityResponse_successfulEndpointCount,
    activityResponse_result,
    activityResponse_timezonesCompletedCount,
    activityResponse_state,
    activityResponse_treatmentId,
    activityResponse_scheduledStart,
    activityResponse_timezonesTotalCount,
    activityResponse_start,
    activityResponse_totalEndpointCount,
    activityResponse_campaignId,
    activityResponse_id,
    activityResponse_applicationId,

    -- ** AddressConfiguration
    addressConfiguration_channelType,
    addressConfiguration_context,
    addressConfiguration_bodyOverride,
    addressConfiguration_substitutions,
    addressConfiguration_titleOverride,
    addressConfiguration_rawContent,

    -- ** AndroidPushNotificationTemplate
    androidPushNotificationTemplate_imageIconUrl,
    androidPushNotificationTemplate_body,
    androidPushNotificationTemplate_title,
    androidPushNotificationTemplate_imageUrl,
    androidPushNotificationTemplate_action,
    androidPushNotificationTemplate_url,
    androidPushNotificationTemplate_sound,
    androidPushNotificationTemplate_smallImageIconUrl,
    androidPushNotificationTemplate_rawContent,

    -- ** ApplicationDateRangeKpiResponse
    applicationDateRangeKpiResponse_nextToken,
    applicationDateRangeKpiResponse_kpiResult,
    applicationDateRangeKpiResponse_kpiName,
    applicationDateRangeKpiResponse_endTime,
    applicationDateRangeKpiResponse_startTime,
    applicationDateRangeKpiResponse_applicationId,

    -- ** ApplicationResponse
    applicationResponse_tags,
    applicationResponse_id,
    applicationResponse_arn,
    applicationResponse_name,

    -- ** ApplicationSettingsResource
    applicationSettingsResource_lastModifiedDate,
    applicationSettingsResource_campaignHook,
    applicationSettingsResource_quietTime,
    applicationSettingsResource_limits,
    applicationSettingsResource_applicationId,

    -- ** ApplicationsResponse
    applicationsResponse_nextToken,
    applicationsResponse_item,

    -- ** AttributeDimension
    attributeDimension_attributeType,
    attributeDimension_values,

    -- ** AttributesResource
    attributesResource_attributes,
    attributesResource_attributeType,
    attributesResource_applicationId,

    -- ** BaiduChannelRequest
    baiduChannelRequest_enabled,
    baiduChannelRequest_secretKey,
    baiduChannelRequest_apiKey,

    -- ** BaiduChannelResponse
    baiduChannelResponse_applicationId,
    baiduChannelResponse_lastModifiedDate,
    baiduChannelResponse_hasCredential,
    baiduChannelResponse_enabled,
    baiduChannelResponse_creationDate,
    baiduChannelResponse_id,
    baiduChannelResponse_version,
    baiduChannelResponse_isArchived,
    baiduChannelResponse_lastModifiedBy,
    baiduChannelResponse_credential,
    baiduChannelResponse_platform,

    -- ** BaiduMessage
    baiduMessage_silentPush,
    baiduMessage_imageIconUrl,
    baiduMessage_body,
    baiduMessage_iconReference,
    baiduMessage_data,
    baiduMessage_title,
    baiduMessage_timeToLive,
    baiduMessage_imageUrl,
    baiduMessage_substitutions,
    baiduMessage_action,
    baiduMessage_url,
    baiduMessage_sound,
    baiduMessage_smallImageIconUrl,
    baiduMessage_rawContent,

    -- ** BaseKpiResult
    baseKpiResult_rows,

    -- ** CampaignCustomMessage
    campaignCustomMessage_data,

    -- ** CampaignDateRangeKpiResponse
    campaignDateRangeKpiResponse_nextToken,
    campaignDateRangeKpiResponse_kpiResult,
    campaignDateRangeKpiResponse_kpiName,
    campaignDateRangeKpiResponse_endTime,
    campaignDateRangeKpiResponse_campaignId,
    campaignDateRangeKpiResponse_startTime,
    campaignDateRangeKpiResponse_applicationId,

    -- ** CampaignEmailMessage
    campaignEmailMessage_body,
    campaignEmailMessage_title,
    campaignEmailMessage_htmlBody,
    campaignEmailMessage_fromAddress,

    -- ** CampaignEventFilter
    campaignEventFilter_filterType,
    campaignEventFilter_dimensions,

    -- ** CampaignHook
    campaignHook_mode,
    campaignHook_lambdaFunctionName,
    campaignHook_webUrl,

    -- ** CampaignInAppMessage
    campaignInAppMessage_customConfig,
    campaignInAppMessage_body,
    campaignInAppMessage_layout,
    campaignInAppMessage_content,

    -- ** CampaignLimits
    campaignLimits_total,
    campaignLimits_messagesPerSecond,
    campaignLimits_daily,
    campaignLimits_maximumDuration,
    campaignLimits_session,

    -- ** CampaignResponse
    campaignResponse_additionalTreatments,
    campaignResponse_hook,
    campaignResponse_version,
    campaignResponse_priority,
    campaignResponse_name,
    campaignResponse_customDeliveryConfiguration,
    campaignResponse_state,
    campaignResponse_isPaused,
    campaignResponse_defaultState,
    campaignResponse_tags,
    campaignResponse_limits,
    campaignResponse_description,
    campaignResponse_messageConfiguration,
    campaignResponse_treatmentName,
    campaignResponse_templateConfiguration,
    campaignResponse_schedule,
    campaignResponse_holdoutPercent,
    campaignResponse_treatmentDescription,
    campaignResponse_lastModifiedDate,
    campaignResponse_creationDate,
    campaignResponse_segmentId,
    campaignResponse_segmentVersion,
    campaignResponse_id,
    campaignResponse_arn,
    campaignResponse_applicationId,

    -- ** CampaignSmsMessage
    campaignSmsMessage_entityId,
    campaignSmsMessage_body,
    campaignSmsMessage_senderId,
    campaignSmsMessage_messageType,
    campaignSmsMessage_templateId,
    campaignSmsMessage_originationNumber,

    -- ** CampaignState
    campaignState_campaignStatus,

    -- ** CampaignsResponse
    campaignsResponse_nextToken,
    campaignsResponse_item,

    -- ** ChannelResponse
    channelResponse_applicationId,
    channelResponse_lastModifiedDate,
    channelResponse_hasCredential,
    channelResponse_enabled,
    channelResponse_creationDate,
    channelResponse_id,
    channelResponse_version,
    channelResponse_isArchived,
    channelResponse_lastModifiedBy,

    -- ** ChannelsResponse
    channelsResponse_channels,

    -- ** Condition
    condition_operator,
    condition_conditions,

    -- ** ConditionalSplitActivity
    conditionalSplitActivity_trueActivity,
    conditionalSplitActivity_condition,
    conditionalSplitActivity_evaluationWaitTime,
    conditionalSplitActivity_falseActivity,

    -- ** ContactCenterActivity
    contactCenterActivity_nextActivity,

    -- ** CreateApplicationRequest
    createApplicationRequest_tags,
    createApplicationRequest_name,

    -- ** CreateRecommenderConfiguration
    createRecommenderConfiguration_recommendationsDisplayName,
    createRecommenderConfiguration_recommendationTransformerUri,
    createRecommenderConfiguration_name,
    createRecommenderConfiguration_attributes,
    createRecommenderConfiguration_description,
    createRecommenderConfiguration_recommendationsPerMessage,
    createRecommenderConfiguration_recommendationProviderIdType,
    createRecommenderConfiguration_recommendationProviderUri,
    createRecommenderConfiguration_recommendationProviderRoleArn,

    -- ** CreateTemplateMessageBody
    createTemplateMessageBody_message,
    createTemplateMessageBody_arn,
    createTemplateMessageBody_requestID,

    -- ** CustomDeliveryConfiguration
    customDeliveryConfiguration_endpointTypes,
    customDeliveryConfiguration_deliveryUri,

    -- ** CustomMessageActivity
    customMessageActivity_templateName,
    customMessageActivity_messageConfig,
    customMessageActivity_deliveryUri,
    customMessageActivity_endpointTypes,
    customMessageActivity_templateVersion,
    customMessageActivity_nextActivity,

    -- ** DefaultButtonConfiguration
    defaultButtonConfiguration_link,
    defaultButtonConfiguration_textColor,
    defaultButtonConfiguration_borderRadius,
    defaultButtonConfiguration_backgroundColor,
    defaultButtonConfiguration_buttonAction,
    defaultButtonConfiguration_text,

    -- ** DefaultMessage
    defaultMessage_body,
    defaultMessage_substitutions,

    -- ** DefaultPushNotificationMessage
    defaultPushNotificationMessage_silentPush,
    defaultPushNotificationMessage_body,
    defaultPushNotificationMessage_data,
    defaultPushNotificationMessage_title,
    defaultPushNotificationMessage_substitutions,
    defaultPushNotificationMessage_action,
    defaultPushNotificationMessage_url,

    -- ** DefaultPushNotificationTemplate
    defaultPushNotificationTemplate_body,
    defaultPushNotificationTemplate_title,
    defaultPushNotificationTemplate_action,
    defaultPushNotificationTemplate_url,
    defaultPushNotificationTemplate_sound,

    -- ** DirectMessageConfiguration
    directMessageConfiguration_aDMMessage,
    directMessageConfiguration_defaultMessage,
    directMessageConfiguration_voiceMessage,
    directMessageConfiguration_gCMMessage,
    directMessageConfiguration_emailMessage,
    directMessageConfiguration_aPNSMessage,
    directMessageConfiguration_sMSMessage,
    directMessageConfiguration_defaultPushNotificationMessage,
    directMessageConfiguration_baiduMessage,

    -- ** EmailChannelRequest
    emailChannelRequest_roleArn,
    emailChannelRequest_enabled,
    emailChannelRequest_configurationSet,
    emailChannelRequest_fromAddress,
    emailChannelRequest_identity,

    -- ** EmailChannelResponse
    emailChannelResponse_applicationId,
    emailChannelResponse_lastModifiedDate,
    emailChannelResponse_hasCredential,
    emailChannelResponse_roleArn,
    emailChannelResponse_identity,
    emailChannelResponse_enabled,
    emailChannelResponse_creationDate,
    emailChannelResponse_id,
    emailChannelResponse_version,
    emailChannelResponse_messagesPerSecond,
    emailChannelResponse_isArchived,
    emailChannelResponse_fromAddress,
    emailChannelResponse_lastModifiedBy,
    emailChannelResponse_configurationSet,
    emailChannelResponse_platform,

    -- ** EmailMessage
    emailMessage_feedbackForwardingAddress,
    emailMessage_body,
    emailMessage_rawEmail,
    emailMessage_simpleEmail,
    emailMessage_substitutions,
    emailMessage_replyToAddresses,
    emailMessage_fromAddress,

    -- ** EmailMessageActivity
    emailMessageActivity_templateName,
    emailMessageActivity_messageConfig,
    emailMessageActivity_templateVersion,
    emailMessageActivity_nextActivity,

    -- ** EmailTemplateRequest
    emailTemplateRequest_templateDescription,
    emailTemplateRequest_textPart,
    emailTemplateRequest_defaultSubstitutions,
    emailTemplateRequest_subject,
    emailTemplateRequest_tags,
    emailTemplateRequest_recommenderId,
    emailTemplateRequest_htmlPart,

    -- ** EmailTemplateResponse
    emailTemplateResponse_templateDescription,
    emailTemplateResponse_arn,
    emailTemplateResponse_version,
    emailTemplateResponse_textPart,
    emailTemplateResponse_defaultSubstitutions,
    emailTemplateResponse_subject,
    emailTemplateResponse_tags,
    emailTemplateResponse_recommenderId,
    emailTemplateResponse_htmlPart,
    emailTemplateResponse_lastModifiedDate,
    emailTemplateResponse_creationDate,
    emailTemplateResponse_templateName,
    emailTemplateResponse_templateType,

    -- ** EndpointBatchItem
    endpointBatchItem_user,
    endpointBatchItem_address,
    endpointBatchItem_channelType,
    endpointBatchItem_id,
    endpointBatchItem_optOut,
    endpointBatchItem_demographic,
    endpointBatchItem_attributes,
    endpointBatchItem_metrics,
    endpointBatchItem_endpointStatus,
    endpointBatchItem_requestId,
    endpointBatchItem_effectiveDate,
    endpointBatchItem_location,

    -- ** EndpointBatchRequest
    endpointBatchRequest_item,

    -- ** EndpointDemographic
    endpointDemographic_model,
    endpointDemographic_platform,
    endpointDemographic_appVersion,
    endpointDemographic_locale,
    endpointDemographic_modelVersion,
    endpointDemographic_platformVersion,
    endpointDemographic_timezone,
    endpointDemographic_make,

    -- ** EndpointItemResponse
    endpointItemResponse_message,
    endpointItemResponse_statusCode,

    -- ** EndpointLocation
    endpointLocation_longitude,
    endpointLocation_postalCode,
    endpointLocation_latitude,
    endpointLocation_city,
    endpointLocation_country,
    endpointLocation_region,

    -- ** EndpointMessageResult
    endpointMessageResult_statusMessage,
    endpointMessageResult_updatedToken,
    endpointMessageResult_address,
    endpointMessageResult_messageId,
    endpointMessageResult_deliveryStatus,
    endpointMessageResult_statusCode,

    -- ** EndpointRequest
    endpointRequest_user,
    endpointRequest_address,
    endpointRequest_channelType,
    endpointRequest_optOut,
    endpointRequest_demographic,
    endpointRequest_attributes,
    endpointRequest_metrics,
    endpointRequest_endpointStatus,
    endpointRequest_requestId,
    endpointRequest_effectiveDate,
    endpointRequest_location,

    -- ** EndpointResponse
    endpointResponse_applicationId,
    endpointResponse_user,
    endpointResponse_address,
    endpointResponse_channelType,
    endpointResponse_cohortId,
    endpointResponse_creationDate,
    endpointResponse_id,
    endpointResponse_optOut,
    endpointResponse_demographic,
    endpointResponse_attributes,
    endpointResponse_metrics,
    endpointResponse_endpointStatus,
    endpointResponse_requestId,
    endpointResponse_effectiveDate,
    endpointResponse_location,

    -- ** EndpointSendConfiguration
    endpointSendConfiguration_context,
    endpointSendConfiguration_bodyOverride,
    endpointSendConfiguration_substitutions,
    endpointSendConfiguration_titleOverride,
    endpointSendConfiguration_rawContent,

    -- ** EndpointUser
    endpointUser_userId,
    endpointUser_userAttributes,

    -- ** EndpointsResponse
    endpointsResponse_item,

    -- ** Event
    event_clientSdkVersion,
    event_appTitle,
    event_sdkName,
    event_attributes,
    event_metrics,
    event_appPackageName,
    event_session,
    event_appVersionCode,
    event_eventType,
    event_timestamp,

    -- ** EventCondition
    eventCondition_messageActivity,
    eventCondition_dimensions,

    -- ** EventDimensions
    eventDimensions_eventType,
    eventDimensions_attributes,
    eventDimensions_metrics,

    -- ** EventFilter
    eventFilter_filterType,
    eventFilter_dimensions,

    -- ** EventItemResponse
    eventItemResponse_message,
    eventItemResponse_statusCode,

    -- ** EventStartCondition
    eventStartCondition_eventFilter,
    eventStartCondition_segmentId,

    -- ** EventStream
    eventStream_lastModifiedDate,
    eventStream_lastUpdatedBy,
    eventStream_externalId,
    eventStream_applicationId,
    eventStream_roleArn,
    eventStream_destinationStreamArn,

    -- ** EventsBatch
    eventsBatch_endpoint,
    eventsBatch_events,

    -- ** EventsRequest
    eventsRequest_batchItem,

    -- ** EventsResponse
    eventsResponse_results,

    -- ** ExportJobRequest
    exportJobRequest_segmentVersion,
    exportJobRequest_segmentId,
    exportJobRequest_s3UrlPrefix,
    exportJobRequest_roleArn,

    -- ** ExportJobResource
    exportJobResource_segmentVersion,
    exportJobResource_segmentId,
    exportJobResource_s3UrlPrefix,
    exportJobResource_roleArn,

    -- ** ExportJobResponse
    exportJobResponse_totalFailures,
    exportJobResponse_failures,
    exportJobResponse_totalProcessed,
    exportJobResponse_failedPieces,
    exportJobResponse_completedPieces,
    exportJobResponse_totalPieces,
    exportJobResponse_completionDate,
    exportJobResponse_jobStatus,
    exportJobResponse_creationDate,
    exportJobResponse_type,
    exportJobResponse_definition,
    exportJobResponse_id,
    exportJobResponse_applicationId,

    -- ** ExportJobsResponse
    exportJobsResponse_nextToken,
    exportJobsResponse_item,

    -- ** GCMChannelRequest
    gCMChannelRequest_enabled,
    gCMChannelRequest_apiKey,

    -- ** GCMChannelResponse
    gCMChannelResponse_applicationId,
    gCMChannelResponse_lastModifiedDate,
    gCMChannelResponse_hasCredential,
    gCMChannelResponse_enabled,
    gCMChannelResponse_creationDate,
    gCMChannelResponse_id,
    gCMChannelResponse_version,
    gCMChannelResponse_isArchived,
    gCMChannelResponse_lastModifiedBy,
    gCMChannelResponse_credential,
    gCMChannelResponse_platform,

    -- ** GCMMessage
    gCMMessage_silentPush,
    gCMMessage_imageIconUrl,
    gCMMessage_collapseKey,
    gCMMessage_body,
    gCMMessage_iconReference,
    gCMMessage_data,
    gCMMessage_title,
    gCMMessage_timeToLive,
    gCMMessage_priority,
    gCMMessage_imageUrl,
    gCMMessage_substitutions,
    gCMMessage_action,
    gCMMessage_url,
    gCMMessage_sound,
    gCMMessage_restrictedPackageName,
    gCMMessage_smallImageIconUrl,
    gCMMessage_rawContent,

    -- ** GPSCoordinates
    gPSCoordinates_latitude,
    gPSCoordinates_longitude,

    -- ** GPSPointDimension
    gPSPointDimension_rangeInKilometers,
    gPSPointDimension_coordinates,

    -- ** HoldoutActivity
    holdoutActivity_nextActivity,
    holdoutActivity_percentage,

    -- ** ImportJobRequest
    importJobRequest_defineSegment,
    importJobRequest_segmentName,
    importJobRequest_registerEndpoints,
    importJobRequest_segmentId,
    importJobRequest_externalId,
    importJobRequest_format,
    importJobRequest_s3Url,
    importJobRequest_roleArn,

    -- ** ImportJobResource
    importJobResource_defineSegment,
    importJobResource_segmentName,
    importJobResource_registerEndpoints,
    importJobResource_segmentId,
    importJobResource_externalId,
    importJobResource_format,
    importJobResource_s3Url,
    importJobResource_roleArn,

    -- ** ImportJobResponse
    importJobResponse_totalFailures,
    importJobResponse_failures,
    importJobResponse_totalProcessed,
    importJobResponse_failedPieces,
    importJobResponse_completedPieces,
    importJobResponse_totalPieces,
    importJobResponse_completionDate,
    importJobResponse_jobStatus,
    importJobResponse_creationDate,
    importJobResponse_type,
    importJobResponse_definition,
    importJobResponse_id,
    importJobResponse_applicationId,

    -- ** ImportJobsResponse
    importJobsResponse_nextToken,
    importJobsResponse_item,

    -- ** InAppCampaignSchedule
    inAppCampaignSchedule_eventFilter,
    inAppCampaignSchedule_quietTime,
    inAppCampaignSchedule_endDate,

    -- ** InAppMessage
    inAppMessage_customConfig,
    inAppMessage_layout,
    inAppMessage_content,

    -- ** InAppMessageBodyConfig
    inAppMessageBodyConfig_alignment,
    inAppMessageBodyConfig_textColor,
    inAppMessageBodyConfig_body,

    -- ** InAppMessageButton
    inAppMessageButton_android,
    inAppMessageButton_web,
    inAppMessageButton_ios,
    inAppMessageButton_defaultConfig,

    -- ** InAppMessageCampaign
    inAppMessageCampaign_sessionCap,
    inAppMessageCampaign_campaignId,
    inAppMessageCampaign_inAppMessage,
    inAppMessageCampaign_priority,
    inAppMessageCampaign_treatmentId,
    inAppMessageCampaign_dailyCap,
    inAppMessageCampaign_totalCap,
    inAppMessageCampaign_schedule,

    -- ** InAppMessageContent
    inAppMessageContent_primaryBtn,
    inAppMessageContent_headerConfig,
    inAppMessageContent_bodyConfig,
    inAppMessageContent_imageUrl,
    inAppMessageContent_backgroundColor,
    inAppMessageContent_secondaryBtn,

    -- ** InAppMessageHeaderConfig
    inAppMessageHeaderConfig_alignment,
    inAppMessageHeaderConfig_header,
    inAppMessageHeaderConfig_textColor,

    -- ** InAppMessagesResponse
    inAppMessagesResponse_inAppMessageCampaigns,

    -- ** InAppTemplateRequest
    inAppTemplateRequest_customConfig,
    inAppTemplateRequest_templateDescription,
    inAppTemplateRequest_layout,
    inAppTemplateRequest_content,
    inAppTemplateRequest_tags,

    -- ** InAppTemplateResponse
    inAppTemplateResponse_customConfig,
    inAppTemplateResponse_templateDescription,
    inAppTemplateResponse_arn,
    inAppTemplateResponse_layout,
    inAppTemplateResponse_version,
    inAppTemplateResponse_content,
    inAppTemplateResponse_tags,
    inAppTemplateResponse_lastModifiedDate,
    inAppTemplateResponse_creationDate,
    inAppTemplateResponse_templateName,
    inAppTemplateResponse_templateType,

    -- ** ItemResponse
    itemResponse_eventsItemResponse,
    itemResponse_endpointItemResponse,

    -- ** JourneyChannelSettings
    journeyChannelSettings_connectCampaignExecutionRoleArn,
    journeyChannelSettings_connectCampaignArn,

    -- ** JourneyCustomMessage
    journeyCustomMessage_data,

    -- ** JourneyDateRangeKpiResponse
    journeyDateRangeKpiResponse_nextToken,
    journeyDateRangeKpiResponse_kpiResult,
    journeyDateRangeKpiResponse_kpiName,
    journeyDateRangeKpiResponse_journeyId,
    journeyDateRangeKpiResponse_endTime,
    journeyDateRangeKpiResponse_startTime,
    journeyDateRangeKpiResponse_applicationId,

    -- ** JourneyEmailMessage
    journeyEmailMessage_fromAddress,

    -- ** JourneyExecutionActivityMetricsResponse
    journeyExecutionActivityMetricsResponse_metrics,
    journeyExecutionActivityMetricsResponse_journeyId,
    journeyExecutionActivityMetricsResponse_lastEvaluatedTime,
    journeyExecutionActivityMetricsResponse_journeyActivityId,
    journeyExecutionActivityMetricsResponse_activityType,
    journeyExecutionActivityMetricsResponse_applicationId,

    -- ** JourneyExecutionMetricsResponse
    journeyExecutionMetricsResponse_metrics,
    journeyExecutionMetricsResponse_journeyId,
    journeyExecutionMetricsResponse_lastEvaluatedTime,
    journeyExecutionMetricsResponse_applicationId,

    -- ** JourneyLimits
    journeyLimits_endpointReentryInterval,
    journeyLimits_endpointReentryCap,
    journeyLimits_messagesPerSecond,
    journeyLimits_dailyCap,

    -- ** JourneyPushMessage
    journeyPushMessage_timeToLive,

    -- ** JourneyResponse
    journeyResponse_lastModifiedDate,
    journeyResponse_waitForQuietTime,
    journeyResponse_journeyChannelSettings,
    journeyResponse_activities,
    journeyResponse_creationDate,
    journeyResponse_state,
    journeyResponse_refreshFrequency,
    journeyResponse_quietTime,
    journeyResponse_tags,
    journeyResponse_limits,
    journeyResponse_refreshOnSegmentUpdate,
    journeyResponse_startCondition,
    journeyResponse_localTime,
    journeyResponse_startActivity,
    journeyResponse_schedule,
    journeyResponse_name,
    journeyResponse_id,
    journeyResponse_applicationId,

    -- ** JourneySMSMessage
    journeySMSMessage_entityId,
    journeySMSMessage_senderId,
    journeySMSMessage_messageType,
    journeySMSMessage_templateId,
    journeySMSMessage_originationNumber,

    -- ** JourneySchedule
    journeySchedule_startTime,
    journeySchedule_endTime,
    journeySchedule_timezone,

    -- ** JourneyStateRequest
    journeyStateRequest_state,

    -- ** JourneysResponse
    journeysResponse_nextToken,
    journeysResponse_item,

    -- ** ListRecommenderConfigurationsResponse
    listRecommenderConfigurationsResponse_nextToken,
    listRecommenderConfigurationsResponse_item,

    -- ** Message
    message_silentPush,
    message_imageIconUrl,
    message_body,
    message_jsonBody,
    message_title,
    message_timeToLive,
    message_mediaUrl,
    message_imageUrl,
    message_action,
    message_url,
    message_imageSmallIconUrl,
    message_rawContent,

    -- ** MessageBody
    messageBody_message,
    messageBody_requestID,

    -- ** MessageConfiguration
    messageConfiguration_aDMMessage,
    messageConfiguration_defaultMessage,
    messageConfiguration_inAppMessage,
    messageConfiguration_gCMMessage,
    messageConfiguration_emailMessage,
    messageConfiguration_aPNSMessage,
    messageConfiguration_sMSMessage,
    messageConfiguration_customMessage,
    messageConfiguration_baiduMessage,

    -- ** MessageRequest
    messageRequest_endpoints,
    messageRequest_context,
    messageRequest_traceId,
    messageRequest_templateConfiguration,
    messageRequest_addresses,
    messageRequest_messageConfiguration,

    -- ** MessageResponse
    messageResponse_result,
    messageResponse_requestId,
    messageResponse_endpointResult,
    messageResponse_applicationId,

    -- ** MessageResult
    messageResult_statusMessage,
    messageResult_updatedToken,
    messageResult_messageId,
    messageResult_deliveryStatus,
    messageResult_statusCode,

    -- ** MetricDimension
    metricDimension_comparisonOperator,
    metricDimension_value,

    -- ** MultiConditionalBranch
    multiConditionalBranch_condition,
    multiConditionalBranch_nextActivity,

    -- ** MultiConditionalSplitActivity
    multiConditionalSplitActivity_defaultActivity,
    multiConditionalSplitActivity_evaluationWaitTime,
    multiConditionalSplitActivity_branches,

    -- ** NumberValidateRequest
    numberValidateRequest_phoneNumber,
    numberValidateRequest_isoCountryCode,

    -- ** NumberValidateResponse
    numberValidateResponse_phoneType,
    numberValidateResponse_zipCode,
    numberValidateResponse_originalPhoneNumber,
    numberValidateResponse_originalCountryCodeIso2,
    numberValidateResponse_countryCodeIso2,
    numberValidateResponse_county,
    numberValidateResponse_city,
    numberValidateResponse_carrier,
    numberValidateResponse_phoneTypeCode,
    numberValidateResponse_cleansedPhoneNumberE164,
    numberValidateResponse_countryCodeNumeric,
    numberValidateResponse_cleansedPhoneNumberNational,
    numberValidateResponse_timezone,
    numberValidateResponse_country,

    -- ** OverrideButtonConfiguration
    overrideButtonConfiguration_link,
    overrideButtonConfiguration_buttonAction,

    -- ** PublicEndpoint
    publicEndpoint_user,
    publicEndpoint_address,
    publicEndpoint_channelType,
    publicEndpoint_optOut,
    publicEndpoint_demographic,
    publicEndpoint_attributes,
    publicEndpoint_metrics,
    publicEndpoint_endpointStatus,
    publicEndpoint_requestId,
    publicEndpoint_effectiveDate,
    publicEndpoint_location,

    -- ** PushMessageActivity
    pushMessageActivity_templateName,
    pushMessageActivity_messageConfig,
    pushMessageActivity_templateVersion,
    pushMessageActivity_nextActivity,

    -- ** PushNotificationTemplateRequest
    pushNotificationTemplateRequest_templateDescription,
    pushNotificationTemplateRequest_baidu,
    pushNotificationTemplateRequest_adm,
    pushNotificationTemplateRequest_defaultSubstitutions,
    pushNotificationTemplateRequest_apns,
    pushNotificationTemplateRequest_tags,
    pushNotificationTemplateRequest_gcm,
    pushNotificationTemplateRequest_recommenderId,
    pushNotificationTemplateRequest_default,

    -- ** PushNotificationTemplateResponse
    pushNotificationTemplateResponse_templateDescription,
    pushNotificationTemplateResponse_baidu,
    pushNotificationTemplateResponse_adm,
    pushNotificationTemplateResponse_arn,
    pushNotificationTemplateResponse_version,
    pushNotificationTemplateResponse_defaultSubstitutions,
    pushNotificationTemplateResponse_apns,
    pushNotificationTemplateResponse_tags,
    pushNotificationTemplateResponse_gcm,
    pushNotificationTemplateResponse_recommenderId,
    pushNotificationTemplateResponse_default,
    pushNotificationTemplateResponse_lastModifiedDate,
    pushNotificationTemplateResponse_creationDate,
    pushNotificationTemplateResponse_templateType,
    pushNotificationTemplateResponse_templateName,

    -- ** QuietTime
    quietTime_end,
    quietTime_start,

    -- ** RandomSplitActivity
    randomSplitActivity_branches,

    -- ** RandomSplitEntry
    randomSplitEntry_percentage,
    randomSplitEntry_nextActivity,

    -- ** RawEmail
    rawEmail_data,

    -- ** RecencyDimension
    recencyDimension_duration,
    recencyDimension_recencyType,

    -- ** RecommenderConfigurationResponse
    recommenderConfigurationResponse_recommendationsDisplayName,
    recommenderConfigurationResponse_recommendationTransformerUri,
    recommenderConfigurationResponse_name,
    recommenderConfigurationResponse_attributes,
    recommenderConfigurationResponse_description,
    recommenderConfigurationResponse_recommendationsPerMessage,
    recommenderConfigurationResponse_recommendationProviderIdType,
    recommenderConfigurationResponse_recommendationProviderUri,
    recommenderConfigurationResponse_lastModifiedDate,
    recommenderConfigurationResponse_creationDate,
    recommenderConfigurationResponse_recommendationProviderRoleArn,
    recommenderConfigurationResponse_id,

    -- ** ResultRow
    resultRow_groupedBys,
    resultRow_values,

    -- ** ResultRowValue
    resultRowValue_type,
    resultRowValue_value,
    resultRowValue_key,

    -- ** SMSChannelRequest
    sMSChannelRequest_enabled,
    sMSChannelRequest_shortCode,
    sMSChannelRequest_senderId,

    -- ** SMSChannelResponse
    sMSChannelResponse_applicationId,
    sMSChannelResponse_lastModifiedDate,
    sMSChannelResponse_hasCredential,
    sMSChannelResponse_promotionalMessagesPerSecond,
    sMSChannelResponse_enabled,
    sMSChannelResponse_creationDate,
    sMSChannelResponse_id,
    sMSChannelResponse_version,
    sMSChannelResponse_shortCode,
    sMSChannelResponse_isArchived,
    sMSChannelResponse_senderId,
    sMSChannelResponse_transactionalMessagesPerSecond,
    sMSChannelResponse_lastModifiedBy,
    sMSChannelResponse_platform,

    -- ** SMSMessage
    sMSMessage_keyword,
    sMSMessage_entityId,
    sMSMessage_body,
    sMSMessage_mediaUrl,
    sMSMessage_substitutions,
    sMSMessage_senderId,
    sMSMessage_messageType,
    sMSMessage_templateId,
    sMSMessage_originationNumber,

    -- ** SMSMessageActivity
    sMSMessageActivity_templateName,
    sMSMessageActivity_messageConfig,
    sMSMessageActivity_templateVersion,
    sMSMessageActivity_nextActivity,

    -- ** SMSTemplateRequest
    sMSTemplateRequest_templateDescription,
    sMSTemplateRequest_body,
    sMSTemplateRequest_defaultSubstitutions,
    sMSTemplateRequest_tags,
    sMSTemplateRequest_recommenderId,

    -- ** SMSTemplateResponse
    sMSTemplateResponse_templateDescription,
    sMSTemplateResponse_body,
    sMSTemplateResponse_arn,
    sMSTemplateResponse_version,
    sMSTemplateResponse_defaultSubstitutions,
    sMSTemplateResponse_tags,
    sMSTemplateResponse_recommenderId,
    sMSTemplateResponse_lastModifiedDate,
    sMSTemplateResponse_creationDate,
    sMSTemplateResponse_templateName,
    sMSTemplateResponse_templateType,

    -- ** Schedule
    schedule_eventFilter,
    schedule_isLocalTime,
    schedule_endTime,
    schedule_frequency,
    schedule_quietTime,
    schedule_timezone,
    schedule_startTime,

    -- ** SegmentBehaviors
    segmentBehaviors_recency,

    -- ** SegmentCondition
    segmentCondition_segmentId,

    -- ** SegmentDemographics
    segmentDemographics_model,
    segmentDemographics_platform,
    segmentDemographics_appVersion,
    segmentDemographics_channel,
    segmentDemographics_deviceType,
    segmentDemographics_make,

    -- ** SegmentDimensions
    segmentDimensions_demographic,
    segmentDimensions_attributes,
    segmentDimensions_metrics,
    segmentDimensions_behavior,
    segmentDimensions_userAttributes,
    segmentDimensions_location,

    -- ** SegmentGroup
    segmentGroup_dimensions,
    segmentGroup_type,
    segmentGroup_sourceType,
    segmentGroup_sourceSegments,

    -- ** SegmentGroupList
    segmentGroupList_groups,
    segmentGroupList_include,

    -- ** SegmentImportResource
    segmentImportResource_channelCounts,
    segmentImportResource_format,
    segmentImportResource_s3Url,
    segmentImportResource_size,
    segmentImportResource_externalId,
    segmentImportResource_roleArn,

    -- ** SegmentLocation
    segmentLocation_gPSPoint,
    segmentLocation_country,

    -- ** SegmentReference
    segmentReference_version,
    segmentReference_id,

    -- ** SegmentResponse
    segmentResponse_segmentGroups,
    segmentResponse_lastModifiedDate,
    segmentResponse_version,
    segmentResponse_name,
    segmentResponse_tags,
    segmentResponse_dimensions,
    segmentResponse_importDefinition,
    segmentResponse_segmentType,
    segmentResponse_creationDate,
    segmentResponse_id,
    segmentResponse_arn,
    segmentResponse_applicationId,

    -- ** SegmentsResponse
    segmentsResponse_nextToken,
    segmentsResponse_item,

    -- ** SendUsersMessageRequest
    sendUsersMessageRequest_context,
    sendUsersMessageRequest_traceId,
    sendUsersMessageRequest_templateConfiguration,
    sendUsersMessageRequest_messageConfiguration,
    sendUsersMessageRequest_users,

    -- ** SendUsersMessageResponse
    sendUsersMessageResponse_result,
    sendUsersMessageResponse_requestId,
    sendUsersMessageResponse_applicationId,

    -- ** Session
    session_duration,
    session_stopTimestamp,
    session_startTimestamp,
    session_id,

    -- ** SetDimension
    setDimension_dimensionType,
    setDimension_values,

    -- ** SimpleCondition
    simpleCondition_eventCondition,
    simpleCondition_segmentDimensions,
    simpleCondition_segmentCondition,

    -- ** SimpleEmail
    simpleEmail_textPart,
    simpleEmail_subject,
    simpleEmail_htmlPart,

    -- ** SimpleEmailPart
    simpleEmailPart_data,
    simpleEmailPart_charset,

    -- ** StartCondition
    startCondition_eventStartCondition,
    startCondition_description,
    startCondition_segmentStartCondition,

    -- ** TagsModel
    tagsModel_tags,

    -- ** Template
    template_version,
    template_name,

    -- ** TemplateActiveVersionRequest
    templateActiveVersionRequest_version,

    -- ** TemplateConfiguration
    templateConfiguration_emailTemplate,
    templateConfiguration_voiceTemplate,
    templateConfiguration_sMSTemplate,
    templateConfiguration_pushTemplate,

    -- ** TemplateCreateMessageBody
    templateCreateMessageBody_message,
    templateCreateMessageBody_arn,
    templateCreateMessageBody_requestID,

    -- ** TemplateResponse
    templateResponse_templateDescription,
    templateResponse_arn,
    templateResponse_version,
    templateResponse_defaultSubstitutions,
    templateResponse_tags,
    templateResponse_lastModifiedDate,
    templateResponse_creationDate,
    templateResponse_templateName,
    templateResponse_templateType,

    -- ** TemplateVersionResponse
    templateVersionResponse_templateDescription,
    templateVersionResponse_version,
    templateVersionResponse_defaultSubstitutions,
    templateVersionResponse_lastModifiedDate,
    templateVersionResponse_creationDate,
    templateVersionResponse_templateName,
    templateVersionResponse_templateType,

    -- ** TemplateVersionsResponse
    templateVersionsResponse_nextToken,
    templateVersionsResponse_message,
    templateVersionsResponse_requestID,
    templateVersionsResponse_item,

    -- ** TemplatesResponse
    templatesResponse_nextToken,
    templatesResponse_item,

    -- ** TreatmentResource
    treatmentResource_customDeliveryConfiguration,
    treatmentResource_state,
    treatmentResource_messageConfiguration,
    treatmentResource_treatmentName,
    treatmentResource_templateConfiguration,
    treatmentResource_schedule,
    treatmentResource_treatmentDescription,
    treatmentResource_id,
    treatmentResource_sizePercent,

    -- ** UpdateAttributesRequest
    updateAttributesRequest_blacklist,

    -- ** UpdateRecommenderConfiguration
    updateRecommenderConfiguration_recommendationsDisplayName,
    updateRecommenderConfiguration_recommendationTransformerUri,
    updateRecommenderConfiguration_name,
    updateRecommenderConfiguration_attributes,
    updateRecommenderConfiguration_description,
    updateRecommenderConfiguration_recommendationsPerMessage,
    updateRecommenderConfiguration_recommendationProviderIdType,
    updateRecommenderConfiguration_recommendationProviderUri,
    updateRecommenderConfiguration_recommendationProviderRoleArn,

    -- ** VoiceChannelRequest
    voiceChannelRequest_enabled,

    -- ** VoiceChannelResponse
    voiceChannelResponse_applicationId,
    voiceChannelResponse_lastModifiedDate,
    voiceChannelResponse_hasCredential,
    voiceChannelResponse_enabled,
    voiceChannelResponse_creationDate,
    voiceChannelResponse_id,
    voiceChannelResponse_version,
    voiceChannelResponse_isArchived,
    voiceChannelResponse_lastModifiedBy,
    voiceChannelResponse_platform,

    -- ** VoiceMessage
    voiceMessage_languageCode,
    voiceMessage_voiceId,
    voiceMessage_body,
    voiceMessage_substitutions,
    voiceMessage_originationNumber,

    -- ** VoiceTemplateRequest
    voiceTemplateRequest_languageCode,
    voiceTemplateRequest_templateDescription,
    voiceTemplateRequest_voiceId,
    voiceTemplateRequest_body,
    voiceTemplateRequest_defaultSubstitutions,
    voiceTemplateRequest_tags,

    -- ** VoiceTemplateResponse
    voiceTemplateResponse_languageCode,
    voiceTemplateResponse_templateDescription,
    voiceTemplateResponse_voiceId,
    voiceTemplateResponse_body,
    voiceTemplateResponse_arn,
    voiceTemplateResponse_version,
    voiceTemplateResponse_defaultSubstitutions,
    voiceTemplateResponse_tags,
    voiceTemplateResponse_lastModifiedDate,
    voiceTemplateResponse_creationDate,
    voiceTemplateResponse_templateName,
    voiceTemplateResponse_templateType,

    -- ** WaitActivity
    waitActivity_waitTime,
    waitActivity_nextActivity,

    -- ** WaitTime
    waitTime_waitUntil,
    waitTime_waitFor,

    -- ** WriteApplicationSettingsRequest
    writeApplicationSettingsRequest_campaignHook,
    writeApplicationSettingsRequest_cloudWatchMetricsEnabled,
    writeApplicationSettingsRequest_eventTaggingEnabled,
    writeApplicationSettingsRequest_quietTime,
    writeApplicationSettingsRequest_limits,

    -- ** WriteCampaignRequest
    writeCampaignRequest_additionalTreatments,
    writeCampaignRequest_hook,
    writeCampaignRequest_priority,
    writeCampaignRequest_name,
    writeCampaignRequest_customDeliveryConfiguration,
    writeCampaignRequest_isPaused,
    writeCampaignRequest_segmentVersion,
    writeCampaignRequest_tags,
    writeCampaignRequest_limits,
    writeCampaignRequest_description,
    writeCampaignRequest_segmentId,
    writeCampaignRequest_messageConfiguration,
    writeCampaignRequest_treatmentName,
    writeCampaignRequest_templateConfiguration,
    writeCampaignRequest_schedule,
    writeCampaignRequest_holdoutPercent,
    writeCampaignRequest_treatmentDescription,

    -- ** WriteEventStream
    writeEventStream_roleArn,
    writeEventStream_destinationStreamArn,

    -- ** WriteJourneyRequest
    writeJourneyRequest_lastModifiedDate,
    writeJourneyRequest_waitForQuietTime,
    writeJourneyRequest_activities,
    writeJourneyRequest_creationDate,
    writeJourneyRequest_state,
    writeJourneyRequest_refreshFrequency,
    writeJourneyRequest_quietTime,
    writeJourneyRequest_limits,
    writeJourneyRequest_refreshOnSegmentUpdate,
    writeJourneyRequest_startCondition,
    writeJourneyRequest_localTime,
    writeJourneyRequest_startActivity,
    writeJourneyRequest_schedule,
    writeJourneyRequest_name,

    -- ** WriteSegmentRequest
    writeSegmentRequest_segmentGroups,
    writeSegmentRequest_name,
    writeSegmentRequest_tags,
    writeSegmentRequest_dimensions,

    -- ** WriteTreatmentResource
    writeTreatmentResource_customDeliveryConfiguration,
    writeTreatmentResource_messageConfiguration,
    writeTreatmentResource_treatmentName,
    writeTreatmentResource_templateConfiguration,
    writeTreatmentResource_schedule,
    writeTreatmentResource_treatmentDescription,
    writeTreatmentResource_sizePercent,
  )
where

import Network.AWS.Pinpoint.CreateApp
import Network.AWS.Pinpoint.CreateCampaign
import Network.AWS.Pinpoint.CreateEmailTemplate
import Network.AWS.Pinpoint.CreateExportJob
import Network.AWS.Pinpoint.CreateImportJob
import Network.AWS.Pinpoint.CreateInAppTemplate
import Network.AWS.Pinpoint.CreateJourney
import Network.AWS.Pinpoint.CreatePushTemplate
import Network.AWS.Pinpoint.CreateRecommenderConfiguration
import Network.AWS.Pinpoint.CreateSegment
import Network.AWS.Pinpoint.CreateSmsTemplate
import Network.AWS.Pinpoint.CreateVoiceTemplate
import Network.AWS.Pinpoint.DeleteAdmChannel
import Network.AWS.Pinpoint.DeleteApnsChannel
import Network.AWS.Pinpoint.DeleteApnsSandboxChannel
import Network.AWS.Pinpoint.DeleteApnsVoipChannel
import Network.AWS.Pinpoint.DeleteApnsVoipSandboxChannel
import Network.AWS.Pinpoint.DeleteApp
import Network.AWS.Pinpoint.DeleteBaiduChannel
import Network.AWS.Pinpoint.DeleteCampaign
import Network.AWS.Pinpoint.DeleteEmailChannel
import Network.AWS.Pinpoint.DeleteEmailTemplate
import Network.AWS.Pinpoint.DeleteEndpoint
import Network.AWS.Pinpoint.DeleteEventStream
import Network.AWS.Pinpoint.DeleteGcmChannel
import Network.AWS.Pinpoint.DeleteInAppTemplate
import Network.AWS.Pinpoint.DeleteJourney
import Network.AWS.Pinpoint.DeletePushTemplate
import Network.AWS.Pinpoint.DeleteRecommenderConfiguration
import Network.AWS.Pinpoint.DeleteSegment
import Network.AWS.Pinpoint.DeleteSmsChannel
import Network.AWS.Pinpoint.DeleteSmsTemplate
import Network.AWS.Pinpoint.DeleteUserEndpoints
import Network.AWS.Pinpoint.DeleteVoiceChannel
import Network.AWS.Pinpoint.DeleteVoiceTemplate
import Network.AWS.Pinpoint.GetAdmChannel
import Network.AWS.Pinpoint.GetApnsChannel
import Network.AWS.Pinpoint.GetApnsSandboxChannel
import Network.AWS.Pinpoint.GetApnsVoipChannel
import Network.AWS.Pinpoint.GetApnsVoipSandboxChannel
import Network.AWS.Pinpoint.GetApp
import Network.AWS.Pinpoint.GetApplicationDateRangeKpi
import Network.AWS.Pinpoint.GetApplicationSettings
import Network.AWS.Pinpoint.GetApps
import Network.AWS.Pinpoint.GetBaiduChannel
import Network.AWS.Pinpoint.GetCampaign
import Network.AWS.Pinpoint.GetCampaignActivities
import Network.AWS.Pinpoint.GetCampaignDateRangeKpi
import Network.AWS.Pinpoint.GetCampaignVersion
import Network.AWS.Pinpoint.GetCampaignVersions
import Network.AWS.Pinpoint.GetCampaigns
import Network.AWS.Pinpoint.GetChannels
import Network.AWS.Pinpoint.GetEmailChannel
import Network.AWS.Pinpoint.GetEmailTemplate
import Network.AWS.Pinpoint.GetEndpoint
import Network.AWS.Pinpoint.GetEventStream
import Network.AWS.Pinpoint.GetExportJob
import Network.AWS.Pinpoint.GetExportJobs
import Network.AWS.Pinpoint.GetGcmChannel
import Network.AWS.Pinpoint.GetImportJob
import Network.AWS.Pinpoint.GetImportJobs
import Network.AWS.Pinpoint.GetInAppMessages
import Network.AWS.Pinpoint.GetInAppTemplate
import Network.AWS.Pinpoint.GetJourney
import Network.AWS.Pinpoint.GetJourneyDateRangeKpi
import Network.AWS.Pinpoint.GetJourneyExecutionActivityMetrics
import Network.AWS.Pinpoint.GetJourneyExecutionMetrics
import Network.AWS.Pinpoint.GetPushTemplate
import Network.AWS.Pinpoint.GetRecommenderConfiguration
import Network.AWS.Pinpoint.GetRecommenderConfigurations
import Network.AWS.Pinpoint.GetSegment
import Network.AWS.Pinpoint.GetSegmentExportJobs
import Network.AWS.Pinpoint.GetSegmentImportJobs
import Network.AWS.Pinpoint.GetSegmentVersion
import Network.AWS.Pinpoint.GetSegmentVersions
import Network.AWS.Pinpoint.GetSegments
import Network.AWS.Pinpoint.GetSmsChannel
import Network.AWS.Pinpoint.GetSmsTemplate
import Network.AWS.Pinpoint.GetUserEndpoints
import Network.AWS.Pinpoint.GetVoiceChannel
import Network.AWS.Pinpoint.GetVoiceTemplate
import Network.AWS.Pinpoint.ListJourneys
import Network.AWS.Pinpoint.ListTagsForResource
import Network.AWS.Pinpoint.ListTemplateVersions
import Network.AWS.Pinpoint.ListTemplates
import Network.AWS.Pinpoint.PhoneNumberValidate
import Network.AWS.Pinpoint.PutEventStream
import Network.AWS.Pinpoint.PutEvents
import Network.AWS.Pinpoint.RemoveAttributes
import Network.AWS.Pinpoint.SendMessages
import Network.AWS.Pinpoint.SendUsersMessages
import Network.AWS.Pinpoint.TagResource
import Network.AWS.Pinpoint.Types.ADMChannelRequest
import Network.AWS.Pinpoint.Types.ADMChannelResponse
import Network.AWS.Pinpoint.Types.ADMMessage
import Network.AWS.Pinpoint.Types.APNSChannelRequest
import Network.AWS.Pinpoint.Types.APNSChannelResponse
import Network.AWS.Pinpoint.Types.APNSMessage
import Network.AWS.Pinpoint.Types.APNSPushNotificationTemplate
import Network.AWS.Pinpoint.Types.APNSSandboxChannelRequest
import Network.AWS.Pinpoint.Types.APNSSandboxChannelResponse
import Network.AWS.Pinpoint.Types.APNSVoipChannelRequest
import Network.AWS.Pinpoint.Types.APNSVoipChannelResponse
import Network.AWS.Pinpoint.Types.APNSVoipSandboxChannelRequest
import Network.AWS.Pinpoint.Types.APNSVoipSandboxChannelResponse
import Network.AWS.Pinpoint.Types.ActivitiesResponse
import Network.AWS.Pinpoint.Types.Activity
import Network.AWS.Pinpoint.Types.ActivityResponse
import Network.AWS.Pinpoint.Types.AddressConfiguration
import Network.AWS.Pinpoint.Types.AndroidPushNotificationTemplate
import Network.AWS.Pinpoint.Types.ApplicationDateRangeKpiResponse
import Network.AWS.Pinpoint.Types.ApplicationResponse
import Network.AWS.Pinpoint.Types.ApplicationSettingsResource
import Network.AWS.Pinpoint.Types.ApplicationsResponse
import Network.AWS.Pinpoint.Types.AttributeDimension
import Network.AWS.Pinpoint.Types.AttributesResource
import Network.AWS.Pinpoint.Types.BaiduChannelRequest
import Network.AWS.Pinpoint.Types.BaiduChannelResponse
import Network.AWS.Pinpoint.Types.BaiduMessage
import Network.AWS.Pinpoint.Types.BaseKpiResult
import Network.AWS.Pinpoint.Types.CampaignCustomMessage
import Network.AWS.Pinpoint.Types.CampaignDateRangeKpiResponse
import Network.AWS.Pinpoint.Types.CampaignEmailMessage
import Network.AWS.Pinpoint.Types.CampaignEventFilter
import Network.AWS.Pinpoint.Types.CampaignHook
import Network.AWS.Pinpoint.Types.CampaignInAppMessage
import Network.AWS.Pinpoint.Types.CampaignLimits
import Network.AWS.Pinpoint.Types.CampaignResponse
import Network.AWS.Pinpoint.Types.CampaignSmsMessage
import Network.AWS.Pinpoint.Types.CampaignState
import Network.AWS.Pinpoint.Types.CampaignsResponse
import Network.AWS.Pinpoint.Types.ChannelResponse
import Network.AWS.Pinpoint.Types.ChannelsResponse
import Network.AWS.Pinpoint.Types.Condition
import Network.AWS.Pinpoint.Types.ConditionalSplitActivity
import Network.AWS.Pinpoint.Types.ContactCenterActivity
import Network.AWS.Pinpoint.Types.CreateApplicationRequest
import Network.AWS.Pinpoint.Types.CreateRecommenderConfiguration
import Network.AWS.Pinpoint.Types.CreateTemplateMessageBody
import Network.AWS.Pinpoint.Types.CustomDeliveryConfiguration
import Network.AWS.Pinpoint.Types.CustomMessageActivity
import Network.AWS.Pinpoint.Types.DefaultButtonConfiguration
import Network.AWS.Pinpoint.Types.DefaultMessage
import Network.AWS.Pinpoint.Types.DefaultPushNotificationMessage
import Network.AWS.Pinpoint.Types.DefaultPushNotificationTemplate
import Network.AWS.Pinpoint.Types.DirectMessageConfiguration
import Network.AWS.Pinpoint.Types.EmailChannelRequest
import Network.AWS.Pinpoint.Types.EmailChannelResponse
import Network.AWS.Pinpoint.Types.EmailMessage
import Network.AWS.Pinpoint.Types.EmailMessageActivity
import Network.AWS.Pinpoint.Types.EmailTemplateRequest
import Network.AWS.Pinpoint.Types.EmailTemplateResponse
import Network.AWS.Pinpoint.Types.EndpointBatchItem
import Network.AWS.Pinpoint.Types.EndpointBatchRequest
import Network.AWS.Pinpoint.Types.EndpointDemographic
import Network.AWS.Pinpoint.Types.EndpointItemResponse
import Network.AWS.Pinpoint.Types.EndpointLocation
import Network.AWS.Pinpoint.Types.EndpointMessageResult
import Network.AWS.Pinpoint.Types.EndpointRequest
import Network.AWS.Pinpoint.Types.EndpointResponse
import Network.AWS.Pinpoint.Types.EndpointSendConfiguration
import Network.AWS.Pinpoint.Types.EndpointUser
import Network.AWS.Pinpoint.Types.EndpointsResponse
import Network.AWS.Pinpoint.Types.Event
import Network.AWS.Pinpoint.Types.EventCondition
import Network.AWS.Pinpoint.Types.EventDimensions
import Network.AWS.Pinpoint.Types.EventFilter
import Network.AWS.Pinpoint.Types.EventItemResponse
import Network.AWS.Pinpoint.Types.EventStartCondition
import Network.AWS.Pinpoint.Types.EventStream
import Network.AWS.Pinpoint.Types.EventsBatch
import Network.AWS.Pinpoint.Types.EventsRequest
import Network.AWS.Pinpoint.Types.EventsResponse
import Network.AWS.Pinpoint.Types.ExportJobRequest
import Network.AWS.Pinpoint.Types.ExportJobResource
import Network.AWS.Pinpoint.Types.ExportJobResponse
import Network.AWS.Pinpoint.Types.ExportJobsResponse
import Network.AWS.Pinpoint.Types.GCMChannelRequest
import Network.AWS.Pinpoint.Types.GCMChannelResponse
import Network.AWS.Pinpoint.Types.GCMMessage
import Network.AWS.Pinpoint.Types.GPSCoordinates
import Network.AWS.Pinpoint.Types.GPSPointDimension
import Network.AWS.Pinpoint.Types.HoldoutActivity
import Network.AWS.Pinpoint.Types.ImportJobRequest
import Network.AWS.Pinpoint.Types.ImportJobResource
import Network.AWS.Pinpoint.Types.ImportJobResponse
import Network.AWS.Pinpoint.Types.ImportJobsResponse
import Network.AWS.Pinpoint.Types.InAppCampaignSchedule
import Network.AWS.Pinpoint.Types.InAppMessage
import Network.AWS.Pinpoint.Types.InAppMessageBodyConfig
import Network.AWS.Pinpoint.Types.InAppMessageButton
import Network.AWS.Pinpoint.Types.InAppMessageCampaign
import Network.AWS.Pinpoint.Types.InAppMessageContent
import Network.AWS.Pinpoint.Types.InAppMessageHeaderConfig
import Network.AWS.Pinpoint.Types.InAppMessagesResponse
import Network.AWS.Pinpoint.Types.InAppTemplateRequest
import Network.AWS.Pinpoint.Types.InAppTemplateResponse
import Network.AWS.Pinpoint.Types.ItemResponse
import Network.AWS.Pinpoint.Types.JourneyChannelSettings
import Network.AWS.Pinpoint.Types.JourneyCustomMessage
import Network.AWS.Pinpoint.Types.JourneyDateRangeKpiResponse
import Network.AWS.Pinpoint.Types.JourneyEmailMessage
import Network.AWS.Pinpoint.Types.JourneyExecutionActivityMetricsResponse
import Network.AWS.Pinpoint.Types.JourneyExecutionMetricsResponse
import Network.AWS.Pinpoint.Types.JourneyLimits
import Network.AWS.Pinpoint.Types.JourneyPushMessage
import Network.AWS.Pinpoint.Types.JourneyResponse
import Network.AWS.Pinpoint.Types.JourneySMSMessage
import Network.AWS.Pinpoint.Types.JourneySchedule
import Network.AWS.Pinpoint.Types.JourneyStateRequest
import Network.AWS.Pinpoint.Types.JourneysResponse
import Network.AWS.Pinpoint.Types.ListRecommenderConfigurationsResponse
import Network.AWS.Pinpoint.Types.Message
import Network.AWS.Pinpoint.Types.MessageBody
import Network.AWS.Pinpoint.Types.MessageConfiguration
import Network.AWS.Pinpoint.Types.MessageRequest
import Network.AWS.Pinpoint.Types.MessageResponse
import Network.AWS.Pinpoint.Types.MessageResult
import Network.AWS.Pinpoint.Types.MetricDimension
import Network.AWS.Pinpoint.Types.MultiConditionalBranch
import Network.AWS.Pinpoint.Types.MultiConditionalSplitActivity
import Network.AWS.Pinpoint.Types.NumberValidateRequest
import Network.AWS.Pinpoint.Types.NumberValidateResponse
import Network.AWS.Pinpoint.Types.OverrideButtonConfiguration
import Network.AWS.Pinpoint.Types.PublicEndpoint
import Network.AWS.Pinpoint.Types.PushMessageActivity
import Network.AWS.Pinpoint.Types.PushNotificationTemplateRequest
import Network.AWS.Pinpoint.Types.PushNotificationTemplateResponse
import Network.AWS.Pinpoint.Types.QuietTime
import Network.AWS.Pinpoint.Types.RandomSplitActivity
import Network.AWS.Pinpoint.Types.RandomSplitEntry
import Network.AWS.Pinpoint.Types.RawEmail
import Network.AWS.Pinpoint.Types.RecencyDimension
import Network.AWS.Pinpoint.Types.RecommenderConfigurationResponse
import Network.AWS.Pinpoint.Types.ResultRow
import Network.AWS.Pinpoint.Types.ResultRowValue
import Network.AWS.Pinpoint.Types.SMSChannelRequest
import Network.AWS.Pinpoint.Types.SMSChannelResponse
import Network.AWS.Pinpoint.Types.SMSMessage
import Network.AWS.Pinpoint.Types.SMSMessageActivity
import Network.AWS.Pinpoint.Types.SMSTemplateRequest
import Network.AWS.Pinpoint.Types.SMSTemplateResponse
import Network.AWS.Pinpoint.Types.Schedule
import Network.AWS.Pinpoint.Types.SegmentBehaviors
import Network.AWS.Pinpoint.Types.SegmentCondition
import Network.AWS.Pinpoint.Types.SegmentDemographics
import Network.AWS.Pinpoint.Types.SegmentDimensions
import Network.AWS.Pinpoint.Types.SegmentGroup
import Network.AWS.Pinpoint.Types.SegmentGroupList
import Network.AWS.Pinpoint.Types.SegmentImportResource
import Network.AWS.Pinpoint.Types.SegmentLocation
import Network.AWS.Pinpoint.Types.SegmentReference
import Network.AWS.Pinpoint.Types.SegmentResponse
import Network.AWS.Pinpoint.Types.SegmentsResponse
import Network.AWS.Pinpoint.Types.SendUsersMessageRequest
import Network.AWS.Pinpoint.Types.SendUsersMessageResponse
import Network.AWS.Pinpoint.Types.Session
import Network.AWS.Pinpoint.Types.SetDimension
import Network.AWS.Pinpoint.Types.SimpleCondition
import Network.AWS.Pinpoint.Types.SimpleEmail
import Network.AWS.Pinpoint.Types.SimpleEmailPart
import Network.AWS.Pinpoint.Types.StartCondition
import Network.AWS.Pinpoint.Types.TagsModel
import Network.AWS.Pinpoint.Types.Template
import Network.AWS.Pinpoint.Types.TemplateActiveVersionRequest
import Network.AWS.Pinpoint.Types.TemplateConfiguration
import Network.AWS.Pinpoint.Types.TemplateCreateMessageBody
import Network.AWS.Pinpoint.Types.TemplateResponse
import Network.AWS.Pinpoint.Types.TemplateVersionResponse
import Network.AWS.Pinpoint.Types.TemplateVersionsResponse
import Network.AWS.Pinpoint.Types.TemplatesResponse
import Network.AWS.Pinpoint.Types.TreatmentResource
import Network.AWS.Pinpoint.Types.UpdateAttributesRequest
import Network.AWS.Pinpoint.Types.UpdateRecommenderConfiguration
import Network.AWS.Pinpoint.Types.VoiceChannelRequest
import Network.AWS.Pinpoint.Types.VoiceChannelResponse
import Network.AWS.Pinpoint.Types.VoiceMessage
import Network.AWS.Pinpoint.Types.VoiceTemplateRequest
import Network.AWS.Pinpoint.Types.VoiceTemplateResponse
import Network.AWS.Pinpoint.Types.WaitActivity
import Network.AWS.Pinpoint.Types.WaitTime
import Network.AWS.Pinpoint.Types.WriteApplicationSettingsRequest
import Network.AWS.Pinpoint.Types.WriteCampaignRequest
import Network.AWS.Pinpoint.Types.WriteEventStream
import Network.AWS.Pinpoint.Types.WriteJourneyRequest
import Network.AWS.Pinpoint.Types.WriteSegmentRequest
import Network.AWS.Pinpoint.Types.WriteTreatmentResource
import Network.AWS.Pinpoint.UntagResource
import Network.AWS.Pinpoint.UpdateAdmChannel
import Network.AWS.Pinpoint.UpdateApnsChannel
import Network.AWS.Pinpoint.UpdateApnsSandboxChannel
import Network.AWS.Pinpoint.UpdateApnsVoipChannel
import Network.AWS.Pinpoint.UpdateApnsVoipSandboxChannel
import Network.AWS.Pinpoint.UpdateApplicationSettings
import Network.AWS.Pinpoint.UpdateBaiduChannel
import Network.AWS.Pinpoint.UpdateCampaign
import Network.AWS.Pinpoint.UpdateEmailChannel
import Network.AWS.Pinpoint.UpdateEmailTemplate
import Network.AWS.Pinpoint.UpdateEndpoint
import Network.AWS.Pinpoint.UpdateEndpointsBatch
import Network.AWS.Pinpoint.UpdateGcmChannel
import Network.AWS.Pinpoint.UpdateInAppTemplate
import Network.AWS.Pinpoint.UpdateJourney
import Network.AWS.Pinpoint.UpdateJourneyState
import Network.AWS.Pinpoint.UpdatePushTemplate
import Network.AWS.Pinpoint.UpdateRecommenderConfiguration
import Network.AWS.Pinpoint.UpdateSegment
import Network.AWS.Pinpoint.UpdateSmsChannel
import Network.AWS.Pinpoint.UpdateSmsTemplate
import Network.AWS.Pinpoint.UpdateTemplateActiveVersion
import Network.AWS.Pinpoint.UpdateVoiceChannel
import Network.AWS.Pinpoint.UpdateVoiceTemplate
