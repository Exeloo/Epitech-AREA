// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:aether/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:aether/graphql/__generated__/user.ast.gql.dart' as _i5;
import 'package:aether/graphql/__generated__/user.data.gql.dart' as _i2;
import 'package:aether/graphql/__generated__/user.var.gql.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i7;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'user.req.gql.g.dart';

abstract class GgetMeReq
    implements
        Built<GgetMeReq, GgetMeReqBuilder>,
        _i1.OperationRequest<_i2.GgetMeData, _i3.GgetMeVars> {
  GgetMeReq._();

  factory GgetMeReq([void Function(GgetMeReqBuilder b) updates]) = _$GgetMeReq;

  static void _initializeBuilder(GgetMeReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getMe',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetMeVars get vars;
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
  _i2.GgetMeData? Function(
    _i2.GgetMeData?,
    _i2.GgetMeData?,
  )? get updateResult;
  @override
  _i2.GgetMeData? get optimisticResponse;
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
  _i2.GgetMeData? parseData(Map<String, dynamic> json) =>
      _i2.GgetMeData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetMeData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetMeData, _i3.GgetMeVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetMeReq> get serializer => _$ggetMeReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetMeReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetMeReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetMeReq.serializer,
        json,
      );
}

abstract class GupdateMeReq
    implements
        Built<GupdateMeReq, GupdateMeReqBuilder>,
        _i1.OperationRequest<_i2.GupdateMeData, _i3.GupdateMeVars> {
  GupdateMeReq._();

  factory GupdateMeReq([void Function(GupdateMeReqBuilder b) updates]) =
      _$GupdateMeReq;

  static void _initializeBuilder(GupdateMeReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'updateMe',
    )
    ..executeOnListen = true;

  @override
  _i3.GupdateMeVars get vars;
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
  _i2.GupdateMeData? Function(
    _i2.GupdateMeData?,
    _i2.GupdateMeData?,
  )? get updateResult;
  @override
  _i2.GupdateMeData? get optimisticResponse;
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
  _i2.GupdateMeData? parseData(Map<String, dynamic> json) =>
      _i2.GupdateMeData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GupdateMeData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GupdateMeData, _i3.GupdateMeVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GupdateMeReq> get serializer => _$gupdateMeReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GupdateMeReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GupdateMeReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GupdateMeReq.serializer,
        json,
      );
}

abstract class GregisterReq
    implements
        Built<GregisterReq, GregisterReqBuilder>,
        _i1.OperationRequest<_i2.GregisterData, _i3.GregisterVars> {
  GregisterReq._();

  factory GregisterReq([void Function(GregisterReqBuilder b) updates]) =
      _$GregisterReq;

  static void _initializeBuilder(GregisterReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'register',
    )
    ..executeOnListen = true;

  @override
  _i3.GregisterVars get vars;
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
  _i2.GregisterData? Function(
    _i2.GregisterData?,
    _i2.GregisterData?,
  )? get updateResult;
  @override
  _i2.GregisterData? get optimisticResponse;
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
  _i2.GregisterData? parseData(Map<String, dynamic> json) =>
      _i2.GregisterData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GregisterData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GregisterData, _i3.GregisterVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GregisterReq> get serializer => _$gregisterReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GregisterReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GregisterReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GregisterReq.serializer,
        json,
      );
}

abstract class GUserReq
    implements
        Built<GUserReq, GUserReqBuilder>,
        _i1.FragmentRequest<_i2.GUserData, _i3.GUserVars> {
  GUserReq._();

  factory GUserReq([void Function(GUserReqBuilder b) updates]) = _$GUserReq;

  static void _initializeBuilder(GUserReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'User';

  @override
  _i3.GUserVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GUserData? parseData(Map<String, dynamic> json) =>
      _i2.GUserData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GUserData data) => data.toJson();

  static Serializer<GUserReq> get serializer => _$gUserReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUserReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUserReq.serializer,
        json,
      );
}
