// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:aether/graphql/__generated__/applet.ast.gql.dart' as _i5;
import 'package:aether/graphql/__generated__/applet.data.gql.dart' as _i2;
import 'package:aether/graphql/__generated__/applet.var.gql.dart' as _i3;
import 'package:aether/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i7;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'applet.req.gql.g.dart';

abstract class GgetAllAppletsReq
    implements
        Built<GgetAllAppletsReq, GgetAllAppletsReqBuilder>,
        _i1.OperationRequest<_i2.GgetAllAppletsData, _i3.GgetAllAppletsVars> {
  GgetAllAppletsReq._();

  factory GgetAllAppletsReq(
          [void Function(GgetAllAppletsReqBuilder b) updates]) =
      _$GgetAllAppletsReq;

  static void _initializeBuilder(GgetAllAppletsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getAllApplets',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetAllAppletsVars get vars;
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
  _i2.GgetAllAppletsData? Function(
    _i2.GgetAllAppletsData?,
    _i2.GgetAllAppletsData?,
  )? get updateResult;
  @override
  _i2.GgetAllAppletsData? get optimisticResponse;
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
  _i2.GgetAllAppletsData? parseData(Map<String, dynamic> json) =>
      _i2.GgetAllAppletsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetAllAppletsData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetAllAppletsData, _i3.GgetAllAppletsVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetAllAppletsReq> get serializer =>
      _$ggetAllAppletsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetAllAppletsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllAppletsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetAllAppletsReq.serializer,
        json,
      );
}

abstract class GgetAppletByIdReq
    implements
        Built<GgetAppletByIdReq, GgetAppletByIdReqBuilder>,
        _i1.OperationRequest<_i2.GgetAppletByIdData, _i3.GgetAppletByIdVars> {
  GgetAppletByIdReq._();

  factory GgetAppletByIdReq(
          [void Function(GgetAppletByIdReqBuilder b) updates]) =
      _$GgetAppletByIdReq;

  static void _initializeBuilder(GgetAppletByIdReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getAppletById',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetAppletByIdVars get vars;
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
  _i2.GgetAppletByIdData? Function(
    _i2.GgetAppletByIdData?,
    _i2.GgetAppletByIdData?,
  )? get updateResult;
  @override
  _i2.GgetAppletByIdData? get optimisticResponse;
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
  _i2.GgetAppletByIdData? parseData(Map<String, dynamic> json) =>
      _i2.GgetAppletByIdData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetAppletByIdData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetAppletByIdData, _i3.GgetAppletByIdVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetAppletByIdReq> get serializer =>
      _$ggetAppletByIdReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetAppletByIdReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAppletByIdReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetAppletByIdReq.serializer,
        json,
      );
}

abstract class GgetAppletNodeByIdReq
    implements
        Built<GgetAppletNodeByIdReq, GgetAppletNodeByIdReqBuilder>,
        _i1.OperationRequest<_i2.GgetAppletNodeByIdData,
            _i3.GgetAppletNodeByIdVars> {
  GgetAppletNodeByIdReq._();

  factory GgetAppletNodeByIdReq(
          [void Function(GgetAppletNodeByIdReqBuilder b) updates]) =
      _$GgetAppletNodeByIdReq;

  static void _initializeBuilder(GgetAppletNodeByIdReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getAppletNodeById',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetAppletNodeByIdVars get vars;
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
  _i2.GgetAppletNodeByIdData? Function(
    _i2.GgetAppletNodeByIdData?,
    _i2.GgetAppletNodeByIdData?,
  )? get updateResult;
  @override
  _i2.GgetAppletNodeByIdData? get optimisticResponse;
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
  _i2.GgetAppletNodeByIdData? parseData(Map<String, dynamic> json) =>
      _i2.GgetAppletNodeByIdData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetAppletNodeByIdData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetAppletNodeByIdData, _i3.GgetAppletNodeByIdVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetAppletNodeByIdReq> get serializer =>
      _$ggetAppletNodeByIdReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetAppletNodeByIdReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAppletNodeByIdReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetAppletNodeByIdReq.serializer,
        json,
      );
}

abstract class GcreateAppletReq
    implements
        Built<GcreateAppletReq, GcreateAppletReqBuilder>,
        _i1.OperationRequest<_i2.GcreateAppletData, _i3.GcreateAppletVars> {
  GcreateAppletReq._();

  factory GcreateAppletReq([void Function(GcreateAppletReqBuilder b) updates]) =
      _$GcreateAppletReq;

  static void _initializeBuilder(GcreateAppletReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'createApplet',
    )
    ..executeOnListen = true;

  @override
  _i3.GcreateAppletVars get vars;
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
  _i2.GcreateAppletData? Function(
    _i2.GcreateAppletData?,
    _i2.GcreateAppletData?,
  )? get updateResult;
  @override
  _i2.GcreateAppletData? get optimisticResponse;
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
  _i2.GcreateAppletData? parseData(Map<String, dynamic> json) =>
      _i2.GcreateAppletData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GcreateAppletData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GcreateAppletData, _i3.GcreateAppletVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GcreateAppletReq> get serializer =>
      _$gcreateAppletReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GcreateAppletReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateAppletReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GcreateAppletReq.serializer,
        json,
      );
}

abstract class GBaseAppletProviderReq
    implements
        Built<GBaseAppletProviderReq, GBaseAppletProviderReqBuilder>,
        _i1.FragmentRequest<_i2.GBaseAppletProviderData,
            _i3.GBaseAppletProviderVars> {
  GBaseAppletProviderReq._();

  factory GBaseAppletProviderReq(
          [void Function(GBaseAppletProviderReqBuilder b) updates]) =
      _$GBaseAppletProviderReq;

  static void _initializeBuilder(GBaseAppletProviderReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'BaseAppletProvider';

  @override
  _i3.GBaseAppletProviderVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GBaseAppletProviderData? parseData(Map<String, dynamic> json) =>
      _i2.GBaseAppletProviderData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GBaseAppletProviderData data) =>
      data.toJson();

  static Serializer<GBaseAppletProviderReq> get serializer =>
      _$gBaseAppletProviderReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GBaseAppletProviderReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GBaseAppletProviderReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GBaseAppletProviderReq.serializer,
        json,
      );
}

abstract class GBaseAppletNodeReq
    implements
        Built<GBaseAppletNodeReq, GBaseAppletNodeReqBuilder>,
        _i1.FragmentRequest<_i2.GBaseAppletNodeData, _i3.GBaseAppletNodeVars> {
  GBaseAppletNodeReq._();

  factory GBaseAppletNodeReq(
          [void Function(GBaseAppletNodeReqBuilder b) updates]) =
      _$GBaseAppletNodeReq;

  static void _initializeBuilder(GBaseAppletNodeReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'BaseAppletNode';

  @override
  _i3.GBaseAppletNodeVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GBaseAppletNodeData? parseData(Map<String, dynamic> json) =>
      _i2.GBaseAppletNodeData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GBaseAppletNodeData data) =>
      data.toJson();

  static Serializer<GBaseAppletNodeReq> get serializer =>
      _$gBaseAppletNodeReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GBaseAppletNodeReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GBaseAppletNodeReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GBaseAppletNodeReq.serializer,
        json,
      );
}

abstract class GExtendedAppletNodeReq
    implements
        Built<GExtendedAppletNodeReq, GExtendedAppletNodeReqBuilder>,
        _i1.FragmentRequest<_i2.GExtendedAppletNodeData,
            _i3.GExtendedAppletNodeVars> {
  GExtendedAppletNodeReq._();

  factory GExtendedAppletNodeReq(
          [void Function(GExtendedAppletNodeReqBuilder b) updates]) =
      _$GExtendedAppletNodeReq;

  static void _initializeBuilder(GExtendedAppletNodeReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'ExtendedAppletNode';

  @override
  _i3.GExtendedAppletNodeVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GExtendedAppletNodeData? parseData(Map<String, dynamic> json) =>
      _i2.GExtendedAppletNodeData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GExtendedAppletNodeData data) =>
      data.toJson();

  static Serializer<GExtendedAppletNodeReq> get serializer =>
      _$gExtendedAppletNodeReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GExtendedAppletNodeReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExtendedAppletNodeReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GExtendedAppletNodeReq.serializer,
        json,
      );
}

abstract class GBaseAppletReq
    implements
        Built<GBaseAppletReq, GBaseAppletReqBuilder>,
        _i1.FragmentRequest<_i2.GBaseAppletData, _i3.GBaseAppletVars> {
  GBaseAppletReq._();

  factory GBaseAppletReq([void Function(GBaseAppletReqBuilder b) updates]) =
      _$GBaseAppletReq;

  static void _initializeBuilder(GBaseAppletReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'BaseApplet';

  @override
  _i3.GBaseAppletVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GBaseAppletData? parseData(Map<String, dynamic> json) =>
      _i2.GBaseAppletData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GBaseAppletData data) => data.toJson();

  static Serializer<GBaseAppletReq> get serializer =>
      _$gBaseAppletReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GBaseAppletReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GBaseAppletReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GBaseAppletReq.serializer,
        json,
      );
}

abstract class GAppletWithNodesReq
    implements
        Built<GAppletWithNodesReq, GAppletWithNodesReqBuilder>,
        _i1
        .FragmentRequest<_i2.GAppletWithNodesData, _i3.GAppletWithNodesVars> {
  GAppletWithNodesReq._();

  factory GAppletWithNodesReq(
          [void Function(GAppletWithNodesReqBuilder b) updates]) =
      _$GAppletWithNodesReq;

  static void _initializeBuilder(GAppletWithNodesReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'AppletWithNodes';

  @override
  _i3.GAppletWithNodesVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GAppletWithNodesData? parseData(Map<String, dynamic> json) =>
      _i2.GAppletWithNodesData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GAppletWithNodesData data) =>
      data.toJson();

  static Serializer<GAppletWithNodesReq> get serializer =>
      _$gAppletWithNodesReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GAppletWithNodesReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAppletWithNodesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GAppletWithNodesReq.serializer,
        json,
      );
}
