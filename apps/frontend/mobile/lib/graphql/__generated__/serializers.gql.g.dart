// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(FetchPolicy.serializer)
      ..add(GAppletCreateInput.serializer)
      ..add(GAppletNodeCreateInput.serializer)
      ..add(GAppletNodeType.serializer)
      ..add(GAppletNodeUpdateInput.serializer)
      ..add(GAppletUpdateInput.serializer)
      ..add(GAppletWithNodesData.serializer)
      ..add(GAppletWithNodesData_triggerNodes.serializer)
      ..add(GAppletWithNodesData_triggerNodes_next.serializer)
      ..add(GAppletWithNodesData_triggerNodes_previous.serializer)
      ..add(GAppletWithNodesData_triggerNodes_provider.serializer)
      ..add(GAppletWithNodesReq.serializer)
      ..add(GAppletWithNodesVars.serializer)
      ..add(GAuthPasswordInput.serializer)
      ..add(GAuthRefreshTokenInput.serializer)
      ..add(GBaseAppletData.serializer)
      ..add(GBaseAppletNodeData.serializer)
      ..add(GBaseAppletNodeReq.serializer)
      ..add(GBaseAppletNodeVars.serializer)
      ..add(GBaseAppletProviderData.serializer)
      ..add(GBaseAppletProviderReq.serializer)
      ..add(GBaseAppletProviderVars.serializer)
      ..add(GBaseAppletReq.serializer)
      ..add(GBaseAppletVars.serializer)
      ..add(GBaseProviderData.serializer)
      ..add(GBaseProviderReq.serializer)
      ..add(GBaseProviderVars.serializer)
      ..add(GDateTime.serializer)
      ..add(GExtendedAppletNodeData.serializer)
      ..add(GExtendedAppletNodeData_next.serializer)
      ..add(GExtendedAppletNodeData_previous.serializer)
      ..add(GExtendedAppletNodeData_provider.serializer)
      ..add(GExtendedAppletNodeReq.serializer)
      ..add(GExtendedAppletNodeVars.serializer)
      ..add(GJSON.serializer)
      ..add(GProviderCreateInput.serializer)
      ..add(GProviderManifestActionData.serializer)
      ..add(GProviderManifestActionReq.serializer)
      ..add(GProviderManifestActionVars.serializer)
      ..add(GProviderManifestTriggerData.serializer)
      ..add(GProviderManifestTriggerReq.serializer)
      ..add(GProviderManifestTriggerVars.serializer)
      ..add(GProviderVisibility.serializer)
      ..add(GProviderWithManifestData.serializer)
      ..add(GProviderWithManifestData_manifest.serializer)
      ..add(GProviderWithManifestData_manifest_actions.serializer)
      ..add(GProviderWithManifestData_manifest_triggers.serializer)
      ..add(GProviderWithManifestReq.serializer)
      ..add(GProviderWithManifestVars.serializer)
      ..add(GTokenFieldsData.serializer)
      ..add(GTokenFieldsReq.serializer)
      ..add(GTokenFieldsVars.serializer)
      ..add(GUserCreateInput.serializer)
      ..add(GUserData.serializer)
      ..add(GUserRegisterInput.serializer)
      ..add(GUserReq.serializer)
      ..add(GUserUpdateInput.serializer)
      ..add(GUserVars.serializer)
      ..add(GcreateAppletData.serializer)
      ..add(GcreateAppletData_createApplet.serializer)
      ..add(GcreateAppletReq.serializer)
      ..add(GcreateAppletVars.serializer)
      ..add(GdeleteAppletData.serializer)
      ..add(GdeleteAppletData_deleteApplet.serializer)
      ..add(GdeleteAppletReq.serializer)
      ..add(GdeleteAppletVars.serializer)
      ..add(GgetAllAppletsData.serializer)
      ..add(GgetAllAppletsData_getAllApplets.serializer)
      ..add(GgetAllAppletsReq.serializer)
      ..add(GgetAllAppletsVars.serializer)
      ..add(GgetAllProvidersData.serializer)
      ..add(GgetAllProvidersData_getAllProviders.serializer)
      ..add(GgetAllProvidersReq.serializer)
      ..add(GgetAllProvidersVars.serializer)
      ..add(GgetAppletByIdData.serializer)
      ..add(GgetAppletByIdData_getAppletById.serializer)
      ..add(GgetAppletByIdData_getAppletById_triggerNodes.serializer)
      ..add(GgetAppletByIdData_getAppletById_triggerNodes_next.serializer)
      ..add(GgetAppletByIdData_getAppletById_triggerNodes_previous.serializer)
      ..add(GgetAppletByIdData_getAppletById_triggerNodes_provider.serializer)
      ..add(GgetAppletByIdReq.serializer)
      ..add(GgetAppletByIdVars.serializer)
      ..add(GgetAppletNodeByIdData.serializer)
      ..add(GgetAppletNodeByIdData_getAppletNodeById.serializer)
      ..add(GgetAppletNodeByIdData_getAppletNodeById_next.serializer)
      ..add(GgetAppletNodeByIdData_getAppletNodeById_previous.serializer)
      ..add(GgetAppletNodeByIdData_getAppletNodeById_provider.serializer)
      ..add(GgetAppletNodeByIdReq.serializer)
      ..add(GgetAppletNodeByIdVars.serializer)
      ..add(GgetMeData.serializer)
      ..add(GgetMeData_getMe.serializer)
      ..add(GgetMeReq.serializer)
      ..add(GgetMeVars.serializer)
      ..add(GgetProviderByIdData.serializer)
      ..add(GgetProviderByIdData_getProviderById.serializer)
      ..add(GgetProviderByIdData_getProviderById_manifest.serializer)
      ..add(GgetProviderByIdData_getProviderById_manifest_actions.serializer)
      ..add(GgetProviderByIdData_getProviderById_manifest_triggers.serializer)
      ..add(GgetProviderByIdReq.serializer)
      ..add(GgetProviderByIdVars.serializer)
      ..add(GgetProviderOAuthStateData.serializer)
      ..add(GgetProviderOAuthStateData_getProviderOAuthState.serializer)
      ..add(GgetProviderOAuthStateReq.serializer)
      ..add(GgetProviderOAuthStateVars.serializer)
      ..add(GloginData.serializer)
      ..add(GloginData_login.serializer)
      ..add(GloginReq.serializer)
      ..add(GloginVars.serializer)
      ..add(GrefreshTokenData.serializer)
      ..add(GrefreshTokenData_refreshToken.serializer)
      ..add(GrefreshTokenReq.serializer)
      ..add(GrefreshTokenVars.serializer)
      ..add(GregisterData.serializer)
      ..add(GregisterData_register.serializer)
      ..add(GregisterReq.serializer)
      ..add(GregisterVars.serializer)
      ..add(GupdateAppletData.serializer)
      ..add(GupdateAppletData_updateApplet.serializer)
      ..add(GupdateAppletReq.serializer)
      ..add(GupdateAppletVars.serializer)
      ..add(GupdateMeData.serializer)
      ..add(GupdateMeData_updateMe.serializer)
      ..add(GupdateMeReq.serializer)
      ..add(GupdateMeVars.serializer)
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GAppletNodeCreateInput)]),
          () => new ListBuilder<GAppletNodeCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GAppletNodeCreateInput)]),
          () => new ListBuilder<GAppletNodeCreateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GAppletNodeUpdateInput)]),
          () => new ListBuilder<GAppletNodeUpdateInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GAppletNodeUpdateInput)]),
          () => new ListBuilder<GAppletNodeUpdateInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GAppletWithNodesData_triggerNodes)]),
          () => new ListBuilder<GAppletWithNodesData_triggerNodes>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GAppletWithNodesData_triggerNodes_previous)
          ]),
          () => new ListBuilder<GAppletWithNodesData_triggerNodes_previous>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GAppletWithNodesData_triggerNodes_next)]),
          () => new ListBuilder<GAppletWithNodesData_triggerNodes_next>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GExtendedAppletNodeData_previous)]),
          () => new ListBuilder<GExtendedAppletNodeData_previous>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GExtendedAppletNodeData_next)]),
          () => new ListBuilder<GExtendedAppletNodeData_next>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GProviderWithManifestData_manifest_actions)
          ]),
          () => new ListBuilder<GProviderWithManifestData_manifest_actions>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GProviderWithManifestData_manifest_triggers)
          ]),
          () => new ListBuilder<GProviderWithManifestData_manifest_triggers>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GgetAllAppletsData_getAllApplets)]),
          () => new ListBuilder<GgetAllAppletsData_getAllApplets>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GgetAllProvidersData_getAllProviders)]),
          () => new ListBuilder<GgetAllProvidersData_getAllProviders>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GgetAppletByIdData_getAppletById_triggerNodes)
          ]),
          () =>
              new ListBuilder<GgetAppletByIdData_getAppletById_triggerNodes>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GgetAppletByIdData_getAppletById_triggerNodes_previous)
          ]),
          () => new ListBuilder<
              GgetAppletByIdData_getAppletById_triggerNodes_previous>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GgetAppletByIdData_getAppletById_triggerNodes_next)
          ]),
          () => new ListBuilder<
              GgetAppletByIdData_getAppletById_triggerNodes_next>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GgetAppletNodeByIdData_getAppletNodeById_previous)
          ]),
          () => new ListBuilder<
              GgetAppletNodeByIdData_getAppletNodeById_previous>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GgetAppletNodeByIdData_getAppletNodeById_next)
          ]),
          () =>
              new ListBuilder<GgetAppletNodeByIdData_getAppletNodeById_next>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GgetProviderByIdData_getProviderById_manifest_actions)
          ]),
          () => new ListBuilder<
              GgetProviderByIdData_getProviderById_manifest_actions>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GgetProviderByIdData_getProviderById_manifest_triggers)
          ]),
          () => new ListBuilder<
              GgetProviderByIdData_getProviderById_manifest_triggers>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
