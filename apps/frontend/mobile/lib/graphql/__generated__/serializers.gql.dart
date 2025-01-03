// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:mobile/graphql/__generated__/applet.data.gql.dart'
    show
        GAppletWithNodesData,
        GAppletWithNodesData_triggerNodes,
        GAppletWithNodesData_triggerNodes_next,
        GAppletWithNodesData_triggerNodes_previous,
        GAppletWithNodesData_triggerNodes_provider,
        GBaseAppletData,
        GBaseAppletNodeData,
        GBaseAppletProviderData,
        GExtendedAppletNodeData,
        GExtendedAppletNodeData_next,
        GExtendedAppletNodeData_previous,
        GExtendedAppletNodeData_provider,
        GProviderManifestActionData,
        GcreateAppletData,
        GcreateAppletData_createApplet,
        GgetAllAppletsData,
        GgetAllAppletsData_getAllApplets,
        GgetAppletByIdData,
        GgetAppletByIdData_getAppletById,
        GgetAppletByIdData_getAppletById_triggerNodes,
        GgetAppletByIdData_getAppletById_triggerNodes_next,
        GgetAppletByIdData_getAppletById_triggerNodes_previous,
        GgetAppletByIdData_getAppletById_triggerNodes_provider,
        GgetAppletNodeByIdData,
        GgetAppletNodeByIdData_getAppletNodeById,
        GgetAppletNodeByIdData_getAppletNodeById_next,
        GgetAppletNodeByIdData_getAppletNodeById_previous,
        GgetAppletNodeByIdData_getAppletNodeById_provider;
import 'package:mobile/graphql/__generated__/applet.req.gql.dart'
    show
        GAppletWithNodesReq,
        GBaseAppletNodeReq,
        GBaseAppletProviderReq,
        GBaseAppletReq,
        GExtendedAppletNodeReq,
        GProviderManifestActionReq,
        GcreateAppletReq,
        GgetAllAppletsReq,
        GgetAppletByIdReq,
        GgetAppletNodeByIdReq;
import 'package:mobile/graphql/__generated__/applet.var.gql.dart'
    show
        GAppletWithNodesVars,
        GBaseAppletNodeVars,
        GBaseAppletProviderVars,
        GBaseAppletVars,
        GExtendedAppletNodeVars,
        GProviderManifestActionVars,
        GcreateAppletVars,
        GgetAllAppletsVars,
        GgetAppletByIdVars,
        GgetAppletNodeByIdVars;
import 'package:mobile/graphql/__generated__/auth.data.gql.dart'
    show
        GTokenFieldsData,
        GloginData,
        GloginData_login,
        GrefreshTokenData,
        GrefreshTokenData_refreshToken;
import 'package:mobile/graphql/__generated__/auth.req.gql.dart'
    show GTokenFieldsReq, GloginReq, GrefreshTokenReq;
import 'package:mobile/graphql/__generated__/auth.var.gql.dart'
    show GTokenFieldsVars, GloginVars, GrefreshTokenVars;
import 'package:mobile/graphql/__generated__/provider.data.gql.dart'
    show
        GBaseProviderData,
        GProviderManifestTriggerData,
        GProviderWithManifestData,
        GProviderWithManifestData_manifest,
        GProviderWithManifestData_manifest_actions,
        GProviderWithManifestData_manifest_triggers,
        GgetAllProvidersData,
        GgetAllProvidersData_getAllProviders,
        GgetProviderByIdData,
        GgetProviderByIdData_getProviderById,
        GgetProviderByIdData_getProviderById_manifest,
        GgetProviderByIdData_getProviderById_manifest_actions,
        GgetProviderByIdData_getProviderById_manifest_triggers;
import 'package:mobile/graphql/__generated__/provider.req.gql.dart'
    show
        GBaseProviderReq,
        GProviderManifestTriggerReq,
        GProviderWithManifestReq,
        GgetAllProvidersReq,
        GgetProviderByIdReq;
import 'package:mobile/graphql/__generated__/provider.var.gql.dart'
    show
        GBaseProviderVars,
        GProviderManifestTriggerVars,
        GProviderWithManifestVars,
        GgetAllProvidersVars,
        GgetProviderByIdVars;
import 'package:mobile/graphql/__generated__/schema.schema.gql.dart'
    show
        GAppletCreateInput,
        GAppletNodeCreateInput,
        GAppletNodeType,
        GAuthPasswordInput,
        GAuthRefreshTokenInput,
        GDateTime,
        GJSON,
        GProviderCreateInput,
        GProviderVisibility,
        GUserCreateInput,
        GUserRegisterInput,
        GUserUpdateInput;
import 'package:mobile/graphql/__generated__/user.data.gql.dart'
    show
        GUserData,
        GgetMeData,
        GgetMeData_getMe,
        GregisterData,
        GregisterData_register,
        GupdateMeData,
        GupdateMeData_updateMe;
import 'package:mobile/graphql/__generated__/user.req.gql.dart'
    show GUserReq, GgetMeReq, GregisterReq, GupdateMeReq;
import 'package:mobile/graphql/__generated__/user.var.gql.dart'
    show GUserVars, GgetMeVars, GregisterVars, GupdateMeVars;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GAppletCreateInput,
  GAppletNodeCreateInput,
  GAppletNodeType,
  GAppletWithNodesData,
  GAppletWithNodesData_triggerNodes,
  GAppletWithNodesData_triggerNodes_next,
  GAppletWithNodesData_triggerNodes_previous,
  GAppletWithNodesData_triggerNodes_provider,
  GAppletWithNodesReq,
  GAppletWithNodesVars,
  GAuthPasswordInput,
  GAuthRefreshTokenInput,
  GBaseAppletData,
  GBaseAppletNodeData,
  GBaseAppletNodeReq,
  GBaseAppletNodeVars,
  GBaseAppletProviderData,
  GBaseAppletProviderReq,
  GBaseAppletProviderVars,
  GBaseAppletReq,
  GBaseAppletVars,
  GBaseProviderData,
  GBaseProviderReq,
  GBaseProviderVars,
  GDateTime,
  GExtendedAppletNodeData,
  GExtendedAppletNodeData_next,
  GExtendedAppletNodeData_previous,
  GExtendedAppletNodeData_provider,
  GExtendedAppletNodeReq,
  GExtendedAppletNodeVars,
  GJSON,
  GProviderCreateInput,
  GProviderManifestActionData,
  GProviderManifestActionReq,
  GProviderManifestActionVars,
  GProviderManifestTriggerData,
  GProviderManifestTriggerReq,
  GProviderManifestTriggerVars,
  GProviderVisibility,
  GProviderWithManifestData,
  GProviderWithManifestData_manifest,
  GProviderWithManifestData_manifest_actions,
  GProviderWithManifestData_manifest_triggers,
  GProviderWithManifestReq,
  GProviderWithManifestVars,
  GTokenFieldsData,
  GTokenFieldsReq,
  GTokenFieldsVars,
  GUserCreateInput,
  GUserData,
  GUserRegisterInput,
  GUserReq,
  GUserUpdateInput,
  GUserVars,
  GcreateAppletData,
  GcreateAppletData_createApplet,
  GcreateAppletReq,
  GcreateAppletVars,
  GgetAllAppletsData,
  GgetAllAppletsData_getAllApplets,
  GgetAllAppletsReq,
  GgetAllAppletsVars,
  GgetAllProvidersData,
  GgetAllProvidersData_getAllProviders,
  GgetAllProvidersReq,
  GgetAllProvidersVars,
  GgetAppletByIdData,
  GgetAppletByIdData_getAppletById,
  GgetAppletByIdData_getAppletById_triggerNodes,
  GgetAppletByIdData_getAppletById_triggerNodes_next,
  GgetAppletByIdData_getAppletById_triggerNodes_previous,
  GgetAppletByIdData_getAppletById_triggerNodes_provider,
  GgetAppletByIdReq,
  GgetAppletByIdVars,
  GgetAppletNodeByIdData,
  GgetAppletNodeByIdData_getAppletNodeById,
  GgetAppletNodeByIdData_getAppletNodeById_next,
  GgetAppletNodeByIdData_getAppletNodeById_previous,
  GgetAppletNodeByIdData_getAppletNodeById_provider,
  GgetAppletNodeByIdReq,
  GgetAppletNodeByIdVars,
  GgetMeData,
  GgetMeData_getMe,
  GgetMeReq,
  GgetMeVars,
  GgetProviderByIdData,
  GgetProviderByIdData_getProviderById,
  GgetProviderByIdData_getProviderById_manifest,
  GgetProviderByIdData_getProviderById_manifest_actions,
  GgetProviderByIdData_getProviderById_manifest_triggers,
  GgetProviderByIdReq,
  GgetProviderByIdVars,
  GloginData,
  GloginData_login,
  GloginReq,
  GloginVars,
  GrefreshTokenData,
  GrefreshTokenData_refreshToken,
  GrefreshTokenReq,
  GrefreshTokenVars,
  GregisterData,
  GregisterData_register,
  GregisterReq,
  GregisterVars,
  GupdateMeData,
  GupdateMeData_updateMe,
  GupdateMeReq,
  GupdateMeVars,
])
final Serializers serializers = _serializersBuilder.build();
