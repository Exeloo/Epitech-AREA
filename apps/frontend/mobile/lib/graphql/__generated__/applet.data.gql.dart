// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mobile/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:mobile/graphql/__generated__/serializers.gql.dart' as _i1;

part 'applet.data.gql.g.dart';

abstract class GgetAllAppletsData
    implements Built<GgetAllAppletsData, GgetAllAppletsDataBuilder> {
  GgetAllAppletsData._();

  factory GgetAllAppletsData(
          [void Function(GgetAllAppletsDataBuilder b) updates]) =
      _$GgetAllAppletsData;

  static void _initializeBuilder(GgetAllAppletsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GgetAllAppletsData_getAllApplets> get getAllApplets;
  static Serializer<GgetAllAppletsData> get serializer =>
      _$ggetAllAppletsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllAppletsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllAppletsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllAppletsData.serializer,
        json,
      );
}

abstract class GgetAllAppletsData_getAllApplets
    implements
        Built<GgetAllAppletsData_getAllApplets,
            GgetAllAppletsData_getAllAppletsBuilder>,
        GBaseApplet {
  GgetAllAppletsData_getAllApplets._();

  factory GgetAllAppletsData_getAllApplets(
          [void Function(GgetAllAppletsData_getAllAppletsBuilder b) updates]) =
      _$GgetAllAppletsData_getAllApplets;

  static void _initializeBuilder(GgetAllAppletsData_getAllAppletsBuilder b) =>
      b..G__typename = 'Applet';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get name;
  @override
  String? get description;
  static Serializer<GgetAllAppletsData_getAllApplets> get serializer =>
      _$ggetAllAppletsDataGetAllAppletsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllAppletsData_getAllApplets.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllAppletsData_getAllApplets? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllAppletsData_getAllApplets.serializer,
        json,
      );
}

abstract class GgetAppletByIdData
    implements Built<GgetAppletByIdData, GgetAppletByIdDataBuilder> {
  GgetAppletByIdData._();

  factory GgetAppletByIdData(
          [void Function(GgetAppletByIdDataBuilder b) updates]) =
      _$GgetAppletByIdData;

  static void _initializeBuilder(GgetAppletByIdDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetAppletByIdData_getAppletById get getAppletById;
  static Serializer<GgetAppletByIdData> get serializer =>
      _$ggetAppletByIdDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAppletByIdData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAppletByIdData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAppletByIdData.serializer,
        json,
      );
}

abstract class GgetAppletByIdData_getAppletById
    implements
        Built<GgetAppletByIdData_getAppletById,
            GgetAppletByIdData_getAppletByIdBuilder>,
        GAppletWithNodes {
  GgetAppletByIdData_getAppletById._();

  factory GgetAppletByIdData_getAppletById(
          [void Function(GgetAppletByIdData_getAppletByIdBuilder b) updates]) =
      _$GgetAppletByIdData_getAppletById;

  static void _initializeBuilder(GgetAppletByIdData_getAppletByIdBuilder b) =>
      b..G__typename = 'Applet';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GgetAppletByIdData_getAppletById_triggerNodes> get triggerNodes;
  @override
  int get id;
  @override
  String get name;
  @override
  String? get description;
  static Serializer<GgetAppletByIdData_getAppletById> get serializer =>
      _$ggetAppletByIdDataGetAppletByIdSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAppletByIdData_getAppletById.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAppletByIdData_getAppletById? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAppletByIdData_getAppletById.serializer,
        json,
      );
}

abstract class GgetAppletByIdData_getAppletById_triggerNodes
    implements
        Built<GgetAppletByIdData_getAppletById_triggerNodes,
            GgetAppletByIdData_getAppletById_triggerNodesBuilder>,
        GAppletWithNodes_triggerNodes,
        GExtendedAppletNode {
  GgetAppletByIdData_getAppletById_triggerNodes._();

  factory GgetAppletByIdData_getAppletById_triggerNodes(
      [void Function(GgetAppletByIdData_getAppletById_triggerNodesBuilder b)
          updates]) = _$GgetAppletByIdData_getAppletById_triggerNodes;

  static void _initializeBuilder(
          GgetAppletByIdData_getAppletById_triggerNodesBuilder b) =>
      b..G__typename = 'AppletNode';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i2.GJSON get input;
  @override
  GgetAppletByIdData_getAppletById_triggerNodes_provider get provider;
  @override
  BuiltList<GgetAppletByIdData_getAppletById_triggerNodes_previous>
      get previous;
  @override
  BuiltList<GgetAppletByIdData_getAppletById_triggerNodes_next> get next;
  @override
  int get id;
  @override
  String get actionId;
  @override
  _i2.GAppletNodeType get actionType;
  static Serializer<GgetAppletByIdData_getAppletById_triggerNodes>
      get serializer => _$ggetAppletByIdDataGetAppletByIdTriggerNodesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAppletByIdData_getAppletById_triggerNodes.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAppletByIdData_getAppletById_triggerNodes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAppletByIdData_getAppletById_triggerNodes.serializer,
        json,
      );
}

abstract class GgetAppletByIdData_getAppletById_triggerNodes_provider
    implements
        Built<GgetAppletByIdData_getAppletById_triggerNodes_provider,
            GgetAppletByIdData_getAppletById_triggerNodes_providerBuilder>,
        GAppletWithNodes_triggerNodes_provider,
        GExtendedAppletNode_provider,
        GBaseAppletProvider {
  GgetAppletByIdData_getAppletById_triggerNodes_provider._();

  factory GgetAppletByIdData_getAppletById_triggerNodes_provider(
      [void Function(
              GgetAppletByIdData_getAppletById_triggerNodes_providerBuilder b)
          updates]) = _$GgetAppletByIdData_getAppletById_triggerNodes_provider;

  static void _initializeBuilder(
          GgetAppletByIdData_getAppletById_triggerNodes_providerBuilder b) =>
      b..G__typename = 'Provider';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get img;
  @override
  String get color;
  @override
  _i2.GProviderVisibility get visibility;
  static Serializer<GgetAppletByIdData_getAppletById_triggerNodes_provider>
      get serializer =>
          _$ggetAppletByIdDataGetAppletByIdTriggerNodesProviderSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAppletByIdData_getAppletById_triggerNodes_provider.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAppletByIdData_getAppletById_triggerNodes_provider? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAppletByIdData_getAppletById_triggerNodes_provider.serializer,
        json,
      );
}

abstract class GgetAppletByIdData_getAppletById_triggerNodes_previous
    implements
        Built<GgetAppletByIdData_getAppletById_triggerNodes_previous,
            GgetAppletByIdData_getAppletById_triggerNodes_previousBuilder>,
        GAppletWithNodes_triggerNodes_previous,
        GExtendedAppletNode_previous,
        GBaseAppletNode {
  GgetAppletByIdData_getAppletById_triggerNodes_previous._();

  factory GgetAppletByIdData_getAppletById_triggerNodes_previous(
      [void Function(
              GgetAppletByIdData_getAppletById_triggerNodes_previousBuilder b)
          updates]) = _$GgetAppletByIdData_getAppletById_triggerNodes_previous;

  static void _initializeBuilder(
          GgetAppletByIdData_getAppletById_triggerNodes_previousBuilder b) =>
      b..G__typename = 'AppletNode';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get actionId;
  @override
  _i2.GAppletNodeType get actionType;
  static Serializer<GgetAppletByIdData_getAppletById_triggerNodes_previous>
      get serializer =>
          _$ggetAppletByIdDataGetAppletByIdTriggerNodesPreviousSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAppletByIdData_getAppletById_triggerNodes_previous.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAppletByIdData_getAppletById_triggerNodes_previous? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAppletByIdData_getAppletById_triggerNodes_previous.serializer,
        json,
      );
}

abstract class GgetAppletByIdData_getAppletById_triggerNodes_next
    implements
        Built<GgetAppletByIdData_getAppletById_triggerNodes_next,
            GgetAppletByIdData_getAppletById_triggerNodes_nextBuilder>,
        GAppletWithNodes_triggerNodes_next,
        GExtendedAppletNode_next,
        GBaseAppletNode {
  GgetAppletByIdData_getAppletById_triggerNodes_next._();

  factory GgetAppletByIdData_getAppletById_triggerNodes_next(
      [void Function(
              GgetAppletByIdData_getAppletById_triggerNodes_nextBuilder b)
          updates]) = _$GgetAppletByIdData_getAppletById_triggerNodes_next;

  static void _initializeBuilder(
          GgetAppletByIdData_getAppletById_triggerNodes_nextBuilder b) =>
      b..G__typename = 'AppletNode';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get actionId;
  @override
  _i2.GAppletNodeType get actionType;
  static Serializer<GgetAppletByIdData_getAppletById_triggerNodes_next>
      get serializer =>
          _$ggetAppletByIdDataGetAppletByIdTriggerNodesNextSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAppletByIdData_getAppletById_triggerNodes_next.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAppletByIdData_getAppletById_triggerNodes_next? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAppletByIdData_getAppletById_triggerNodes_next.serializer,
        json,
      );
}

abstract class GgetAppletNodeByIdData
    implements Built<GgetAppletNodeByIdData, GgetAppletNodeByIdDataBuilder> {
  GgetAppletNodeByIdData._();

  factory GgetAppletNodeByIdData(
          [void Function(GgetAppletNodeByIdDataBuilder b) updates]) =
      _$GgetAppletNodeByIdData;

  static void _initializeBuilder(GgetAppletNodeByIdDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetAppletNodeByIdData_getAppletNodeById get getAppletNodeById;
  static Serializer<GgetAppletNodeByIdData> get serializer =>
      _$ggetAppletNodeByIdDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAppletNodeByIdData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAppletNodeByIdData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAppletNodeByIdData.serializer,
        json,
      );
}

abstract class GgetAppletNodeByIdData_getAppletNodeById
    implements
        Built<GgetAppletNodeByIdData_getAppletNodeById,
            GgetAppletNodeByIdData_getAppletNodeByIdBuilder>,
        GExtendedAppletNode {
  GgetAppletNodeByIdData_getAppletNodeById._();

  factory GgetAppletNodeByIdData_getAppletNodeById(
      [void Function(GgetAppletNodeByIdData_getAppletNodeByIdBuilder b)
          updates]) = _$GgetAppletNodeByIdData_getAppletNodeById;

  static void _initializeBuilder(
          GgetAppletNodeByIdData_getAppletNodeByIdBuilder b) =>
      b..G__typename = 'AppletNode';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i2.GJSON get input;
  @override
  GgetAppletNodeByIdData_getAppletNodeById_provider get provider;
  @override
  BuiltList<GgetAppletNodeByIdData_getAppletNodeById_previous> get previous;
  @override
  BuiltList<GgetAppletNodeByIdData_getAppletNodeById_next> get next;
  @override
  int get id;
  @override
  String get actionId;
  @override
  _i2.GAppletNodeType get actionType;
  static Serializer<GgetAppletNodeByIdData_getAppletNodeById> get serializer =>
      _$ggetAppletNodeByIdDataGetAppletNodeByIdSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAppletNodeByIdData_getAppletNodeById.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAppletNodeByIdData_getAppletNodeById? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAppletNodeByIdData_getAppletNodeById.serializer,
        json,
      );
}

abstract class GgetAppletNodeByIdData_getAppletNodeById_provider
    implements
        Built<GgetAppletNodeByIdData_getAppletNodeById_provider,
            GgetAppletNodeByIdData_getAppletNodeById_providerBuilder>,
        GExtendedAppletNode_provider,
        GBaseAppletProvider {
  GgetAppletNodeByIdData_getAppletNodeById_provider._();

  factory GgetAppletNodeByIdData_getAppletNodeById_provider(
      [void Function(GgetAppletNodeByIdData_getAppletNodeById_providerBuilder b)
          updates]) = _$GgetAppletNodeByIdData_getAppletNodeById_provider;

  static void _initializeBuilder(
          GgetAppletNodeByIdData_getAppletNodeById_providerBuilder b) =>
      b..G__typename = 'Provider';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get img;
  @override
  String get color;
  @override
  _i2.GProviderVisibility get visibility;
  static Serializer<GgetAppletNodeByIdData_getAppletNodeById_provider>
      get serializer =>
          _$ggetAppletNodeByIdDataGetAppletNodeByIdProviderSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAppletNodeByIdData_getAppletNodeById_provider.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAppletNodeByIdData_getAppletNodeById_provider? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAppletNodeByIdData_getAppletNodeById_provider.serializer,
        json,
      );
}

abstract class GgetAppletNodeByIdData_getAppletNodeById_previous
    implements
        Built<GgetAppletNodeByIdData_getAppletNodeById_previous,
            GgetAppletNodeByIdData_getAppletNodeById_previousBuilder>,
        GExtendedAppletNode_previous,
        GBaseAppletNode {
  GgetAppletNodeByIdData_getAppletNodeById_previous._();

  factory GgetAppletNodeByIdData_getAppletNodeById_previous(
      [void Function(GgetAppletNodeByIdData_getAppletNodeById_previousBuilder b)
          updates]) = _$GgetAppletNodeByIdData_getAppletNodeById_previous;

  static void _initializeBuilder(
          GgetAppletNodeByIdData_getAppletNodeById_previousBuilder b) =>
      b..G__typename = 'AppletNode';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get actionId;
  @override
  _i2.GAppletNodeType get actionType;
  static Serializer<GgetAppletNodeByIdData_getAppletNodeById_previous>
      get serializer =>
          _$ggetAppletNodeByIdDataGetAppletNodeByIdPreviousSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAppletNodeByIdData_getAppletNodeById_previous.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAppletNodeByIdData_getAppletNodeById_previous? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAppletNodeByIdData_getAppletNodeById_previous.serializer,
        json,
      );
}

abstract class GgetAppletNodeByIdData_getAppletNodeById_next
    implements
        Built<GgetAppletNodeByIdData_getAppletNodeById_next,
            GgetAppletNodeByIdData_getAppletNodeById_nextBuilder>,
        GExtendedAppletNode_next,
        GBaseAppletNode {
  GgetAppletNodeByIdData_getAppletNodeById_next._();

  factory GgetAppletNodeByIdData_getAppletNodeById_next(
      [void Function(GgetAppletNodeByIdData_getAppletNodeById_nextBuilder b)
          updates]) = _$GgetAppletNodeByIdData_getAppletNodeById_next;

  static void _initializeBuilder(
          GgetAppletNodeByIdData_getAppletNodeById_nextBuilder b) =>
      b..G__typename = 'AppletNode';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get actionId;
  @override
  _i2.GAppletNodeType get actionType;
  static Serializer<GgetAppletNodeByIdData_getAppletNodeById_next>
      get serializer => _$ggetAppletNodeByIdDataGetAppletNodeByIdNextSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAppletNodeByIdData_getAppletNodeById_next.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAppletNodeByIdData_getAppletNodeById_next? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAppletNodeByIdData_getAppletNodeById_next.serializer,
        json,
      );
}

abstract class GcreateAppletData
    implements Built<GcreateAppletData, GcreateAppletDataBuilder> {
  GcreateAppletData._();

  factory GcreateAppletData(
          [void Function(GcreateAppletDataBuilder b) updates]) =
      _$GcreateAppletData;

  static void _initializeBuilder(GcreateAppletDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GcreateAppletData_createApplet get createApplet;
  static Serializer<GcreateAppletData> get serializer =>
      _$gcreateAppletDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcreateAppletData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateAppletData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcreateAppletData.serializer,
        json,
      );
}

abstract class GcreateAppletData_createApplet
    implements
        Built<GcreateAppletData_createApplet,
            GcreateAppletData_createAppletBuilder>,
        GBaseApplet {
  GcreateAppletData_createApplet._();

  factory GcreateAppletData_createApplet(
          [void Function(GcreateAppletData_createAppletBuilder b) updates]) =
      _$GcreateAppletData_createApplet;

  static void _initializeBuilder(GcreateAppletData_createAppletBuilder b) =>
      b..G__typename = 'Applet';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get name;
  @override
  String? get description;
  static Serializer<GcreateAppletData_createApplet> get serializer =>
      _$gcreateAppletDataCreateAppletSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcreateAppletData_createApplet.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateAppletData_createApplet? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcreateAppletData_createApplet.serializer,
        json,
      );
}

abstract class GBaseAppletProvider {
  String get G__typename;
  int get id;
  String get name;
  String get description;
  String get img;
  String get color;
  _i2.GProviderVisibility get visibility;
  Map<String, dynamic> toJson();
}

abstract class GBaseAppletProviderData
    implements
        Built<GBaseAppletProviderData, GBaseAppletProviderDataBuilder>,
        GBaseAppletProvider {
  GBaseAppletProviderData._();

  factory GBaseAppletProviderData(
          [void Function(GBaseAppletProviderDataBuilder b) updates]) =
      _$GBaseAppletProviderData;

  static void _initializeBuilder(GBaseAppletProviderDataBuilder b) =>
      b..G__typename = 'Provider';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get img;
  @override
  String get color;
  @override
  _i2.GProviderVisibility get visibility;
  static Serializer<GBaseAppletProviderData> get serializer =>
      _$gBaseAppletProviderDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GBaseAppletProviderData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GBaseAppletProviderData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GBaseAppletProviderData.serializer,
        json,
      );
}

abstract class GBaseAppletNode {
  String get G__typename;
  int get id;
  String get actionId;
  _i2.GAppletNodeType get actionType;
  Map<String, dynamic> toJson();
}

abstract class GBaseAppletNodeData
    implements
        Built<GBaseAppletNodeData, GBaseAppletNodeDataBuilder>,
        GBaseAppletNode {
  GBaseAppletNodeData._();

  factory GBaseAppletNodeData(
          [void Function(GBaseAppletNodeDataBuilder b) updates]) =
      _$GBaseAppletNodeData;

  static void _initializeBuilder(GBaseAppletNodeDataBuilder b) =>
      b..G__typename = 'AppletNode';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get actionId;
  @override
  _i2.GAppletNodeType get actionType;
  static Serializer<GBaseAppletNodeData> get serializer =>
      _$gBaseAppletNodeDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GBaseAppletNodeData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GBaseAppletNodeData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GBaseAppletNodeData.serializer,
        json,
      );
}

abstract class GExtendedAppletNode implements GBaseAppletNode {
  @override
  String get G__typename;
  @override
  int get id;
  @override
  String get actionId;
  @override
  _i2.GAppletNodeType get actionType;
  _i2.GJSON get input;
  GExtendedAppletNode_provider get provider;
  BuiltList<GExtendedAppletNode_previous> get previous;
  BuiltList<GExtendedAppletNode_next> get next;
  @override
  Map<String, dynamic> toJson();
}

abstract class GExtendedAppletNode_provider implements GBaseAppletProvider {
  @override
  String get G__typename;
  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get img;
  @override
  String get color;
  @override
  _i2.GProviderVisibility get visibility;
  @override
  Map<String, dynamic> toJson();
}

abstract class GExtendedAppletNode_previous implements GBaseAppletNode {
  @override
  String get G__typename;
  @override
  int get id;
  @override
  String get actionId;
  @override
  _i2.GAppletNodeType get actionType;
  @override
  Map<String, dynamic> toJson();
}

abstract class GExtendedAppletNode_next implements GBaseAppletNode {
  @override
  String get G__typename;
  @override
  int get id;
  @override
  String get actionId;
  @override
  _i2.GAppletNodeType get actionType;
  @override
  Map<String, dynamic> toJson();
}

abstract class GExtendedAppletNodeData
    implements
        Built<GExtendedAppletNodeData, GExtendedAppletNodeDataBuilder>,
        GExtendedAppletNode,
        GBaseAppletNode {
  GExtendedAppletNodeData._();

  factory GExtendedAppletNodeData(
          [void Function(GExtendedAppletNodeDataBuilder b) updates]) =
      _$GExtendedAppletNodeData;

  static void _initializeBuilder(GExtendedAppletNodeDataBuilder b) =>
      b..G__typename = 'AppletNode';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get actionId;
  @override
  _i2.GAppletNodeType get actionType;
  @override
  _i2.GJSON get input;
  @override
  GExtendedAppletNodeData_provider get provider;
  @override
  BuiltList<GExtendedAppletNodeData_previous> get previous;
  @override
  BuiltList<GExtendedAppletNodeData_next> get next;
  static Serializer<GExtendedAppletNodeData> get serializer =>
      _$gExtendedAppletNodeDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExtendedAppletNodeData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExtendedAppletNodeData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExtendedAppletNodeData.serializer,
        json,
      );
}

abstract class GExtendedAppletNodeData_provider
    implements
        Built<GExtendedAppletNodeData_provider,
            GExtendedAppletNodeData_providerBuilder>,
        GExtendedAppletNode_provider,
        GBaseAppletProvider {
  GExtendedAppletNodeData_provider._();

  factory GExtendedAppletNodeData_provider(
          [void Function(GExtendedAppletNodeData_providerBuilder b) updates]) =
      _$GExtendedAppletNodeData_provider;

  static void _initializeBuilder(GExtendedAppletNodeData_providerBuilder b) =>
      b..G__typename = 'Provider';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get img;
  @override
  String get color;
  @override
  _i2.GProviderVisibility get visibility;
  static Serializer<GExtendedAppletNodeData_provider> get serializer =>
      _$gExtendedAppletNodeDataProviderSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExtendedAppletNodeData_provider.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExtendedAppletNodeData_provider? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExtendedAppletNodeData_provider.serializer,
        json,
      );
}

abstract class GExtendedAppletNodeData_previous
    implements
        Built<GExtendedAppletNodeData_previous,
            GExtendedAppletNodeData_previousBuilder>,
        GExtendedAppletNode_previous,
        GBaseAppletNode {
  GExtendedAppletNodeData_previous._();

  factory GExtendedAppletNodeData_previous(
          [void Function(GExtendedAppletNodeData_previousBuilder b) updates]) =
      _$GExtendedAppletNodeData_previous;

  static void _initializeBuilder(GExtendedAppletNodeData_previousBuilder b) =>
      b..G__typename = 'AppletNode';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get actionId;
  @override
  _i2.GAppletNodeType get actionType;
  static Serializer<GExtendedAppletNodeData_previous> get serializer =>
      _$gExtendedAppletNodeDataPreviousSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExtendedAppletNodeData_previous.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExtendedAppletNodeData_previous? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExtendedAppletNodeData_previous.serializer,
        json,
      );
}

abstract class GExtendedAppletNodeData_next
    implements
        Built<GExtendedAppletNodeData_next,
            GExtendedAppletNodeData_nextBuilder>,
        GExtendedAppletNode_next,
        GBaseAppletNode {
  GExtendedAppletNodeData_next._();

  factory GExtendedAppletNodeData_next(
          [void Function(GExtendedAppletNodeData_nextBuilder b) updates]) =
      _$GExtendedAppletNodeData_next;

  static void _initializeBuilder(GExtendedAppletNodeData_nextBuilder b) =>
      b..G__typename = 'AppletNode';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get actionId;
  @override
  _i2.GAppletNodeType get actionType;
  static Serializer<GExtendedAppletNodeData_next> get serializer =>
      _$gExtendedAppletNodeDataNextSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExtendedAppletNodeData_next.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExtendedAppletNodeData_next? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExtendedAppletNodeData_next.serializer,
        json,
      );
}

abstract class GBaseApplet {
  String get G__typename;
  int get id;
  String get name;
  String? get description;
  Map<String, dynamic> toJson();
}

abstract class GBaseAppletData
    implements Built<GBaseAppletData, GBaseAppletDataBuilder>, GBaseApplet {
  GBaseAppletData._();

  factory GBaseAppletData([void Function(GBaseAppletDataBuilder b) updates]) =
      _$GBaseAppletData;

  static void _initializeBuilder(GBaseAppletDataBuilder b) =>
      b..G__typename = 'Applet';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get name;
  @override
  String? get description;
  static Serializer<GBaseAppletData> get serializer =>
      _$gBaseAppletDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GBaseAppletData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GBaseAppletData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GBaseAppletData.serializer,
        json,
      );
}

abstract class GAppletWithNodes implements GBaseApplet {
  @override
  String get G__typename;
  @override
  int get id;
  @override
  String get name;
  @override
  String? get description;
  BuiltList<GAppletWithNodes_triggerNodes> get triggerNodes;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAppletWithNodes_triggerNodes implements GExtendedAppletNode {
  @override
  String get G__typename;
  @override
  _i2.GJSON get input;
  @override
  GAppletWithNodes_triggerNodes_provider get provider;
  @override
  BuiltList<GAppletWithNodes_triggerNodes_previous> get previous;
  @override
  BuiltList<GAppletWithNodes_triggerNodes_next> get next;
  @override
  int get id;
  @override
  String get actionId;
  @override
  _i2.GAppletNodeType get actionType;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAppletWithNodes_triggerNodes_provider
    implements GExtendedAppletNode_provider, GBaseAppletProvider {
  @override
  String get G__typename;
  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get img;
  @override
  String get color;
  @override
  _i2.GProviderVisibility get visibility;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAppletWithNodes_triggerNodes_previous
    implements GExtendedAppletNode_previous, GBaseAppletNode {
  @override
  String get G__typename;
  @override
  int get id;
  @override
  String get actionId;
  @override
  _i2.GAppletNodeType get actionType;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAppletWithNodes_triggerNodes_next
    implements GExtendedAppletNode_next, GBaseAppletNode {
  @override
  String get G__typename;
  @override
  int get id;
  @override
  String get actionId;
  @override
  _i2.GAppletNodeType get actionType;
  @override
  Map<String, dynamic> toJson();
}

abstract class GAppletWithNodesData
    implements
        Built<GAppletWithNodesData, GAppletWithNodesDataBuilder>,
        GAppletWithNodes,
        GBaseApplet {
  GAppletWithNodesData._();

  factory GAppletWithNodesData(
          [void Function(GAppletWithNodesDataBuilder b) updates]) =
      _$GAppletWithNodesData;

  static void _initializeBuilder(GAppletWithNodesDataBuilder b) =>
      b..G__typename = 'Applet';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  BuiltList<GAppletWithNodesData_triggerNodes> get triggerNodes;
  static Serializer<GAppletWithNodesData> get serializer =>
      _$gAppletWithNodesDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAppletWithNodesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAppletWithNodesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAppletWithNodesData.serializer,
        json,
      );
}

abstract class GAppletWithNodesData_triggerNodes
    implements
        Built<GAppletWithNodesData_triggerNodes,
            GAppletWithNodesData_triggerNodesBuilder>,
        GAppletWithNodes_triggerNodes,
        GExtendedAppletNode {
  GAppletWithNodesData_triggerNodes._();

  factory GAppletWithNodesData_triggerNodes(
          [void Function(GAppletWithNodesData_triggerNodesBuilder b) updates]) =
      _$GAppletWithNodesData_triggerNodes;

  static void _initializeBuilder(GAppletWithNodesData_triggerNodesBuilder b) =>
      b..G__typename = 'AppletNode';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i2.GJSON get input;
  @override
  GAppletWithNodesData_triggerNodes_provider get provider;
  @override
  BuiltList<GAppletWithNodesData_triggerNodes_previous> get previous;
  @override
  BuiltList<GAppletWithNodesData_triggerNodes_next> get next;
  @override
  int get id;
  @override
  String get actionId;
  @override
  _i2.GAppletNodeType get actionType;
  static Serializer<GAppletWithNodesData_triggerNodes> get serializer =>
      _$gAppletWithNodesDataTriggerNodesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAppletWithNodesData_triggerNodes.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAppletWithNodesData_triggerNodes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAppletWithNodesData_triggerNodes.serializer,
        json,
      );
}

abstract class GAppletWithNodesData_triggerNodes_provider
    implements
        Built<GAppletWithNodesData_triggerNodes_provider,
            GAppletWithNodesData_triggerNodes_providerBuilder>,
        GAppletWithNodes_triggerNodes_provider,
        GExtendedAppletNode_provider,
        GBaseAppletProvider {
  GAppletWithNodesData_triggerNodes_provider._();

  factory GAppletWithNodesData_triggerNodes_provider(
      [void Function(GAppletWithNodesData_triggerNodes_providerBuilder b)
          updates]) = _$GAppletWithNodesData_triggerNodes_provider;

  static void _initializeBuilder(
          GAppletWithNodesData_triggerNodes_providerBuilder b) =>
      b..G__typename = 'Provider';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get img;
  @override
  String get color;
  @override
  _i2.GProviderVisibility get visibility;
  static Serializer<GAppletWithNodesData_triggerNodes_provider>
      get serializer => _$gAppletWithNodesDataTriggerNodesProviderSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAppletWithNodesData_triggerNodes_provider.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAppletWithNodesData_triggerNodes_provider? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAppletWithNodesData_triggerNodes_provider.serializer,
        json,
      );
}

abstract class GAppletWithNodesData_triggerNodes_previous
    implements
        Built<GAppletWithNodesData_triggerNodes_previous,
            GAppletWithNodesData_triggerNodes_previousBuilder>,
        GAppletWithNodes_triggerNodes_previous,
        GExtendedAppletNode_previous,
        GBaseAppletNode {
  GAppletWithNodesData_triggerNodes_previous._();

  factory GAppletWithNodesData_triggerNodes_previous(
      [void Function(GAppletWithNodesData_triggerNodes_previousBuilder b)
          updates]) = _$GAppletWithNodesData_triggerNodes_previous;

  static void _initializeBuilder(
          GAppletWithNodesData_triggerNodes_previousBuilder b) =>
      b..G__typename = 'AppletNode';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get actionId;
  @override
  _i2.GAppletNodeType get actionType;
  static Serializer<GAppletWithNodesData_triggerNodes_previous>
      get serializer => _$gAppletWithNodesDataTriggerNodesPreviousSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAppletWithNodesData_triggerNodes_previous.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAppletWithNodesData_triggerNodes_previous? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAppletWithNodesData_triggerNodes_previous.serializer,
        json,
      );
}

abstract class GAppletWithNodesData_triggerNodes_next
    implements
        Built<GAppletWithNodesData_triggerNodes_next,
            GAppletWithNodesData_triggerNodes_nextBuilder>,
        GAppletWithNodes_triggerNodes_next,
        GExtendedAppletNode_next,
        GBaseAppletNode {
  GAppletWithNodesData_triggerNodes_next._();

  factory GAppletWithNodesData_triggerNodes_next(
      [void Function(GAppletWithNodesData_triggerNodes_nextBuilder b)
          updates]) = _$GAppletWithNodesData_triggerNodes_next;

  static void _initializeBuilder(
          GAppletWithNodesData_triggerNodes_nextBuilder b) =>
      b..G__typename = 'AppletNode';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get actionId;
  @override
  _i2.GAppletNodeType get actionType;
  static Serializer<GAppletWithNodesData_triggerNodes_next> get serializer =>
      _$gAppletWithNodesDataTriggerNodesNextSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAppletWithNodesData_triggerNodes_next.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAppletWithNodesData_triggerNodes_next? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAppletWithNodesData_triggerNodes_next.serializer,
        json,
      );
}
