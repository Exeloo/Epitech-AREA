// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
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
import 'package:mobile/graphql/__generated__/schema.schema.gql.dart'
    show
        GAppletSubscribeInput,
        GAuthPasswordInput,
        GAuthRefreshTokenInput,
        GDateTime,
        GJSON,
        GProviderCreateInput,
        GProviderVisibility,
        GUserCreateInput,
        GUserRegisterInput;
import 'package:mobile/graphql/__generated__/user.data.gql.dart'
    show
        GUserData,
        GgetMeData,
        GgetMeData_getMe,
        GregisterData,
        GregisterData_register;
import 'package:mobile/graphql/__generated__/user.req.gql.dart'
    show GUserReq, GgetMeReq, GregisterReq;
import 'package:mobile/graphql/__generated__/user.var.gql.dart'
    show GUserVars, GgetMeVars, GregisterVars;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GAppletSubscribeInput,
  GAuthPasswordInput,
  GAuthRefreshTokenInput,
  GDateTime,
  GJSON,
  GProviderCreateInput,
  GProviderVisibility,
  GTokenFieldsData,
  GTokenFieldsReq,
  GTokenFieldsVars,
  GUserCreateInput,
  GUserData,
  GUserRegisterInput,
  GUserReq,
  GUserVars,
  GgetMeData,
  GgetMeData_getMe,
  GgetMeReq,
  GgetMeVars,
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
])
final Serializers serializers = _serializersBuilder.build();
