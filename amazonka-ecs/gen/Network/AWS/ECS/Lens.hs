{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Lens
  ( -- * Operations

    -- ** DiscoverPollEndpoint
    discoverPollEndpoint_containerInstance,
    discoverPollEndpoint_cluster,
    discoverPollEndpointResponse_telemetryEndpoint,
    discoverPollEndpointResponse_endpoint,
    discoverPollEndpointResponse_httpStatus,

    -- ** UpdateServicePrimaryTaskSet
    updateServicePrimaryTaskSet_cluster,
    updateServicePrimaryTaskSet_service,
    updateServicePrimaryTaskSet_primaryTaskSet,
    updateServicePrimaryTaskSetResponse_taskSet,
    updateServicePrimaryTaskSetResponse_httpStatus,

    -- ** RegisterContainerInstance
    registerContainerInstance_versionInfo,
    registerContainerInstance_containerInstanceArn,
    registerContainerInstance_instanceIdentityDocument,
    registerContainerInstance_attributes,
    registerContainerInstance_instanceIdentityDocumentSignature,
    registerContainerInstance_platformDevices,
    registerContainerInstance_tags,
    registerContainerInstance_totalResources,
    registerContainerInstance_cluster,
    registerContainerInstanceResponse_containerInstance,
    registerContainerInstanceResponse_httpStatus,

    -- ** SubmitAttachmentStateChanges
    submitAttachmentStateChanges_cluster,
    submitAttachmentStateChanges_attachments,
    submitAttachmentStateChangesResponse_acknowledgment,
    submitAttachmentStateChangesResponse_httpStatus,

    -- ** RunTask
    runTask_referenceId,
    runTask_capacityProviderStrategy,
    runTask_networkConfiguration,
    runTask_enableECSManagedTags,
    runTask_launchType,
    runTask_platformVersion,
    runTask_startedBy,
    runTask_placementStrategy,
    runTask_placementConstraints,
    runTask_group,
    runTask_overrides,
    runTask_enableExecuteCommand,
    runTask_tags,
    runTask_count,
    runTask_cluster,
    runTask_propagateTags,
    runTask_taskDefinition,
    runTaskResponse_tasks,
    runTaskResponse_failures,
    runTaskResponse_httpStatus,

    -- ** DescribeClusters
    describeClusters_include,
    describeClusters_clusters,
    describeClustersResponse_failures,
    describeClustersResponse_clusters,
    describeClustersResponse_httpStatus,

    -- ** ListTasks
    listTasks_nextToken,
    listTasks_maxResults,
    listTasks_launchType,
    listTasks_startedBy,
    listTasks_serviceName,
    listTasks_desiredStatus,
    listTasks_family,
    listTasks_containerInstance,
    listTasks_cluster,
    listTasksResponse_nextToken,
    listTasksResponse_taskArns,
    listTasksResponse_httpStatus,

    -- ** ListServices
    listServices_nextToken,
    listServices_maxResults,
    listServices_launchType,
    listServices_schedulingStrategy,
    listServices_cluster,
    listServicesResponse_nextToken,
    listServicesResponse_serviceArns,
    listServicesResponse_httpStatus,

    -- ** CreateService
    createService_deploymentConfiguration,
    createService_capacityProviderStrategy,
    createService_networkConfiguration,
    createService_desiredCount,
    createService_enableECSManagedTags,
    createService_deploymentController,
    createService_launchType,
    createService_platformVersion,
    createService_placementStrategy,
    createService_placementConstraints,
    createService_role,
    createService_enableExecuteCommand,
    createService_loadBalancers,
    createService_tags,
    createService_healthCheckGracePeriodSeconds,
    createService_serviceRegistries,
    createService_schedulingStrategy,
    createService_taskDefinition,
    createService_cluster,
    createService_propagateTags,
    createService_clientToken,
    createService_serviceName,
    createServiceResponse_service,
    createServiceResponse_httpStatus,

    -- ** DeleteAttributes
    deleteAttributes_cluster,
    deleteAttributes_attributes,
    deleteAttributesResponse_attributes,
    deleteAttributesResponse_httpStatus,

    -- ** PutAccountSetting
    putAccountSetting_principalArn,
    putAccountSetting_name,
    putAccountSetting_value,
    putAccountSettingResponse_setting,
    putAccountSettingResponse_httpStatus,

    -- ** CreateCluster
    createCluster_configuration,
    createCluster_defaultCapacityProviderStrategy,
    createCluster_tags,
    createCluster_capacityProviders,
    createCluster_clusterName,
    createCluster_settings,
    createClusterResponse_cluster,
    createClusterResponse_httpStatus,

    -- ** CreateTaskSet
    createTaskSet_capacityProviderStrategy,
    createTaskSet_networkConfiguration,
    createTaskSet_launchType,
    createTaskSet_platformVersion,
    createTaskSet_loadBalancers,
    createTaskSet_tags,
    createTaskSet_serviceRegistries,
    createTaskSet_scale,
    createTaskSet_externalId,
    createTaskSet_clientToken,
    createTaskSet_service,
    createTaskSet_cluster,
    createTaskSet_taskDefinition,
    createTaskSetResponse_taskSet,
    createTaskSetResponse_httpStatus,

    -- ** DescribeTasks
    describeTasks_include,
    describeTasks_cluster,
    describeTasks_tasks,
    describeTasksResponse_tasks,
    describeTasksResponse_failures,
    describeTasksResponse_httpStatus,

    -- ** UntagResource
    untagResource_resourceArn,
    untagResource_tagKeys,
    untagResourceResponse_httpStatus,

    -- ** TagResource
    tagResource_resourceArn,
    tagResource_tags,
    tagResourceResponse_httpStatus,

    -- ** DescribeContainerInstances
    describeContainerInstances_include,
    describeContainerInstances_cluster,
    describeContainerInstances_containerInstances,
    describeContainerInstancesResponse_failures,
    describeContainerInstancesResponse_containerInstances,
    describeContainerInstancesResponse_httpStatus,

    -- ** ListAttributes
    listAttributes_attributeValue,
    listAttributes_nextToken,
    listAttributes_maxResults,
    listAttributes_attributeName,
    listAttributes_cluster,
    listAttributes_targetType,
    listAttributesResponse_nextToken,
    listAttributesResponse_attributes,
    listAttributesResponse_httpStatus,

    -- ** PutAccountSettingDefault
    putAccountSettingDefault_name,
    putAccountSettingDefault_value,
    putAccountSettingDefaultResponse_setting,
    putAccountSettingDefaultResponse_httpStatus,

    -- ** SubmitContainerStateChange
    submitContainerStateChange_status,
    submitContainerStateChange_runtimeId,
    submitContainerStateChange_exitCode,
    submitContainerStateChange_task,
    submitContainerStateChange_networkBindings,
    submitContainerStateChange_reason,
    submitContainerStateChange_containerName,
    submitContainerStateChange_cluster,
    submitContainerStateChangeResponse_acknowledgment,
    submitContainerStateChangeResponse_httpStatus,

    -- ** ListContainerInstances
    listContainerInstances_nextToken,
    listContainerInstances_status,
    listContainerInstances_maxResults,
    listContainerInstances_filter,
    listContainerInstances_cluster,
    listContainerInstancesResponse_nextToken,
    listContainerInstancesResponse_containerInstanceArns,
    listContainerInstancesResponse_httpStatus,

    -- ** UpdateContainerAgent
    updateContainerAgent_cluster,
    updateContainerAgent_containerInstance,
    updateContainerAgentResponse_containerInstance,
    updateContainerAgentResponse_httpStatus,

    -- ** DeleteCapacityProvider
    deleteCapacityProvider_capacityProvider,
    deleteCapacityProviderResponse_capacityProvider,
    deleteCapacityProviderResponse_httpStatus,

    -- ** DeleteService
    deleteService_force,
    deleteService_cluster,
    deleteService_service,
    deleteServiceResponse_service,
    deleteServiceResponse_httpStatus,

    -- ** UpdateService
    updateService_deploymentConfiguration,
    updateService_capacityProviderStrategy,
    updateService_networkConfiguration,
    updateService_desiredCount,
    updateService_platformVersion,
    updateService_placementStrategy,
    updateService_placementConstraints,
    updateService_enableExecuteCommand,
    updateService_healthCheckGracePeriodSeconds,
    updateService_taskDefinition,
    updateService_forceNewDeployment,
    updateService_cluster,
    updateService_service,
    updateServiceResponse_service,
    updateServiceResponse_httpStatus,

    -- ** UpdateCapacityProvider
    updateCapacityProvider_name,
    updateCapacityProvider_autoScalingGroupProvider,
    updateCapacityProviderResponse_capacityProvider,
    updateCapacityProviderResponse_httpStatus,

    -- ** CreateCapacityProvider
    createCapacityProvider_tags,
    createCapacityProvider_name,
    createCapacityProvider_autoScalingGroupProvider,
    createCapacityProviderResponse_capacityProvider,
    createCapacityProviderResponse_httpStatus,

    -- ** DescribeTaskSets
    describeTaskSets_taskSets,
    describeTaskSets_include,
    describeTaskSets_cluster,
    describeTaskSets_service,
    describeTaskSetsResponse_taskSets,
    describeTaskSetsResponse_failures,
    describeTaskSetsResponse_httpStatus,

    -- ** RegisterTaskDefinition
    registerTaskDefinition_taskRoleArn,
    registerTaskDefinition_memory,
    registerTaskDefinition_requiresCompatibilities,
    registerTaskDefinition_pidMode,
    registerTaskDefinition_volumes,
    registerTaskDefinition_executionRoleArn,
    registerTaskDefinition_placementConstraints,
    registerTaskDefinition_inferenceAccelerators,
    registerTaskDefinition_proxyConfiguration,
    registerTaskDefinition_ipcMode,
    registerTaskDefinition_tags,
    registerTaskDefinition_ephemeralStorage,
    registerTaskDefinition_cpu,
    registerTaskDefinition_networkMode,
    registerTaskDefinition_family,
    registerTaskDefinition_containerDefinitions,
    registerTaskDefinitionResponse_tags,
    registerTaskDefinitionResponse_taskDefinition,
    registerTaskDefinitionResponse_httpStatus,

    -- ** ListTaskDefinitions
    listTaskDefinitions_nextToken,
    listTaskDefinitions_status,
    listTaskDefinitions_maxResults,
    listTaskDefinitions_familyPrefix,
    listTaskDefinitions_sort,
    listTaskDefinitionsResponse_nextToken,
    listTaskDefinitionsResponse_taskDefinitionArns,
    listTaskDefinitionsResponse_httpStatus,

    -- ** PutAttributes
    putAttributes_cluster,
    putAttributes_attributes,
    putAttributesResponse_attributes,
    putAttributesResponse_httpStatus,

    -- ** DeleteTaskSet
    deleteTaskSet_force,
    deleteTaskSet_cluster,
    deleteTaskSet_service,
    deleteTaskSet_taskSet,
    deleteTaskSetResponse_taskSet,
    deleteTaskSetResponse_httpStatus,

    -- ** UpdateClusterSettings
    updateClusterSettings_cluster,
    updateClusterSettings_settings,
    updateClusterSettingsResponse_cluster,
    updateClusterSettingsResponse_httpStatus,

    -- ** DeregisterContainerInstance
    deregisterContainerInstance_force,
    deregisterContainerInstance_cluster,
    deregisterContainerInstance_containerInstance,
    deregisterContainerInstanceResponse_containerInstance,
    deregisterContainerInstanceResponse_httpStatus,

    -- ** UpdateTaskSet
    updateTaskSet_cluster,
    updateTaskSet_service,
    updateTaskSet_taskSet,
    updateTaskSet_scale,
    updateTaskSetResponse_taskSet,
    updateTaskSetResponse_httpStatus,

    -- ** DeleteAccountSetting
    deleteAccountSetting_principalArn,
    deleteAccountSetting_name,
    deleteAccountSettingResponse_setting,
    deleteAccountSettingResponse_httpStatus,

    -- ** ListAccountSettings
    listAccountSettings_nextToken,
    listAccountSettings_maxResults,
    listAccountSettings_effectiveSettings,
    listAccountSettings_name,
    listAccountSettings_principalArn,
    listAccountSettings_value,
    listAccountSettingsResponse_nextToken,
    listAccountSettingsResponse_settings,
    listAccountSettingsResponse_httpStatus,

    -- ** UpdateContainerInstancesState
    updateContainerInstancesState_cluster,
    updateContainerInstancesState_containerInstances,
    updateContainerInstancesState_status,
    updateContainerInstancesStateResponse_failures,
    updateContainerInstancesStateResponse_containerInstances,
    updateContainerInstancesStateResponse_httpStatus,

    -- ** DescribeCapacityProviders
    describeCapacityProviders_nextToken,
    describeCapacityProviders_maxResults,
    describeCapacityProviders_include,
    describeCapacityProviders_capacityProviders,
    describeCapacityProvidersResponse_nextToken,
    describeCapacityProvidersResponse_failures,
    describeCapacityProvidersResponse_capacityProviders,
    describeCapacityProvidersResponse_httpStatus,

    -- ** ListClusters
    listClusters_nextToken,
    listClusters_maxResults,
    listClustersResponse_nextToken,
    listClustersResponse_clusterArns,
    listClustersResponse_httpStatus,

    -- ** UpdateCluster
    updateCluster_configuration,
    updateCluster_settings,
    updateCluster_cluster,
    updateClusterResponse_cluster,
    updateClusterResponse_httpStatus,

    -- ** DeleteCluster
    deleteCluster_cluster,
    deleteClusterResponse_cluster,
    deleteClusterResponse_httpStatus,

    -- ** DescribeServices
    describeServices_include,
    describeServices_cluster,
    describeServices_services,
    describeServicesResponse_services,
    describeServicesResponse_failures,
    describeServicesResponse_httpStatus,

    -- ** SubmitTaskStateChange
    submitTaskStateChange_status,
    submitTaskStateChange_pullStartedAt,
    submitTaskStateChange_task,
    submitTaskStateChange_managedAgents,
    submitTaskStateChange_containers,
    submitTaskStateChange_reason,
    submitTaskStateChange_pullStoppedAt,
    submitTaskStateChange_executionStoppedAt,
    submitTaskStateChange_cluster,
    submitTaskStateChange_attachments,
    submitTaskStateChangeResponse_acknowledgment,
    submitTaskStateChangeResponse_httpStatus,

    -- ** ExecuteCommand
    executeCommand_container,
    executeCommand_cluster,
    executeCommand_command,
    executeCommand_interactive,
    executeCommand_task,
    executeCommandResponse_clusterArn,
    executeCommandResponse_interactive,
    executeCommandResponse_containerArn,
    executeCommandResponse_session,
    executeCommandResponse_containerName,
    executeCommandResponse_taskArn,
    executeCommandResponse_httpStatus,

    -- ** DeregisterTaskDefinition
    deregisterTaskDefinition_taskDefinition,
    deregisterTaskDefinitionResponse_taskDefinition,
    deregisterTaskDefinitionResponse_httpStatus,

    -- ** StartTask
    startTask_referenceId,
    startTask_networkConfiguration,
    startTask_enableECSManagedTags,
    startTask_startedBy,
    startTask_group,
    startTask_overrides,
    startTask_enableExecuteCommand,
    startTask_tags,
    startTask_cluster,
    startTask_propagateTags,
    startTask_containerInstances,
    startTask_taskDefinition,
    startTaskResponse_tasks,
    startTaskResponse_failures,
    startTaskResponse_httpStatus,

    -- ** DescribeTaskDefinition
    describeTaskDefinition_include,
    describeTaskDefinition_taskDefinition,
    describeTaskDefinitionResponse_tags,
    describeTaskDefinitionResponse_taskDefinition,
    describeTaskDefinitionResponse_httpStatus,

    -- ** PutClusterCapacityProviders
    putClusterCapacityProviders_cluster,
    putClusterCapacityProviders_capacityProviders,
    putClusterCapacityProviders_defaultCapacityProviderStrategy,
    putClusterCapacityProvidersResponse_cluster,
    putClusterCapacityProvidersResponse_httpStatus,

    -- ** StopTask
    stopTask_reason,
    stopTask_cluster,
    stopTask_task,
    stopTaskResponse_task,
    stopTaskResponse_httpStatus,

    -- ** ListTagsForResource
    listTagsForResource_resourceArn,
    listTagsForResourceResponse_tags,
    listTagsForResourceResponse_httpStatus,

    -- ** ListTaskDefinitionFamilies
    listTaskDefinitionFamilies_nextToken,
    listTaskDefinitionFamilies_status,
    listTaskDefinitionFamilies_maxResults,
    listTaskDefinitionFamilies_familyPrefix,
    listTaskDefinitionFamiliesResponse_nextToken,
    listTaskDefinitionFamiliesResponse_families,
    listTaskDefinitionFamiliesResponse_httpStatus,

    -- * Types

    -- ** Attachment
    attachment_status,
    attachment_id,
    attachment_details,
    attachment_type,

    -- ** AttachmentStateChange
    attachmentStateChange_attachmentArn,
    attachmentStateChange_status,

    -- ** Attribute
    attribute_targetId,
    attribute_targetType,
    attribute_value,
    attribute_name,

    -- ** AutoScalingGroupProvider
    autoScalingGroupProvider_managedScaling,
    autoScalingGroupProvider_managedTerminationProtection,
    autoScalingGroupProvider_autoScalingGroupArn,

    -- ** AutoScalingGroupProviderUpdate
    autoScalingGroupProviderUpdate_managedScaling,
    autoScalingGroupProviderUpdate_managedTerminationProtection,

    -- ** AwsVpcConfiguration
    awsVpcConfiguration_assignPublicIp,
    awsVpcConfiguration_securityGroups,
    awsVpcConfiguration_subnets,

    -- ** CapacityProvider
    capacityProvider_status,
    capacityProvider_updateStatusReason,
    capacityProvider_capacityProviderArn,
    capacityProvider_updateStatus,
    capacityProvider_name,
    capacityProvider_autoScalingGroupProvider,
    capacityProvider_tags,

    -- ** CapacityProviderStrategyItem
    capacityProviderStrategyItem_weight,
    capacityProviderStrategyItem_base,
    capacityProviderStrategyItem_capacityProvider,

    -- ** Cluster
    cluster_clusterArn,
    cluster_status,
    cluster_activeServicesCount,
    cluster_registeredContainerInstancesCount,
    cluster_configuration,
    cluster_statistics,
    cluster_defaultCapacityProviderStrategy,
    cluster_pendingTasksCount,
    cluster_tags,
    cluster_capacityProviders,
    cluster_attachmentsStatus,
    cluster_clusterName,
    cluster_settings,
    cluster_runningTasksCount,
    cluster_attachments,

    -- ** ClusterConfiguration
    clusterConfiguration_executeCommandConfiguration,

    -- ** ClusterSetting
    clusterSetting_name,
    clusterSetting_value,

    -- ** Container
    container_imageDigest,
    container_gpuIds,
    container_memoryReservation,
    container_memory,
    container_runtimeId,
    container_exitCode,
    container_containerArn,
    container_name,
    container_image,
    container_managedAgents,
    container_networkBindings,
    container_reason,
    container_lastStatus,
    container_cpu,
    container_networkInterfaces,
    container_healthStatus,
    container_taskArn,

    -- ** ContainerDefinition
    containerDefinition_hostname,
    containerDefinition_linuxParameters,
    containerDefinition_firelensConfiguration,
    containerDefinition_dependsOn,
    containerDefinition_memoryReservation,
    containerDefinition_dockerLabels,
    containerDefinition_memory,
    containerDefinition_extraHosts,
    containerDefinition_user,
    containerDefinition_systemControls,
    containerDefinition_privileged,
    containerDefinition_links,
    containerDefinition_interactive,
    containerDefinition_environmentFiles,
    containerDefinition_entryPoint,
    containerDefinition_workingDirectory,
    containerDefinition_environment,
    containerDefinition_secrets,
    containerDefinition_volumesFrom,
    containerDefinition_mountPoints,
    containerDefinition_command,
    containerDefinition_dnsServers,
    containerDefinition_name,
    containerDefinition_image,
    containerDefinition_dnsSearchDomains,
    containerDefinition_pseudoTerminal,
    containerDefinition_logConfiguration,
    containerDefinition_portMappings,
    containerDefinition_essential,
    containerDefinition_cpu,
    containerDefinition_resourceRequirements,
    containerDefinition_ulimits,
    containerDefinition_startTimeout,
    containerDefinition_readonlyRootFilesystem,
    containerDefinition_stopTimeout,
    containerDefinition_healthCheck,
    containerDefinition_dockerSecurityOptions,
    containerDefinition_disableNetworking,
    containerDefinition_repositoryCredentials,

    -- ** ContainerDependency
    containerDependency_containerName,
    containerDependency_condition,

    -- ** ContainerInstance
    containerInstance_agentUpdateStatus,
    containerInstance_versionInfo,
    containerInstance_status,
    containerInstance_registeredResources,
    containerInstance_containerInstanceArn,
    containerInstance_registeredAt,
    containerInstance_pendingTasksCount,
    containerInstance_version,
    containerInstance_attributes,
    containerInstance_tags,
    containerInstance_agentConnected,
    containerInstance_ec2InstanceId,
    containerInstance_statusReason,
    containerInstance_remainingResources,
    containerInstance_runningTasksCount,
    containerInstance_capacityProviderName,
    containerInstance_attachments,

    -- ** ContainerOverride
    containerOverride_memoryReservation,
    containerOverride_memory,
    containerOverride_environmentFiles,
    containerOverride_environment,
    containerOverride_command,
    containerOverride_name,
    containerOverride_cpu,
    containerOverride_resourceRequirements,

    -- ** ContainerService
    containerService_clusterArn,
    containerService_taskSets,
    containerService_runningCount,
    containerService_status,
    containerService_roleArn,
    containerService_deploymentConfiguration,
    containerService_capacityProviderStrategy,
    containerService_networkConfiguration,
    containerService_desiredCount,
    containerService_enableECSManagedTags,
    containerService_deploymentController,
    containerService_launchType,
    containerService_createdAt,
    containerService_platformVersion,
    containerService_deployments,
    containerService_placementStrategy,
    containerService_serviceName,
    containerService_placementConstraints,
    containerService_events,
    containerService_pendingCount,
    containerService_enableExecuteCommand,
    containerService_loadBalancers,
    containerService_tags,
    containerService_healthCheckGracePeriodSeconds,
    containerService_serviceRegistries,
    containerService_createdBy,
    containerService_schedulingStrategy,
    containerService_taskDefinition,
    containerService_serviceArn,
    containerService_propagateTags,

    -- ** ContainerStateChange
    containerStateChange_imageDigest,
    containerStateChange_status,
    containerStateChange_runtimeId,
    containerStateChange_exitCode,
    containerStateChange_networkBindings,
    containerStateChange_reason,
    containerStateChange_containerName,

    -- ** Deployment
    deployment_rolloutState,
    deployment_runningCount,
    deployment_status,
    deployment_capacityProviderStrategy,
    deployment_networkConfiguration,
    deployment_desiredCount,
    deployment_updatedAt,
    deployment_launchType,
    deployment_id,
    deployment_createdAt,
    deployment_platformVersion,
    deployment_pendingCount,
    deployment_taskDefinition,
    deployment_rolloutStateReason,
    deployment_failedTasks,

    -- ** DeploymentCircuitBreaker
    deploymentCircuitBreaker_enable,
    deploymentCircuitBreaker_rollback,

    -- ** DeploymentConfiguration
    deploymentConfiguration_maximumPercent,
    deploymentConfiguration_minimumHealthyPercent,
    deploymentConfiguration_deploymentCircuitBreaker,

    -- ** DeploymentController
    deploymentController_type,

    -- ** Device
    device_permissions,
    device_containerPath,
    device_hostPath,

    -- ** DockerVolumeConfiguration
    dockerVolumeConfiguration_labels,
    dockerVolumeConfiguration_scope,
    dockerVolumeConfiguration_driverOpts,
    dockerVolumeConfiguration_autoprovision,
    dockerVolumeConfiguration_driver,

    -- ** EFSAuthorizationConfig
    eFSAuthorizationConfig_accessPointId,
    eFSAuthorizationConfig_iam,

    -- ** EFSVolumeConfiguration
    eFSVolumeConfiguration_transitEncryptionPort,
    eFSVolumeConfiguration_rootDirectory,
    eFSVolumeConfiguration_authorizationConfig,
    eFSVolumeConfiguration_transitEncryption,
    eFSVolumeConfiguration_fileSystemId,

    -- ** EnvironmentFile
    environmentFile_value,
    environmentFile_type,

    -- ** EphemeralStorage
    ephemeralStorage_sizeInGiB,

    -- ** ExecuteCommandConfiguration
    executeCommandConfiguration_logging,
    executeCommandConfiguration_kmsKeyId,
    executeCommandConfiguration_logConfiguration,

    -- ** ExecuteCommandLogConfiguration
    executeCommandLogConfiguration_cloudWatchLogGroupName,
    executeCommandLogConfiguration_cloudWatchEncryptionEnabled,
    executeCommandLogConfiguration_s3EncryptionEnabled,
    executeCommandLogConfiguration_s3KeyPrefix,
    executeCommandLogConfiguration_s3BucketName,

    -- ** FSxWindowsFileServerAuthorizationConfig
    fSxWindowsFileServerAuthorizationConfig_credentialsParameter,
    fSxWindowsFileServerAuthorizationConfig_domain,

    -- ** FSxWindowsFileServerVolumeConfiguration
    fSxWindowsFileServerVolumeConfiguration_fileSystemId,
    fSxWindowsFileServerVolumeConfiguration_rootDirectory,
    fSxWindowsFileServerVolumeConfiguration_authorizationConfig,

    -- ** Failure
    failure_arn,
    failure_reason,
    failure_detail,

    -- ** FirelensConfiguration
    firelensConfiguration_options,
    firelensConfiguration_type,

    -- ** HealthCheck
    healthCheck_retries,
    healthCheck_timeout,
    healthCheck_startPeriod,
    healthCheck_interval,
    healthCheck_command,

    -- ** HostEntry
    hostEntry_hostname,
    hostEntry_ipAddress,

    -- ** HostVolumeProperties
    hostVolumeProperties_sourcePath,

    -- ** InferenceAccelerator
    inferenceAccelerator_deviceName,
    inferenceAccelerator_deviceType,

    -- ** InferenceAcceleratorOverride
    inferenceAcceleratorOverride_deviceName,
    inferenceAcceleratorOverride_deviceType,

    -- ** KernelCapabilities
    kernelCapabilities_drop,
    kernelCapabilities_add,

    -- ** KeyValuePair
    keyValuePair_name,
    keyValuePair_value,

    -- ** LinuxParameters
    linuxParameters_tmpfs,
    linuxParameters_maxSwap,
    linuxParameters_capabilities,
    linuxParameters_devices,
    linuxParameters_swappiness,
    linuxParameters_initProcessEnabled,
    linuxParameters_sharedMemorySize,

    -- ** LoadBalancer
    loadBalancer_targetGroupArn,
    loadBalancer_containerPort,
    loadBalancer_containerName,
    loadBalancer_loadBalancerName,

    -- ** LogConfiguration
    logConfiguration_options,
    logConfiguration_secretOptions,
    logConfiguration_logDriver,

    -- ** ManagedAgent
    managedAgent_name,
    managedAgent_reason,
    managedAgent_lastStatus,
    managedAgent_lastStartedAt,

    -- ** ManagedAgentStateChange
    managedAgentStateChange_reason,
    managedAgentStateChange_containerName,
    managedAgentStateChange_managedAgentName,
    managedAgentStateChange_status,

    -- ** ManagedScaling
    managedScaling_status,
    managedScaling_maximumScalingStepSize,
    managedScaling_minimumScalingStepSize,
    managedScaling_instanceWarmupPeriod,
    managedScaling_targetCapacity,

    -- ** MountPoint
    mountPoint_readOnly,
    mountPoint_sourceVolume,
    mountPoint_containerPath,

    -- ** NetworkBinding
    networkBinding_hostPort,
    networkBinding_bindIP,
    networkBinding_protocol,
    networkBinding_containerPort,

    -- ** NetworkConfiguration
    networkConfiguration_awsvpcConfiguration,

    -- ** NetworkInterface
    networkInterface_privateIpv4Address,
    networkInterface_ipv6Address,
    networkInterface_attachmentId,

    -- ** PlacementConstraint
    placementConstraint_type,
    placementConstraint_expression,

    -- ** PlacementStrategy
    placementStrategy_type,
    placementStrategy_field,

    -- ** PlatformDevice
    platformDevice_id,
    platformDevice_type,

    -- ** PortMapping
    portMapping_hostPort,
    portMapping_protocol,
    portMapping_containerPort,

    -- ** ProxyConfiguration
    proxyConfiguration_properties,
    proxyConfiguration_type,
    proxyConfiguration_containerName,

    -- ** RepositoryCredentials
    repositoryCredentials_credentialsParameter,

    -- ** Resource
    resource_stringSetValue,
    resource_doubleValue,
    resource_name,
    resource_longValue,
    resource_type,
    resource_integerValue,

    -- ** ResourceRequirement
    resourceRequirement_value,
    resourceRequirement_type,

    -- ** Scale
    scale_unit,
    scale_value,

    -- ** Secret
    secret_name,
    secret_valueFrom,

    -- ** ServiceEvent
    serviceEvent_message,
    serviceEvent_id,
    serviceEvent_createdAt,

    -- ** ServiceRegistry
    serviceRegistry_port,
    serviceRegistry_containerPort,
    serviceRegistry_containerName,
    serviceRegistry_registryArn,

    -- ** Session
    session_sessionId,
    session_streamUrl,
    session_tokenValue,

    -- ** Setting
    setting_name,
    setting_principalArn,
    setting_value,

    -- ** SystemControl
    systemControl_value,
    systemControl_namespace,

    -- ** Tag
    tag_key,
    tag_value,

    -- ** Task
    task_clusterArn,
    task_startedAt,
    task_memory,
    task_pullStartedAt,
    task_containerInstanceArn,
    task_launchType,
    task_createdAt,
    task_platformVersion,
    task_connectivity,
    task_stoppingAt,
    task_startedBy,
    task_version,
    task_group,
    task_availabilityZone,
    task_inferenceAccelerators,
    task_attributes,
    task_overrides,
    task_desiredStatus,
    task_stoppedAt,
    task_containers,
    task_enableExecuteCommand,
    task_tags,
    task_pullStoppedAt,
    task_ephemeralStorage,
    task_lastStatus,
    task_executionStoppedAt,
    task_cpu,
    task_healthStatus,
    task_connectivityAt,
    task_taskArn,
    task_taskDefinitionArn,
    task_stopCode,
    task_stoppedReason,
    task_capacityProviderName,
    task_attachments,

    -- ** TaskDefinition
    taskDefinition_taskRoleArn,
    taskDefinition_status,
    taskDefinition_memory,
    taskDefinition_containerDefinitions,
    taskDefinition_requiresCompatibilities,
    taskDefinition_pidMode,
    taskDefinition_volumes,
    taskDefinition_executionRoleArn,
    taskDefinition_compatibilities,
    taskDefinition_registeredAt,
    taskDefinition_placementConstraints,
    taskDefinition_inferenceAccelerators,
    taskDefinition_deregisteredAt,
    taskDefinition_proxyConfiguration,
    taskDefinition_requiresAttributes,
    taskDefinition_ipcMode,
    taskDefinition_family,
    taskDefinition_ephemeralStorage,
    taskDefinition_cpu,
    taskDefinition_registeredBy,
    taskDefinition_revision,
    taskDefinition_networkMode,
    taskDefinition_taskDefinitionArn,

    -- ** TaskDefinitionPlacementConstraint
    taskDefinitionPlacementConstraint_type,
    taskDefinitionPlacementConstraint_expression,

    -- ** TaskOverride
    taskOverride_taskRoleArn,
    taskOverride_memory,
    taskOverride_inferenceAcceleratorOverrides,
    taskOverride_executionRoleArn,
    taskOverride_containerOverrides,
    taskOverride_ephemeralStorage,
    taskOverride_cpu,

    -- ** TaskSet
    taskSet_clusterArn,
    taskSet_stabilityStatusAt,
    taskSet_runningCount,
    taskSet_status,
    taskSet_stabilityStatus,
    taskSet_capacityProviderStrategy,
    taskSet_networkConfiguration,
    taskSet_updatedAt,
    taskSet_launchType,
    taskSet_id,
    taskSet_createdAt,
    taskSet_platformVersion,
    taskSet_startedBy,
    taskSet_computedDesiredCount,
    taskSet_pendingCount,
    taskSet_loadBalancers,
    taskSet_tags,
    taskSet_serviceRegistries,
    taskSet_scale,
    taskSet_taskDefinition,
    taskSet_serviceArn,
    taskSet_externalId,
    taskSet_taskSetArn,

    -- ** Tmpfs
    tmpfs_mountOptions,
    tmpfs_containerPath,
    tmpfs_size,

    -- ** Ulimit
    ulimit_name,
    ulimit_softLimit,
    ulimit_hardLimit,

    -- ** VersionInfo
    versionInfo_agentVersion,
    versionInfo_dockerVersion,
    versionInfo_agentHash,

    -- ** Volume
    volume_name,
    volume_dockerVolumeConfiguration,
    volume_fsxWindowsFileServerVolumeConfiguration,
    volume_host,
    volume_efsVolumeConfiguration,

    -- ** VolumeFrom
    volumeFrom_readOnly,
    volumeFrom_sourceContainer,
  )
where

import Network.AWS.ECS.CreateCapacityProvider
import Network.AWS.ECS.CreateCluster
import Network.AWS.ECS.CreateService
import Network.AWS.ECS.CreateTaskSet
import Network.AWS.ECS.DeleteAccountSetting
import Network.AWS.ECS.DeleteAttributes
import Network.AWS.ECS.DeleteCapacityProvider
import Network.AWS.ECS.DeleteCluster
import Network.AWS.ECS.DeleteService
import Network.AWS.ECS.DeleteTaskSet
import Network.AWS.ECS.DeregisterContainerInstance
import Network.AWS.ECS.DeregisterTaskDefinition
import Network.AWS.ECS.DescribeCapacityProviders
import Network.AWS.ECS.DescribeClusters
import Network.AWS.ECS.DescribeContainerInstances
import Network.AWS.ECS.DescribeServices
import Network.AWS.ECS.DescribeTaskDefinition
import Network.AWS.ECS.DescribeTaskSets
import Network.AWS.ECS.DescribeTasks
import Network.AWS.ECS.DiscoverPollEndpoint
import Network.AWS.ECS.ExecuteCommand
import Network.AWS.ECS.ListAccountSettings
import Network.AWS.ECS.ListAttributes
import Network.AWS.ECS.ListClusters
import Network.AWS.ECS.ListContainerInstances
import Network.AWS.ECS.ListServices
import Network.AWS.ECS.ListTagsForResource
import Network.AWS.ECS.ListTaskDefinitionFamilies
import Network.AWS.ECS.ListTaskDefinitions
import Network.AWS.ECS.ListTasks
import Network.AWS.ECS.PutAccountSetting
import Network.AWS.ECS.PutAccountSettingDefault
import Network.AWS.ECS.PutAttributes
import Network.AWS.ECS.PutClusterCapacityProviders
import Network.AWS.ECS.RegisterContainerInstance
import Network.AWS.ECS.RegisterTaskDefinition
import Network.AWS.ECS.RunTask
import Network.AWS.ECS.StartTask
import Network.AWS.ECS.StopTask
import Network.AWS.ECS.SubmitAttachmentStateChanges
import Network.AWS.ECS.SubmitContainerStateChange
import Network.AWS.ECS.SubmitTaskStateChange
import Network.AWS.ECS.TagResource
import Network.AWS.ECS.Types.Attachment
import Network.AWS.ECS.Types.AttachmentStateChange
import Network.AWS.ECS.Types.Attribute
import Network.AWS.ECS.Types.AutoScalingGroupProvider
import Network.AWS.ECS.Types.AutoScalingGroupProviderUpdate
import Network.AWS.ECS.Types.AwsVpcConfiguration
import Network.AWS.ECS.Types.CapacityProvider
import Network.AWS.ECS.Types.CapacityProviderStrategyItem
import Network.AWS.ECS.Types.Cluster
import Network.AWS.ECS.Types.ClusterConfiguration
import Network.AWS.ECS.Types.ClusterSetting
import Network.AWS.ECS.Types.Container
import Network.AWS.ECS.Types.ContainerDefinition
import Network.AWS.ECS.Types.ContainerDependency
import Network.AWS.ECS.Types.ContainerInstance
import Network.AWS.ECS.Types.ContainerOverride
import Network.AWS.ECS.Types.ContainerService
import Network.AWS.ECS.Types.ContainerStateChange
import Network.AWS.ECS.Types.Deployment
import Network.AWS.ECS.Types.DeploymentCircuitBreaker
import Network.AWS.ECS.Types.DeploymentConfiguration
import Network.AWS.ECS.Types.DeploymentController
import Network.AWS.ECS.Types.Device
import Network.AWS.ECS.Types.DockerVolumeConfiguration
import Network.AWS.ECS.Types.EFSAuthorizationConfig
import Network.AWS.ECS.Types.EFSVolumeConfiguration
import Network.AWS.ECS.Types.EnvironmentFile
import Network.AWS.ECS.Types.EphemeralStorage
import Network.AWS.ECS.Types.ExecuteCommandConfiguration
import Network.AWS.ECS.Types.ExecuteCommandLogConfiguration
import Network.AWS.ECS.Types.FSxWindowsFileServerAuthorizationConfig
import Network.AWS.ECS.Types.FSxWindowsFileServerVolumeConfiguration
import Network.AWS.ECS.Types.Failure
import Network.AWS.ECS.Types.FirelensConfiguration
import Network.AWS.ECS.Types.HealthCheck
import Network.AWS.ECS.Types.HostEntry
import Network.AWS.ECS.Types.HostVolumeProperties
import Network.AWS.ECS.Types.InferenceAccelerator
import Network.AWS.ECS.Types.InferenceAcceleratorOverride
import Network.AWS.ECS.Types.KernelCapabilities
import Network.AWS.ECS.Types.KeyValuePair
import Network.AWS.ECS.Types.LinuxParameters
import Network.AWS.ECS.Types.LoadBalancer
import Network.AWS.ECS.Types.LogConfiguration
import Network.AWS.ECS.Types.ManagedAgent
import Network.AWS.ECS.Types.ManagedAgentStateChange
import Network.AWS.ECS.Types.ManagedScaling
import Network.AWS.ECS.Types.MountPoint
import Network.AWS.ECS.Types.NetworkBinding
import Network.AWS.ECS.Types.NetworkConfiguration
import Network.AWS.ECS.Types.NetworkInterface
import Network.AWS.ECS.Types.PlacementConstraint
import Network.AWS.ECS.Types.PlacementStrategy
import Network.AWS.ECS.Types.PlatformDevice
import Network.AWS.ECS.Types.PortMapping
import Network.AWS.ECS.Types.ProxyConfiguration
import Network.AWS.ECS.Types.RepositoryCredentials
import Network.AWS.ECS.Types.Resource
import Network.AWS.ECS.Types.ResourceRequirement
import Network.AWS.ECS.Types.Scale
import Network.AWS.ECS.Types.Secret
import Network.AWS.ECS.Types.ServiceEvent
import Network.AWS.ECS.Types.ServiceRegistry
import Network.AWS.ECS.Types.Session
import Network.AWS.ECS.Types.Setting
import Network.AWS.ECS.Types.SystemControl
import Network.AWS.ECS.Types.Tag
import Network.AWS.ECS.Types.Task
import Network.AWS.ECS.Types.TaskDefinition
import Network.AWS.ECS.Types.TaskDefinitionPlacementConstraint
import Network.AWS.ECS.Types.TaskOverride
import Network.AWS.ECS.Types.TaskSet
import Network.AWS.ECS.Types.Tmpfs
import Network.AWS.ECS.Types.Ulimit
import Network.AWS.ECS.Types.VersionInfo
import Network.AWS.ECS.Types.Volume
import Network.AWS.ECS.Types.VolumeFrom
import Network.AWS.ECS.UntagResource
import Network.AWS.ECS.UpdateCapacityProvider
import Network.AWS.ECS.UpdateCluster
import Network.AWS.ECS.UpdateClusterSettings
import Network.AWS.ECS.UpdateContainerAgent
import Network.AWS.ECS.UpdateContainerInstancesState
import Network.AWS.ECS.UpdateService
import Network.AWS.ECS.UpdateServicePrimaryTaskSet
import Network.AWS.ECS.UpdateTaskSet
