{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.Project
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.Project where

import Network.AWS.CodeBuild.Types.LogsConfig
import Network.AWS.CodeBuild.Types.ProjectArtifacts
import Network.AWS.CodeBuild.Types.ProjectBadge
import Network.AWS.CodeBuild.Types.ProjectBuildBatchConfig
import Network.AWS.CodeBuild.Types.ProjectCache
import Network.AWS.CodeBuild.Types.ProjectEnvironment
import Network.AWS.CodeBuild.Types.ProjectFileSystemLocation
import Network.AWS.CodeBuild.Types.ProjectSource
import Network.AWS.CodeBuild.Types.ProjectSourceVersion
import Network.AWS.CodeBuild.Types.ProjectVisibilityType
import Network.AWS.CodeBuild.Types.Tag
import Network.AWS.CodeBuild.Types.VpcConfig
import Network.AWS.CodeBuild.Types.Webhook
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about a build project.
--
-- /See:/ 'newProject' smart constructor.
data Project = Project'
  { -- | Information about the VPC configuration that CodeBuild accesses.
    vpcConfig :: Prelude.Maybe VpcConfig,
    -- | A version of the build input to be built for this project. If not
    -- specified, the latest version is used. If specified, it must be one of:
    --
    -- -   For CodeCommit: the commit ID, branch, or Git tag to use.
    --
    -- -   For GitHub: the commit ID, pull request ID, branch name, or tag name
    --     that corresponds to the version of the source code you want to
    --     build. If a pull request ID is specified, it must use the format
    --     @pr\/pull-request-ID@ (for example @pr\/25@). If a branch name is
    --     specified, the branch\'s HEAD commit ID is used. If not specified,
    --     the default branch\'s HEAD commit ID is used.
    --
    -- -   For Bitbucket: the commit ID, branch name, or tag name that
    --     corresponds to the version of the source code you want to build. If
    --     a branch name is specified, the branch\'s HEAD commit ID is used. If
    --     not specified, the default branch\'s HEAD commit ID is used.
    --
    -- -   For Amazon S3: the version ID of the object that represents the
    --     build input ZIP file to use.
    --
    -- If @sourceVersion@ is specified at the build level, then that version
    -- takes precedence over this @sourceVersion@ (at the project level).
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html Source Version Sample with CodeBuild>
    -- in the /CodeBuild User Guide/.
    sourceVersion :: Prelude.Maybe Prelude.Text,
    -- | An array of @ProjectArtifacts@ objects.
    secondaryArtifacts :: Prelude.Maybe [ProjectArtifacts],
    -- | Information about the cache for the build project.
    cache :: Prelude.Maybe ProjectCache,
    -- | The ARN of the IAM role that enables CodeBuild to interact with
    -- dependent Amazon Web Services services on behalf of the Amazon Web
    -- Services account.
    serviceRole :: Prelude.Maybe Prelude.Text,
    -- | An array of @ProjectSourceVersion@ objects. If @secondarySourceVersions@
    -- is specified at the build level, then they take over these
    -- @secondarySourceVersions@ (at the project level).
    secondarySourceVersions :: Prelude.Maybe [ProjectSourceVersion],
    projectVisibility :: Prelude.Maybe ProjectVisibilityType,
    -- | Information about a webhook that connects repository events to a build
    -- project in CodeBuild.
    webhook :: Prelude.Maybe Webhook,
    -- | The maximum number of concurrent builds that are allowed for this
    -- project.
    --
    -- New builds are only started if the current number of builds is less than
    -- or equal to this limit. If the current build count meets this limit, new
    -- builds are throttled and are not run.
    concurrentBuildLimit :: Prelude.Maybe Prelude.Int,
    -- | The Key Management Service customer master key (CMK) to be used for
    -- encrypting the build output artifacts.
    --
    -- You can use a cross-account KMS key to encrypt the build output
    -- artifacts if your service role has permission to that key.
    --
    -- You can specify either the Amazon Resource Name (ARN) of the CMK or, if
    -- available, the CMK\'s alias (using the format @alias\/\<alias-name>@).
    -- If you don\'t specify a value, CodeBuild uses the managed CMK for Amazon
    -- Simple Storage Service (Amazon S3).
    encryptionKey :: Prelude.Maybe Prelude.Text,
    -- | Information about the build environment for this build project.
    environment :: Prelude.Maybe ProjectEnvironment,
    -- | Information about the build input source code for this build project.
    source :: Prelude.Maybe ProjectSource,
    -- | The Amazon Resource Name (ARN) of the build project.
    arn :: Prelude.Maybe Prelude.Text,
    -- | Information about logs for the build project. A project can create logs
    -- in CloudWatch Logs, an S3 bucket, or both.
    logsConfig :: Prelude.Maybe LogsConfig,
    -- | Information about the build output artifacts for the build project.
    artifacts :: Prelude.Maybe ProjectArtifacts,
    -- | The ARN of the IAM role that enables CodeBuild to access the CloudWatch
    -- Logs and Amazon S3 artifacts for the project\'s builds.
    resourceAccessRole :: Prelude.Maybe Prelude.Text,
    -- | The name of the build project.
    name :: Prelude.Maybe Prelude.Text,
    -- | The number of minutes a build is allowed to be queued before it times
    -- out.
    queuedTimeoutInMinutes :: Prelude.Maybe Prelude.Natural,
    -- | An array of @ProjectSource@ objects.
    secondarySources :: Prelude.Maybe [ProjectSource],
    -- | How long, in minutes, from 5 to 480 (8 hours), for CodeBuild to wait
    -- before timing out any related build that did not get marked as
    -- completed. The default is 60 minutes.
    timeoutInMinutes :: Prelude.Maybe Prelude.Natural,
    -- | A list of tag key and value pairs associated with this build project.
    --
    -- These tags are available for use by Amazon Web Services services that
    -- support CodeBuild build project tags.
    tags :: Prelude.Maybe [Tag],
    -- | A description that makes the build project easy to identify.
    description :: Prelude.Maybe Prelude.Text,
    -- | When the build project\'s settings were last modified, expressed in Unix
    -- time format.
    lastModified :: Prelude.Maybe Core.POSIX,
    -- | A ProjectBuildBatchConfig object that defines the batch build options
    -- for the project.
    buildBatchConfig :: Prelude.Maybe ProjectBuildBatchConfig,
    -- | When the build project was created, expressed in Unix time format.
    created :: Prelude.Maybe Core.POSIX,
    -- | Information about the build badge for the build project.
    badge :: Prelude.Maybe ProjectBadge,
    -- | An array of @ProjectFileSystemLocation@ objects for a CodeBuild build
    -- project. A @ProjectFileSystemLocation@ object specifies the
    -- @identifier@, @location@, @mountOptions@, @mountPoint@, and @type@ of a
    -- file system created using Amazon Elastic File System.
    fileSystemLocations :: Prelude.Maybe [ProjectFileSystemLocation],
    -- | Contains the project identifier used with the public build APIs.
    publicProjectAlias :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Project' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'vpcConfig', 'project_vpcConfig' - Information about the VPC configuration that CodeBuild accesses.
--
-- 'sourceVersion', 'project_sourceVersion' - A version of the build input to be built for this project. If not
-- specified, the latest version is used. If specified, it must be one of:
--
-- -   For CodeCommit: the commit ID, branch, or Git tag to use.
--
-- -   For GitHub: the commit ID, pull request ID, branch name, or tag name
--     that corresponds to the version of the source code you want to
--     build. If a pull request ID is specified, it must use the format
--     @pr\/pull-request-ID@ (for example @pr\/25@). If a branch name is
--     specified, the branch\'s HEAD commit ID is used. If not specified,
--     the default branch\'s HEAD commit ID is used.
--
-- -   For Bitbucket: the commit ID, branch name, or tag name that
--     corresponds to the version of the source code you want to build. If
--     a branch name is specified, the branch\'s HEAD commit ID is used. If
--     not specified, the default branch\'s HEAD commit ID is used.
--
-- -   For Amazon S3: the version ID of the object that represents the
--     build input ZIP file to use.
--
-- If @sourceVersion@ is specified at the build level, then that version
-- takes precedence over this @sourceVersion@ (at the project level).
--
-- For more information, see
-- <https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html Source Version Sample with CodeBuild>
-- in the /CodeBuild User Guide/.
--
-- 'secondaryArtifacts', 'project_secondaryArtifacts' - An array of @ProjectArtifacts@ objects.
--
-- 'cache', 'project_cache' - Information about the cache for the build project.
--
-- 'serviceRole', 'project_serviceRole' - The ARN of the IAM role that enables CodeBuild to interact with
-- dependent Amazon Web Services services on behalf of the Amazon Web
-- Services account.
--
-- 'secondarySourceVersions', 'project_secondarySourceVersions' - An array of @ProjectSourceVersion@ objects. If @secondarySourceVersions@
-- is specified at the build level, then they take over these
-- @secondarySourceVersions@ (at the project level).
--
-- 'projectVisibility', 'project_projectVisibility' - Undocumented member.
--
-- 'webhook', 'project_webhook' - Information about a webhook that connects repository events to a build
-- project in CodeBuild.
--
-- 'concurrentBuildLimit', 'project_concurrentBuildLimit' - The maximum number of concurrent builds that are allowed for this
-- project.
--
-- New builds are only started if the current number of builds is less than
-- or equal to this limit. If the current build count meets this limit, new
-- builds are throttled and are not run.
--
-- 'encryptionKey', 'project_encryptionKey' - The Key Management Service customer master key (CMK) to be used for
-- encrypting the build output artifacts.
--
-- You can use a cross-account KMS key to encrypt the build output
-- artifacts if your service role has permission to that key.
--
-- You can specify either the Amazon Resource Name (ARN) of the CMK or, if
-- available, the CMK\'s alias (using the format @alias\/\<alias-name>@).
-- If you don\'t specify a value, CodeBuild uses the managed CMK for Amazon
-- Simple Storage Service (Amazon S3).
--
-- 'environment', 'project_environment' - Information about the build environment for this build project.
--
-- 'source', 'project_source' - Information about the build input source code for this build project.
--
-- 'arn', 'project_arn' - The Amazon Resource Name (ARN) of the build project.
--
-- 'logsConfig', 'project_logsConfig' - Information about logs for the build project. A project can create logs
-- in CloudWatch Logs, an S3 bucket, or both.
--
-- 'artifacts', 'project_artifacts' - Information about the build output artifacts for the build project.
--
-- 'resourceAccessRole', 'project_resourceAccessRole' - The ARN of the IAM role that enables CodeBuild to access the CloudWatch
-- Logs and Amazon S3 artifacts for the project\'s builds.
--
-- 'name', 'project_name' - The name of the build project.
--
-- 'queuedTimeoutInMinutes', 'project_queuedTimeoutInMinutes' - The number of minutes a build is allowed to be queued before it times
-- out.
--
-- 'secondarySources', 'project_secondarySources' - An array of @ProjectSource@ objects.
--
-- 'timeoutInMinutes', 'project_timeoutInMinutes' - How long, in minutes, from 5 to 480 (8 hours), for CodeBuild to wait
-- before timing out any related build that did not get marked as
-- completed. The default is 60 minutes.
--
-- 'tags', 'project_tags' - A list of tag key and value pairs associated with this build project.
--
-- These tags are available for use by Amazon Web Services services that
-- support CodeBuild build project tags.
--
-- 'description', 'project_description' - A description that makes the build project easy to identify.
--
-- 'lastModified', 'project_lastModified' - When the build project\'s settings were last modified, expressed in Unix
-- time format.
--
-- 'buildBatchConfig', 'project_buildBatchConfig' - A ProjectBuildBatchConfig object that defines the batch build options
-- for the project.
--
-- 'created', 'project_created' - When the build project was created, expressed in Unix time format.
--
-- 'badge', 'project_badge' - Information about the build badge for the build project.
--
-- 'fileSystemLocations', 'project_fileSystemLocations' - An array of @ProjectFileSystemLocation@ objects for a CodeBuild build
-- project. A @ProjectFileSystemLocation@ object specifies the
-- @identifier@, @location@, @mountOptions@, @mountPoint@, and @type@ of a
-- file system created using Amazon Elastic File System.
--
-- 'publicProjectAlias', 'project_publicProjectAlias' - Contains the project identifier used with the public build APIs.
newProject ::
  Project
newProject =
  Project'
    { vpcConfig = Prelude.Nothing,
      sourceVersion = Prelude.Nothing,
      secondaryArtifacts = Prelude.Nothing,
      cache = Prelude.Nothing,
      serviceRole = Prelude.Nothing,
      secondarySourceVersions = Prelude.Nothing,
      projectVisibility = Prelude.Nothing,
      webhook = Prelude.Nothing,
      concurrentBuildLimit = Prelude.Nothing,
      encryptionKey = Prelude.Nothing,
      environment = Prelude.Nothing,
      source = Prelude.Nothing,
      arn = Prelude.Nothing,
      logsConfig = Prelude.Nothing,
      artifacts = Prelude.Nothing,
      resourceAccessRole = Prelude.Nothing,
      name = Prelude.Nothing,
      queuedTimeoutInMinutes = Prelude.Nothing,
      secondarySources = Prelude.Nothing,
      timeoutInMinutes = Prelude.Nothing,
      tags = Prelude.Nothing,
      description = Prelude.Nothing,
      lastModified = Prelude.Nothing,
      buildBatchConfig = Prelude.Nothing,
      created = Prelude.Nothing,
      badge = Prelude.Nothing,
      fileSystemLocations = Prelude.Nothing,
      publicProjectAlias = Prelude.Nothing
    }

-- | Information about the VPC configuration that CodeBuild accesses.
project_vpcConfig :: Lens.Lens' Project (Prelude.Maybe VpcConfig)
project_vpcConfig = Lens.lens (\Project' {vpcConfig} -> vpcConfig) (\s@Project' {} a -> s {vpcConfig = a} :: Project)

-- | A version of the build input to be built for this project. If not
-- specified, the latest version is used. If specified, it must be one of:
--
-- -   For CodeCommit: the commit ID, branch, or Git tag to use.
--
-- -   For GitHub: the commit ID, pull request ID, branch name, or tag name
--     that corresponds to the version of the source code you want to
--     build. If a pull request ID is specified, it must use the format
--     @pr\/pull-request-ID@ (for example @pr\/25@). If a branch name is
--     specified, the branch\'s HEAD commit ID is used. If not specified,
--     the default branch\'s HEAD commit ID is used.
--
-- -   For Bitbucket: the commit ID, branch name, or tag name that
--     corresponds to the version of the source code you want to build. If
--     a branch name is specified, the branch\'s HEAD commit ID is used. If
--     not specified, the default branch\'s HEAD commit ID is used.
--
-- -   For Amazon S3: the version ID of the object that represents the
--     build input ZIP file to use.
--
-- If @sourceVersion@ is specified at the build level, then that version
-- takes precedence over this @sourceVersion@ (at the project level).
--
-- For more information, see
-- <https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html Source Version Sample with CodeBuild>
-- in the /CodeBuild User Guide/.
project_sourceVersion :: Lens.Lens' Project (Prelude.Maybe Prelude.Text)
project_sourceVersion = Lens.lens (\Project' {sourceVersion} -> sourceVersion) (\s@Project' {} a -> s {sourceVersion = a} :: Project)

-- | An array of @ProjectArtifacts@ objects.
project_secondaryArtifacts :: Lens.Lens' Project (Prelude.Maybe [ProjectArtifacts])
project_secondaryArtifacts = Lens.lens (\Project' {secondaryArtifacts} -> secondaryArtifacts) (\s@Project' {} a -> s {secondaryArtifacts = a} :: Project) Prelude.. Lens.mapping Lens._Coerce

-- | Information about the cache for the build project.
project_cache :: Lens.Lens' Project (Prelude.Maybe ProjectCache)
project_cache = Lens.lens (\Project' {cache} -> cache) (\s@Project' {} a -> s {cache = a} :: Project)

-- | The ARN of the IAM role that enables CodeBuild to interact with
-- dependent Amazon Web Services services on behalf of the Amazon Web
-- Services account.
project_serviceRole :: Lens.Lens' Project (Prelude.Maybe Prelude.Text)
project_serviceRole = Lens.lens (\Project' {serviceRole} -> serviceRole) (\s@Project' {} a -> s {serviceRole = a} :: Project)

-- | An array of @ProjectSourceVersion@ objects. If @secondarySourceVersions@
-- is specified at the build level, then they take over these
-- @secondarySourceVersions@ (at the project level).
project_secondarySourceVersions :: Lens.Lens' Project (Prelude.Maybe [ProjectSourceVersion])
project_secondarySourceVersions = Lens.lens (\Project' {secondarySourceVersions} -> secondarySourceVersions) (\s@Project' {} a -> s {secondarySourceVersions = a} :: Project) Prelude.. Lens.mapping Lens._Coerce

-- | Undocumented member.
project_projectVisibility :: Lens.Lens' Project (Prelude.Maybe ProjectVisibilityType)
project_projectVisibility = Lens.lens (\Project' {projectVisibility} -> projectVisibility) (\s@Project' {} a -> s {projectVisibility = a} :: Project)

-- | Information about a webhook that connects repository events to a build
-- project in CodeBuild.
project_webhook :: Lens.Lens' Project (Prelude.Maybe Webhook)
project_webhook = Lens.lens (\Project' {webhook} -> webhook) (\s@Project' {} a -> s {webhook = a} :: Project)

-- | The maximum number of concurrent builds that are allowed for this
-- project.
--
-- New builds are only started if the current number of builds is less than
-- or equal to this limit. If the current build count meets this limit, new
-- builds are throttled and are not run.
project_concurrentBuildLimit :: Lens.Lens' Project (Prelude.Maybe Prelude.Int)
project_concurrentBuildLimit = Lens.lens (\Project' {concurrentBuildLimit} -> concurrentBuildLimit) (\s@Project' {} a -> s {concurrentBuildLimit = a} :: Project)

-- | The Key Management Service customer master key (CMK) to be used for
-- encrypting the build output artifacts.
--
-- You can use a cross-account KMS key to encrypt the build output
-- artifacts if your service role has permission to that key.
--
-- You can specify either the Amazon Resource Name (ARN) of the CMK or, if
-- available, the CMK\'s alias (using the format @alias\/\<alias-name>@).
-- If you don\'t specify a value, CodeBuild uses the managed CMK for Amazon
-- Simple Storage Service (Amazon S3).
project_encryptionKey :: Lens.Lens' Project (Prelude.Maybe Prelude.Text)
project_encryptionKey = Lens.lens (\Project' {encryptionKey} -> encryptionKey) (\s@Project' {} a -> s {encryptionKey = a} :: Project)

-- | Information about the build environment for this build project.
project_environment :: Lens.Lens' Project (Prelude.Maybe ProjectEnvironment)
project_environment = Lens.lens (\Project' {environment} -> environment) (\s@Project' {} a -> s {environment = a} :: Project)

-- | Information about the build input source code for this build project.
project_source :: Lens.Lens' Project (Prelude.Maybe ProjectSource)
project_source = Lens.lens (\Project' {source} -> source) (\s@Project' {} a -> s {source = a} :: Project)

-- | The Amazon Resource Name (ARN) of the build project.
project_arn :: Lens.Lens' Project (Prelude.Maybe Prelude.Text)
project_arn = Lens.lens (\Project' {arn} -> arn) (\s@Project' {} a -> s {arn = a} :: Project)

-- | Information about logs for the build project. A project can create logs
-- in CloudWatch Logs, an S3 bucket, or both.
project_logsConfig :: Lens.Lens' Project (Prelude.Maybe LogsConfig)
project_logsConfig = Lens.lens (\Project' {logsConfig} -> logsConfig) (\s@Project' {} a -> s {logsConfig = a} :: Project)

-- | Information about the build output artifacts for the build project.
project_artifacts :: Lens.Lens' Project (Prelude.Maybe ProjectArtifacts)
project_artifacts = Lens.lens (\Project' {artifacts} -> artifacts) (\s@Project' {} a -> s {artifacts = a} :: Project)

-- | The ARN of the IAM role that enables CodeBuild to access the CloudWatch
-- Logs and Amazon S3 artifacts for the project\'s builds.
project_resourceAccessRole :: Lens.Lens' Project (Prelude.Maybe Prelude.Text)
project_resourceAccessRole = Lens.lens (\Project' {resourceAccessRole} -> resourceAccessRole) (\s@Project' {} a -> s {resourceAccessRole = a} :: Project)

-- | The name of the build project.
project_name :: Lens.Lens' Project (Prelude.Maybe Prelude.Text)
project_name = Lens.lens (\Project' {name} -> name) (\s@Project' {} a -> s {name = a} :: Project)

-- | The number of minutes a build is allowed to be queued before it times
-- out.
project_queuedTimeoutInMinutes :: Lens.Lens' Project (Prelude.Maybe Prelude.Natural)
project_queuedTimeoutInMinutes = Lens.lens (\Project' {queuedTimeoutInMinutes} -> queuedTimeoutInMinutes) (\s@Project' {} a -> s {queuedTimeoutInMinutes = a} :: Project)

-- | An array of @ProjectSource@ objects.
project_secondarySources :: Lens.Lens' Project (Prelude.Maybe [ProjectSource])
project_secondarySources = Lens.lens (\Project' {secondarySources} -> secondarySources) (\s@Project' {} a -> s {secondarySources = a} :: Project) Prelude.. Lens.mapping Lens._Coerce

-- | How long, in minutes, from 5 to 480 (8 hours), for CodeBuild to wait
-- before timing out any related build that did not get marked as
-- completed. The default is 60 minutes.
project_timeoutInMinutes :: Lens.Lens' Project (Prelude.Maybe Prelude.Natural)
project_timeoutInMinutes = Lens.lens (\Project' {timeoutInMinutes} -> timeoutInMinutes) (\s@Project' {} a -> s {timeoutInMinutes = a} :: Project)

-- | A list of tag key and value pairs associated with this build project.
--
-- These tags are available for use by Amazon Web Services services that
-- support CodeBuild build project tags.
project_tags :: Lens.Lens' Project (Prelude.Maybe [Tag])
project_tags = Lens.lens (\Project' {tags} -> tags) (\s@Project' {} a -> s {tags = a} :: Project) Prelude.. Lens.mapping Lens._Coerce

-- | A description that makes the build project easy to identify.
project_description :: Lens.Lens' Project (Prelude.Maybe Prelude.Text)
project_description = Lens.lens (\Project' {description} -> description) (\s@Project' {} a -> s {description = a} :: Project)

-- | When the build project\'s settings were last modified, expressed in Unix
-- time format.
project_lastModified :: Lens.Lens' Project (Prelude.Maybe Prelude.UTCTime)
project_lastModified = Lens.lens (\Project' {lastModified} -> lastModified) (\s@Project' {} a -> s {lastModified = a} :: Project) Prelude.. Lens.mapping Core._Time

-- | A ProjectBuildBatchConfig object that defines the batch build options
-- for the project.
project_buildBatchConfig :: Lens.Lens' Project (Prelude.Maybe ProjectBuildBatchConfig)
project_buildBatchConfig = Lens.lens (\Project' {buildBatchConfig} -> buildBatchConfig) (\s@Project' {} a -> s {buildBatchConfig = a} :: Project)

-- | When the build project was created, expressed in Unix time format.
project_created :: Lens.Lens' Project (Prelude.Maybe Prelude.UTCTime)
project_created = Lens.lens (\Project' {created} -> created) (\s@Project' {} a -> s {created = a} :: Project) Prelude.. Lens.mapping Core._Time

-- | Information about the build badge for the build project.
project_badge :: Lens.Lens' Project (Prelude.Maybe ProjectBadge)
project_badge = Lens.lens (\Project' {badge} -> badge) (\s@Project' {} a -> s {badge = a} :: Project)

-- | An array of @ProjectFileSystemLocation@ objects for a CodeBuild build
-- project. A @ProjectFileSystemLocation@ object specifies the
-- @identifier@, @location@, @mountOptions@, @mountPoint@, and @type@ of a
-- file system created using Amazon Elastic File System.
project_fileSystemLocations :: Lens.Lens' Project (Prelude.Maybe [ProjectFileSystemLocation])
project_fileSystemLocations = Lens.lens (\Project' {fileSystemLocations} -> fileSystemLocations) (\s@Project' {} a -> s {fileSystemLocations = a} :: Project) Prelude.. Lens.mapping Lens._Coerce

-- | Contains the project identifier used with the public build APIs.
project_publicProjectAlias :: Lens.Lens' Project (Prelude.Maybe Prelude.Text)
project_publicProjectAlias = Lens.lens (\Project' {publicProjectAlias} -> publicProjectAlias) (\s@Project' {} a -> s {publicProjectAlias = a} :: Project)

instance Core.FromJSON Project where
  parseJSON =
    Core.withObject
      "Project"
      ( \x ->
          Project'
            Prelude.<$> (x Core..:? "vpcConfig")
            Prelude.<*> (x Core..:? "sourceVersion")
            Prelude.<*> ( x Core..:? "secondaryArtifacts"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "cache")
            Prelude.<*> (x Core..:? "serviceRole")
            Prelude.<*> ( x Core..:? "secondarySourceVersions"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "projectVisibility")
            Prelude.<*> (x Core..:? "webhook")
            Prelude.<*> (x Core..:? "concurrentBuildLimit")
            Prelude.<*> (x Core..:? "encryptionKey")
            Prelude.<*> (x Core..:? "environment")
            Prelude.<*> (x Core..:? "source")
            Prelude.<*> (x Core..:? "arn")
            Prelude.<*> (x Core..:? "logsConfig")
            Prelude.<*> (x Core..:? "artifacts")
            Prelude.<*> (x Core..:? "resourceAccessRole")
            Prelude.<*> (x Core..:? "name")
            Prelude.<*> (x Core..:? "queuedTimeoutInMinutes")
            Prelude.<*> ( x Core..:? "secondarySources"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "timeoutInMinutes")
            Prelude.<*> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "description")
            Prelude.<*> (x Core..:? "lastModified")
            Prelude.<*> (x Core..:? "buildBatchConfig")
            Prelude.<*> (x Core..:? "created")
            Prelude.<*> (x Core..:? "badge")
            Prelude.<*> ( x Core..:? "fileSystemLocations"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "publicProjectAlias")
      )

instance Prelude.Hashable Project

instance Prelude.NFData Project
