// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:aether/graphql/__generated__/auth.ast.gql.dart' as _i5;
import 'package:aether/graphql/__generated__/auth.data.gql.dart' as _i2;
import 'package:aether/graphql/__generated__/auth.var.gql.dart' as _i3;
import 'package:aether/graphql/__generated__/serializers.gql.dart' as _i6;
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i7;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'auth.req.gql.g.dart';

abstract class GloginReq
    implements
        Built<GloginReq, GloginReqBuilder>,
        _i1.OperationRequest<_i2.GloginData, _i3.GloginVars> {
  GloginReq._();

  factory GloginReq([void Function(GloginReqBuilder b) updates]) = _$GloginReq;

  static void _initializeBuilder(GloginReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'login',
    )
    ..executeOnListen = true;

  @override
  _i3.GloginVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GloginData? Function(
    _i2.GloginData?,
    _i2.GloginData?,
  )? get updateResult;
  @override
  _i2.GloginData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GloginData? parseData(Map<String, dynamic> json) =>
      _i2.GloginData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GloginData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GloginData, _i3.GloginVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GloginReq> get serializer => _$gloginReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GloginReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GloginReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GloginReq.serializer,
        json,
      );
}

abstract class GrefreshTokenReq
    implements
        Built<GrefreshTokenReq, GrefreshTokenReqBuilder>,
        _i1.OperationRequest<_i2.GrefreshTokenData, _i3.GrefreshTokenVars> {
  GrefreshTokenReq._();

  factory GrefreshTokenReq([void Function(GrefreshTokenReqBuilder b) updates]) =
      _$GrefreshTokenReq;

  static void _initializeBuilder(GrefreshTokenReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'refreshToken',
    )
    ..executeOnListen = true;

  @override
  _i3.GrefreshTokenVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GrefreshTokenData? Function(
    _i2.GrefreshTokenData?,
    _i2.GrefreshTokenData?,
  )? get updateResult;
  @override
  _i2.GrefreshTokenData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GrefreshTokenData? parseData(Map<String, dynamic> json) =>
      _i2.GrefreshTokenData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GrefreshTokenData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GrefreshTokenData, _i3.GrefreshTokenVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GrefreshTokenReq> get serializer =>
      _$grefreshTokenReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GrefreshTokenReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GrefreshTokenReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GrefreshTokenReq.serializer,
        json,
      );
}

abstract class GTokenFieldsReq
    implements
        Built<GTokenFieldsReq, GTokenFieldsReqBuilder>,
        _i1.FragmentRequest<_i2.GTokenFieldsData, _i3.GTokenFieldsVars> {
  GTokenFieldsReq._();

  factory GTokenFieldsReq([void Function(GTokenFieldsReqBuilder b) updates]) =
      _$GTokenFieldsReq;

  static void _initializeBuilder(GTokenFieldsReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'TokenFields';

  @override
  _i3.GTokenFieldsVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GTokenFieldsData? parseData(Map<String, dynamic> json) =>
      _i2.GTokenFieldsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GTokenFieldsData data) => data.toJson();

  static Serializer<GTokenFieldsReq> get serializer =>
      _$gTokenFieldsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GTokenFieldsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTokenFieldsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GTokenFieldsReq.serializer,
        json,
      );
}
