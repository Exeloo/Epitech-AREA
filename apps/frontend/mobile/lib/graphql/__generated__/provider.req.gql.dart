// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:aether/graphql/__generated__/provider.ast.gql.dart' as _i5;
import 'package:aether/graphql/__generated__/provider.data.gql.dart' as _i2;
import 'package:aether/graphql/__generated__/provider.var.gql.dart' as _i3;
import 'package:aether/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i7;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'provider.req.gql.g.dart';

abstract class GgetAllProvidersReq
    implements
        Built<GgetAllProvidersReq, GgetAllProvidersReqBuilder>,
        _i1
        .OperationRequest<_i2.GgetAllProvidersData, _i3.GgetAllProvidersVars> {
  GgetAllProvidersReq._();

  factory GgetAllProvidersReq(
          [void Function(GgetAllProvidersReqBuilder b) updates]) =
      _$GgetAllProvidersReq;

  static void _initializeBuilder(GgetAllProvidersReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getAllProviders',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetAllProvidersVars get vars;
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
  _i2.GgetAllProvidersData? Function(
    _i2.GgetAllProvidersData?,
    _i2.GgetAllProvidersData?,
  )? get updateResult;
  @override
  _i2.GgetAllProvidersData? get optimisticResponse;
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
  _i2.GgetAllProvidersData? parseData(Map<String, dynamic> json) =>
      _i2.GgetAllProvidersData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetAllProvidersData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetAllProvidersData, _i3.GgetAllProvidersVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetAllProvidersReq> get serializer =>
      _$ggetAllProvidersReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetAllProvidersReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllProvidersReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetAllProvidersReq.serializer,
        json,
      );
}

abstract class GgetProviderOAuthStateReq
    implements
        Built<GgetProviderOAuthStateReq, GgetProviderOAuthStateReqBuilder>,
        _i1.OperationRequest<_i2.GgetProviderOAuthStateData,
            _i3.GgetProviderOAuthStateVars> {
  GgetProviderOAuthStateReq._();

  factory GgetProviderOAuthStateReq(
          [void Function(GgetProviderOAuthStateReqBuilder b) updates]) =
      _$GgetProviderOAuthStateReq;

  static void _initializeBuilder(GgetProviderOAuthStateReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getProviderOAuthState',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetProviderOAuthStateVars get vars;
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
  _i2.GgetProviderOAuthStateData? Function(
    _i2.GgetProviderOAuthStateData?,
    _i2.GgetProviderOAuthStateData?,
  )? get updateResult;
  @override
  _i2.GgetProviderOAuthStateData? get optimisticResponse;
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
  _i2.GgetProviderOAuthStateData? parseData(Map<String, dynamic> json) =>
      _i2.GgetProviderOAuthStateData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetProviderOAuthStateData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetProviderOAuthStateData,
      _i3.GgetProviderOAuthStateVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetProviderOAuthStateReq> get serializer =>
      _$ggetProviderOAuthStateReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetProviderOAuthStateReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetProviderOAuthStateReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetProviderOAuthStateReq.serializer,
        json,
      );
}

abstract class GgetProviderByIdReq
    implements
        Built<GgetProviderByIdReq, GgetProviderByIdReqBuilder>,
        _i1
        .OperationRequest<_i2.GgetProviderByIdData, _i3.GgetProviderByIdVars> {
  GgetProviderByIdReq._();

  factory GgetProviderByIdReq(
          [void Function(GgetProviderByIdReqBuilder b) updates]) =
      _$GgetProviderByIdReq;

  static void _initializeBuilder(GgetProviderByIdReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getProviderById',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetProviderByIdVars get vars;
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
  _i2.GgetProviderByIdData? Function(
    _i2.GgetProviderByIdData?,
    _i2.GgetProviderByIdData?,
  )? get updateResult;
  @override
  _i2.GgetProviderByIdData? get optimisticResponse;
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
  _i2.GgetProviderByIdData? parseData(Map<String, dynamic> json) =>
      _i2.GgetProviderByIdData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetProviderByIdData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetProviderByIdData, _i3.GgetProviderByIdVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetProviderByIdReq> get serializer =>
      _$ggetProviderByIdReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetProviderByIdReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetProviderByIdReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetProviderByIdReq.serializer,
        json,
      );
}

abstract class GProviderManifestActionReq
    implements
        Built<GProviderManifestActionReq, GProviderManifestActionReqBuilder>,
        _i1.FragmentRequest<_i2.GProviderManifestActionData,
            _i3.GProviderManifestActionVars> {
  GProviderManifestActionReq._();

  factory GProviderManifestActionReq(
          [void Function(GProviderManifestActionReqBuilder b) updates]) =
      _$GProviderManifestActionReq;

  static void _initializeBuilder(GProviderManifestActionReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'ProviderManifestAction';

  @override
  _i3.GProviderManifestActionVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GProviderManifestActionData? parseData(Map<String, dynamic> json) =>
      _i2.GProviderManifestActionData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GProviderManifestActionData data) =>
      data.toJson();

  static Serializer<GProviderManifestActionReq> get serializer =>
      _$gProviderManifestActionReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GProviderManifestActionReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProviderManifestActionReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GProviderManifestActionReq.serializer,
        json,
      );
}

abstract class GProviderManifestTriggerReq
    implements
        Built<GProviderManifestTriggerReq, GProviderManifestTriggerReqBuilder>,
        _i1.FragmentRequest<_i2.GProviderManifestTriggerData,
            _i3.GProviderManifestTriggerVars> {
  GProviderManifestTriggerReq._();

  factory GProviderManifestTriggerReq(
          [void Function(GProviderManifestTriggerReqBuilder b) updates]) =
      _$GProviderManifestTriggerReq;

  static void _initializeBuilder(GProviderManifestTriggerReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'ProviderManifestTrigger';

  @override
  _i3.GProviderManifestTriggerVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GProviderManifestTriggerData? parseData(Map<String, dynamic> json) =>
      _i2.GProviderManifestTriggerData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GProviderManifestTriggerData data) =>
      data.toJson();

  static Serializer<GProviderManifestTriggerReq> get serializer =>
      _$gProviderManifestTriggerReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GProviderManifestTriggerReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProviderManifestTriggerReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GProviderManifestTriggerReq.serializer,
        json,
      );
}

abstract class GBaseProviderReq
    implements
        Built<GBaseProviderReq, GBaseProviderReqBuilder>,
        _i1.FragmentRequest<_i2.GBaseProviderData, _i3.GBaseProviderVars> {
  GBaseProviderReq._();

  factory GBaseProviderReq([void Function(GBaseProviderReqBuilder b) updates]) =
      _$GBaseProviderReq;

  static void _initializeBuilder(GBaseProviderReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'BaseProvider';

  @override
  _i3.GBaseProviderVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GBaseProviderData? parseData(Map<String, dynamic> json) =>
      _i2.GBaseProviderData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GBaseProviderData data) => data.toJson();

  static Serializer<GBaseProviderReq> get serializer =>
      _$gBaseProviderReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GBaseProviderReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GBaseProviderReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GBaseProviderReq.serializer,
        json,
      );
}

abstract class GProviderWithManifestReq
    implements
        Built<GProviderWithManifestReq, GProviderWithManifestReqBuilder>,
        _i1.FragmentRequest<_i2.GProviderWithManifestData,
            _i3.GProviderWithManifestVars> {
  GProviderWithManifestReq._();

  factory GProviderWithManifestReq(
          [void Function(GProviderWithManifestReqBuilder b) updates]) =
      _$GProviderWithManifestReq;

  static void _initializeBuilder(GProviderWithManifestReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'ProviderWithManifest';

  @override
  _i3.GProviderWithManifestVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GProviderWithManifestData? parseData(Map<String, dynamic> json) =>
      _i2.GProviderWithManifestData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GProviderWithManifestData data) =>
      data.toJson();

  static Serializer<GProviderWithManifestReq> get serializer =>
      _$gProviderWithManifestReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GProviderWithManifestReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProviderWithManifestReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GProviderWithManifestReq.serializer,
        json,
      );
}
