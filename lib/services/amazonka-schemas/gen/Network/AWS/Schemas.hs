{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Amazonka.Schemas
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2019-12-02@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- Amazon EventBridge Schema Registry
module Amazonka.Schemas
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** PreconditionFailedException
    _PreconditionFailedException,

    -- ** ConflictException
    _ConflictException,

    -- ** ForbiddenException
    _ForbiddenException,

    -- ** GoneException
    _GoneException,

    -- ** NotFoundException
    _NotFoundException,

    -- ** TooManyRequestsException
    _TooManyRequestsException,

    -- ** InternalServerErrorException
    _InternalServerErrorException,

    -- ** ServiceUnavailableException
    _ServiceUnavailableException,

    -- ** UnauthorizedException
    _UnauthorizedException,

    -- ** BadRequestException
    _BadRequestException,

    -- * Waiters
    -- $waiters

    -- ** CodeBindingExists
    newCodeBindingExists,

    -- * Operations
    -- $operations

    -- ** UpdateRegistry
    UpdateRegistry (UpdateRegistry'),
    newUpdateRegistry,
    UpdateRegistryResponse (UpdateRegistryResponse'),
    newUpdateRegistryResponse,

    -- ** DeleteRegistry
    DeleteRegistry (DeleteRegistry'),
    newDeleteRegistry,
    DeleteRegistryResponse (DeleteRegistryResponse'),
    newDeleteRegistryResponse,

    -- ** SearchSchemas (Paginated)
    SearchSchemas (SearchSchemas'),
    newSearchSchemas,
    SearchSchemasResponse (SearchSchemasResponse'),
    newSearchSchemasResponse,

    -- ** StopDiscoverer
    StopDiscoverer (StopDiscoverer'),
    newStopDiscoverer,
    StopDiscovererResponse (StopDiscovererResponse'),
    newStopDiscovererResponse,

    -- ** DeleteSchemaVersion
    DeleteSchemaVersion (DeleteSchemaVersion'),
    newDeleteSchemaVersion,
    DeleteSchemaVersionResponse (DeleteSchemaVersionResponse'),
    newDeleteSchemaVersionResponse,

    -- ** ListTagsForResource
    ListTagsForResource (ListTagsForResource'),
    newListTagsForResource,
    ListTagsForResourceResponse (ListTagsForResourceResponse'),
    newListTagsForResourceResponse,

    -- ** ListSchemaVersions (Paginated)
    ListSchemaVersions (ListSchemaVersions'),
    newListSchemaVersions,
    ListSchemaVersionsResponse (ListSchemaVersionsResponse'),
    newListSchemaVersionsResponse,

    -- ** ExportSchema
    ExportSchema (ExportSchema'),
    newExportSchema,
    ExportSchemaResponse (ExportSchemaResponse'),
    newExportSchemaResponse,

    -- ** GetDiscoveredSchema
    GetDiscoveredSchema (GetDiscoveredSchema'),
    newGetDiscoveredSchema,
    GetDiscoveredSchemaResponse (GetDiscoveredSchemaResponse'),
    newGetDiscoveredSchemaResponse,

    -- ** DeleteDiscoverer
    DeleteDiscoverer (DeleteDiscoverer'),
    newDeleteDiscoverer,
    DeleteDiscovererResponse (DeleteDiscovererResponse'),
    newDeleteDiscovererResponse,

    -- ** UpdateDiscoverer
    UpdateDiscoverer (UpdateDiscoverer'),
    newUpdateDiscoverer,
    UpdateDiscovererResponse (UpdateDiscovererResponse'),
    newUpdateDiscovererResponse,

    -- ** ListDiscoverers (Paginated)
    ListDiscoverers (ListDiscoverers'),
    newListDiscoverers,
    ListDiscoverersResponse (ListDiscoverersResponse'),
    newListDiscoverersResponse,

    -- ** ListSchemas (Paginated)
    ListSchemas (ListSchemas'),
    newListSchemas,
    ListSchemasResponse (ListSchemasResponse'),
    newListSchemasResponse,

    -- ** CreateDiscoverer
    CreateDiscoverer (CreateDiscoverer'),
    newCreateDiscoverer,
    CreateDiscovererResponse (CreateDiscovererResponse'),
    newCreateDiscovererResponse,

    -- ** DescribeRegistry
    DescribeRegistry (DescribeRegistry'),
    newDescribeRegistry,
    DescribeRegistryResponse (DescribeRegistryResponse'),
    newDescribeRegistryResponse,

    -- ** CreateRegistry
    CreateRegistry (CreateRegistry'),
    newCreateRegistry,
    CreateRegistryResponse (CreateRegistryResponse'),
    newCreateRegistryResponse,

    -- ** ListRegistries (Paginated)
    ListRegistries (ListRegistries'),
    newListRegistries,
    ListRegistriesResponse (ListRegistriesResponse'),
    newListRegistriesResponse,

    -- ** DescribeDiscoverer
    DescribeDiscoverer (DescribeDiscoverer'),
    newDescribeDiscoverer,
    DescribeDiscovererResponse (DescribeDiscovererResponse'),
    newDescribeDiscovererResponse,

    -- ** GetResourcePolicy
    GetResourcePolicy (GetResourcePolicy'),
    newGetResourcePolicy,
    GetResourcePolicyResponse (GetResourcePolicyResponse'),
    newGetResourcePolicyResponse,

    -- ** StartDiscoverer
    StartDiscoverer (StartDiscoverer'),
    newStartDiscoverer,
    StartDiscovererResponse (StartDiscovererResponse'),
    newStartDiscovererResponse,

    -- ** DescribeSchema
    DescribeSchema (DescribeSchema'),
    newDescribeSchema,
    DescribeSchemaResponse (DescribeSchemaResponse'),
    newDescribeSchemaResponse,

    -- ** GetCodeBindingSource
    GetCodeBindingSource (GetCodeBindingSource'),
    newGetCodeBindingSource,
    GetCodeBindingSourceResponse (GetCodeBindingSourceResponse'),
    newGetCodeBindingSourceResponse,

    -- ** PutCodeBinding
    PutCodeBinding (PutCodeBinding'),
    newPutCodeBinding,
    PutCodeBindingResponse (PutCodeBindingResponse'),
    newPutCodeBindingResponse,

    -- ** CreateSchema
    CreateSchema (CreateSchema'),
    newCreateSchema,
    CreateSchemaResponse (CreateSchemaResponse'),
    newCreateSchemaResponse,

    -- ** TagResource
    TagResource (TagResource'),
    newTagResource,
    TagResourceResponse (TagResourceResponse'),
    newTagResourceResponse,

    -- ** UpdateSchema
    UpdateSchema (UpdateSchema'),
    newUpdateSchema,
    UpdateSchemaResponse (UpdateSchemaResponse'),
    newUpdateSchemaResponse,

    -- ** DeleteSchema
    DeleteSchema (DeleteSchema'),
    newDeleteSchema,
    DeleteSchemaResponse (DeleteSchemaResponse'),
    newDeleteSchemaResponse,

    -- ** PutResourcePolicy
    PutResourcePolicy (PutResourcePolicy'),
    newPutResourcePolicy,
    PutResourcePolicyResponse (PutResourcePolicyResponse'),
    newPutResourcePolicyResponse,

    -- ** DeleteResourcePolicy
    DeleteResourcePolicy (DeleteResourcePolicy'),
    newDeleteResourcePolicy,
    DeleteResourcePolicyResponse (DeleteResourcePolicyResponse'),
    newDeleteResourcePolicyResponse,

    -- ** UntagResource
    UntagResource (UntagResource'),
    newUntagResource,
    UntagResourceResponse (UntagResourceResponse'),
    newUntagResourceResponse,

    -- ** DescribeCodeBinding
    DescribeCodeBinding (DescribeCodeBinding'),
    newDescribeCodeBinding,
    DescribeCodeBindingResponse (DescribeCodeBindingResponse'),
    newDescribeCodeBindingResponse,

    -- * Types

    -- ** CodeGenerationStatus
    CodeGenerationStatus (..),

    -- ** DiscovererState
    DiscovererState (..),

    -- ** Type
    Type (..),

    -- ** DiscovererSummary
    DiscovererSummary (DiscovererSummary'),
    newDiscovererSummary,

    -- ** RegistrySummary
    RegistrySummary (RegistrySummary'),
    newRegistrySummary,

    -- ** SchemaSummary
    SchemaSummary (SchemaSummary'),
    newSchemaSummary,

    -- ** SchemaVersionSummary
    SchemaVersionSummary (SchemaVersionSummary'),
    newSchemaVersionSummary,

    -- ** SearchSchemaSummary
    SearchSchemaSummary (SearchSchemaSummary'),
    newSearchSchemaSummary,

    -- ** SearchSchemaVersionSummary
    SearchSchemaVersionSummary (SearchSchemaVersionSummary'),
    newSearchSchemaVersionSummary,
  )
where

import Amazonka.Schemas.CreateDiscoverer
import Amazonka.Schemas.CreateRegistry
import Amazonka.Schemas.CreateSchema
import Amazonka.Schemas.DeleteDiscoverer
import Amazonka.Schemas.DeleteRegistry
import Amazonka.Schemas.DeleteResourcePolicy
import Amazonka.Schemas.DeleteSchema
import Amazonka.Schemas.DeleteSchemaVersion
import Amazonka.Schemas.DescribeCodeBinding
import Amazonka.Schemas.DescribeDiscoverer
import Amazonka.Schemas.DescribeRegistry
import Amazonka.Schemas.DescribeSchema
import Amazonka.Schemas.ExportSchema
import Amazonka.Schemas.GetCodeBindingSource
import Amazonka.Schemas.GetDiscoveredSchema
import Amazonka.Schemas.GetResourcePolicy
import Amazonka.Schemas.Lens
import Amazonka.Schemas.ListDiscoverers
import Amazonka.Schemas.ListRegistries
import Amazonka.Schemas.ListSchemaVersions
import Amazonka.Schemas.ListSchemas
import Amazonka.Schemas.ListTagsForResource
import Amazonka.Schemas.PutCodeBinding
import Amazonka.Schemas.PutResourcePolicy
import Amazonka.Schemas.SearchSchemas
import Amazonka.Schemas.StartDiscoverer
import Amazonka.Schemas.StopDiscoverer
import Amazonka.Schemas.TagResource
import Amazonka.Schemas.Types
import Amazonka.Schemas.UntagResource
import Amazonka.Schemas.UpdateDiscoverer
import Amazonka.Schemas.UpdateRegistry
import Amazonka.Schemas.UpdateSchema
import Amazonka.Schemas.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'Schemas'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.
