// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mobile/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:mobile/graphql/__generated__/serializers.gql.dart' as _i1;

part 'provider.data.gql.g.dart';

abstract class GgetAllProvidersData
    implements Built<GgetAllProvidersData, GgetAllProvidersDataBuilder> {
  GgetAllProvidersData._();

  factory GgetAllProvidersData(
          [void Function(GgetAllProvidersDataBuilder b) updates]) =
      _$GgetAllProvidersData;

  static void _initializeBuilder(GgetAllProvidersDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GgetAllProvidersData_getAllProviders> get getAllProviders;
  static Serializer<GgetAllProvidersData> get serializer =>
      _$ggetAllProvidersDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllProvidersData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllProvidersData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllProvidersData.serializer,
        json,
      );
}

abstract class GgetAllProvidersData_getAllProviders
    implements
        Built<GgetAllProvidersData_getAllProviders,
            GgetAllProvidersData_getAllProvidersBuilder>,
        GBaseProvider {
  GgetAllProvidersData_getAllProviders._();

  factory GgetAllProvidersData_getAllProviders(
      [void Function(GgetAllProvidersData_getAllProvidersBuilder b)
          updates]) = _$GgetAllProvidersData_getAllProviders;

  static void _initializeBuilder(
          GgetAllProvidersData_getAllProvidersBuilder b) =>
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
  static Serializer<GgetAllProvidersData_getAllProviders> get serializer =>
      _$ggetAllProvidersDataGetAllProvidersSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllProvidersData_getAllProviders.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllProvidersData_getAllProviders? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllProvidersData_getAllProviders.serializer,
        json,
      );
}

abstract class GgetProviderByIdData
    implements Built<GgetProviderByIdData, GgetProviderByIdDataBuilder> {
  GgetProviderByIdData._();

  factory GgetProviderByIdData(
          [void Function(GgetProviderByIdDataBuilder b) updates]) =
      _$GgetProviderByIdData;

  static void _initializeBuilder(GgetProviderByIdDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetProviderByIdData_getProviderById get getProviderById;
  static Serializer<GgetProviderByIdData> get serializer =>
      _$ggetProviderByIdDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetProviderByIdData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetProviderByIdData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetProviderByIdData.serializer,
        json,
      );
}

abstract class GgetProviderByIdData_getProviderById
    implements
        Built<GgetProviderByIdData_getProviderById,
            GgetProviderByIdData_getProviderByIdBuilder>,
        GProviderWithManifest {
  GgetProviderByIdData_getProviderById._();

  factory GgetProviderByIdData_getProviderById(
      [void Function(GgetProviderByIdData_getProviderByIdBuilder b)
          updates]) = _$GgetProviderByIdData_getProviderById;

  static void _initializeBuilder(
          GgetProviderByIdData_getProviderByIdBuilder b) =>
      b..G__typename = 'Provider';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GgetProviderByIdData_getProviderById_manifest get manifest;
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
  static Serializer<GgetProviderByIdData_getProviderById> get serializer =>
      _$ggetProviderByIdDataGetProviderByIdSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetProviderByIdData_getProviderById.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetProviderByIdData_getProviderById? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetProviderByIdData_getProviderById.serializer,
        json,
      );
}

abstract class GgetProviderByIdData_getProviderById_manifest
    implements
        Built<GgetProviderByIdData_getProviderById_manifest,
            GgetProviderByIdData_getProviderById_manifestBuilder>,
        GProviderWithManifest_manifest {
  GgetProviderByIdData_getProviderById_manifest._();

  factory GgetProviderByIdData_getProviderById_manifest(
      [void Function(GgetProviderByIdData_getProviderById_manifestBuilder b)
          updates]) = _$GgetProviderByIdData_getProviderById_manifest;

  static void _initializeBuilder(
          GgetProviderByIdData_getProviderById_manifestBuilder b) =>
      b..G__typename = 'ProviderManifest';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GgetProviderByIdData_getProviderById_manifest_actions> get actions;
  @override
  BuiltList<GgetProviderByIdData_getProviderById_manifest_triggers>
      get triggers;
  static Serializer<GgetProviderByIdData_getProviderById_manifest>
      get serializer => _$ggetProviderByIdDataGetProviderByIdManifestSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetProviderByIdData_getProviderById_manifest.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetProviderByIdData_getProviderById_manifest? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetProviderByIdData_getProviderById_manifest.serializer,
        json,
      );
}

abstract class GgetProviderByIdData_getProviderById_manifest_actions
    implements
        Built<GgetProviderByIdData_getProviderById_manifest_actions,
            GgetProviderByIdData_getProviderById_manifest_actionsBuilder>,
        GProviderWithManifest_manifest_actions,
        GProviderManifestAction {
  GgetProviderByIdData_getProviderById_manifest_actions._();

  factory GgetProviderByIdData_getProviderById_manifest_actions(
      [void Function(
              GgetProviderByIdData_getProviderById_manifest_actionsBuilder b)
          updates]) = _$GgetProviderByIdData_getProviderById_manifest_actions;

  static void _initializeBuilder(
          GgetProviderByIdData_getProviderById_manifest_actionsBuilder b) =>
      b..G__typename = 'ProviderManifestAction';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get img;
  @override
  String get color;
  @override
  _i2.GJSON get input;
  @override
  _i2.GJSON get output;
  static Serializer<GgetProviderByIdData_getProviderById_manifest_actions>
      get serializer =>
          _$ggetProviderByIdDataGetProviderByIdManifestActionsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetProviderByIdData_getProviderById_manifest_actions.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetProviderByIdData_getProviderById_manifest_actions? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetProviderByIdData_getProviderById_manifest_actions.serializer,
        json,
      );
}

abstract class GgetProviderByIdData_getProviderById_manifest_triggers
    implements
        Built<GgetProviderByIdData_getProviderById_manifest_triggers,
            GgetProviderByIdData_getProviderById_manifest_triggersBuilder>,
        GProviderWithManifest_manifest_triggers,
        GProviderManifestTrigger {
  GgetProviderByIdData_getProviderById_manifest_triggers._();

  factory GgetProviderByIdData_getProviderById_manifest_triggers(
      [void Function(
              GgetProviderByIdData_getProviderById_manifest_triggersBuilder b)
          updates]) = _$GgetProviderByIdData_getProviderById_manifest_triggers;

  static void _initializeBuilder(
          GgetProviderByIdData_getProviderById_manifest_triggersBuilder b) =>
      b..G__typename = 'ProviderManifestTrigger';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get img;
  @override
  String get color;
  @override
  _i2.GJSON get input;
  @override
  _i2.GJSON get output;
  static Serializer<GgetProviderByIdData_getProviderById_manifest_triggers>
      get serializer =>
          _$ggetProviderByIdDataGetProviderByIdManifestTriggersSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetProviderByIdData_getProviderById_manifest_triggers.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetProviderByIdData_getProviderById_manifest_triggers? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetProviderByIdData_getProviderById_manifest_triggers.serializer,
        json,
      );
}

abstract class GProviderManifestAction {
  String get G__typename;
  String get id;
  String get name;
  String get description;
  String get img;
  String get color;
  _i2.GJSON get input;
  _i2.GJSON get output;
  Map<String, dynamic> toJson();
}

abstract class GProviderManifestActionData
    implements
        Built<GProviderManifestActionData, GProviderManifestActionDataBuilder>,
        GProviderManifestAction {
  GProviderManifestActionData._();

  factory GProviderManifestActionData(
          [void Function(GProviderManifestActionDataBuilder b) updates]) =
      _$GProviderManifestActionData;

  static void _initializeBuilder(GProviderManifestActionDataBuilder b) =>
      b..G__typename = 'ProviderManifestAction';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get img;
  @override
  String get color;
  @override
  _i2.GJSON get input;
  @override
  _i2.GJSON get output;
  static Serializer<GProviderManifestActionData> get serializer =>
      _$gProviderManifestActionDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProviderManifestActionData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProviderManifestActionData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProviderManifestActionData.serializer,
        json,
      );
}

abstract class GProviderManifestTrigger {
  String get G__typename;
  String get id;
  String get name;
  String get description;
  String get img;
  String get color;
  _i2.GJSON get input;
  _i2.GJSON get output;
  Map<String, dynamic> toJson();
}

abstract class GProviderManifestTriggerData
    implements
        Built<GProviderManifestTriggerData,
            GProviderManifestTriggerDataBuilder>,
        GProviderManifestTrigger {
  GProviderManifestTriggerData._();

  factory GProviderManifestTriggerData(
          [void Function(GProviderManifestTriggerDataBuilder b) updates]) =
      _$GProviderManifestTriggerData;

  static void _initializeBuilder(GProviderManifestTriggerDataBuilder b) =>
      b..G__typename = 'ProviderManifestTrigger';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get img;
  @override
  String get color;
  @override
  _i2.GJSON get input;
  @override
  _i2.GJSON get output;
  static Serializer<GProviderManifestTriggerData> get serializer =>
      _$gProviderManifestTriggerDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProviderManifestTriggerData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProviderManifestTriggerData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProviderManifestTriggerData.serializer,
        json,
      );
}

abstract class GBaseProvider {
  String get G__typename;
  int get id;
  String get name;
  String get description;
  String get img;
  String get color;
  _i2.GProviderVisibility get visibility;
  Map<String, dynamic> toJson();
}

abstract class GBaseProviderData
    implements
        Built<GBaseProviderData, GBaseProviderDataBuilder>,
        GBaseProvider {
  GBaseProviderData._();

  factory GBaseProviderData(
          [void Function(GBaseProviderDataBuilder b) updates]) =
      _$GBaseProviderData;

  static void _initializeBuilder(GBaseProviderDataBuilder b) =>
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
  static Serializer<GBaseProviderData> get serializer =>
      _$gBaseProviderDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GBaseProviderData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GBaseProviderData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GBaseProviderData.serializer,
        json,
      );
}

abstract class GProviderWithManifest implements GBaseProvider {
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
  GProviderWithManifest_manifest get manifest;
  @override
  Map<String, dynamic> toJson();
}

abstract class GProviderWithManifest_manifest {
  String get G__typename;
  BuiltList<GProviderWithManifest_manifest_actions> get actions;
  BuiltList<GProviderWithManifest_manifest_triggers> get triggers;
  Map<String, dynamic> toJson();
}

abstract class GProviderWithManifest_manifest_actions
    implements GProviderManifestAction {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get img;
  @override
  String get color;
  @override
  _i2.GJSON get input;
  @override
  _i2.GJSON get output;
  @override
  Map<String, dynamic> toJson();
}

abstract class GProviderWithManifest_manifest_triggers
    implements GProviderManifestTrigger {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get img;
  @override
  String get color;
  @override
  _i2.GJSON get input;
  @override
  _i2.GJSON get output;
  @override
  Map<String, dynamic> toJson();
}

abstract class GProviderWithManifestData
    implements
        Built<GProviderWithManifestData, GProviderWithManifestDataBuilder>,
        GProviderWithManifest,
        GBaseProvider {
  GProviderWithManifestData._();

  factory GProviderWithManifestData(
          [void Function(GProviderWithManifestDataBuilder b) updates]) =
      _$GProviderWithManifestData;

  static void _initializeBuilder(GProviderWithManifestDataBuilder b) =>
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
  @override
  GProviderWithManifestData_manifest get manifest;
  static Serializer<GProviderWithManifestData> get serializer =>
      _$gProviderWithManifestDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProviderWithManifestData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProviderWithManifestData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProviderWithManifestData.serializer,
        json,
      );
}

abstract class GProviderWithManifestData_manifest
    implements
        Built<GProviderWithManifestData_manifest,
            GProviderWithManifestData_manifestBuilder>,
        GProviderWithManifest_manifest {
  GProviderWithManifestData_manifest._();

  factory GProviderWithManifestData_manifest(
      [void Function(GProviderWithManifestData_manifestBuilder b)
          updates]) = _$GProviderWithManifestData_manifest;

  static void _initializeBuilder(GProviderWithManifestData_manifestBuilder b) =>
      b..G__typename = 'ProviderManifest';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GProviderWithManifestData_manifest_actions> get actions;
  @override
  BuiltList<GProviderWithManifestData_manifest_triggers> get triggers;
  static Serializer<GProviderWithManifestData_manifest> get serializer =>
      _$gProviderWithManifestDataManifestSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProviderWithManifestData_manifest.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProviderWithManifestData_manifest? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProviderWithManifestData_manifest.serializer,
        json,
      );
}

abstract class GProviderWithManifestData_manifest_actions
    implements
        Built<GProviderWithManifestData_manifest_actions,
            GProviderWithManifestData_manifest_actionsBuilder>,
        GProviderWithManifest_manifest_actions,
        GProviderManifestAction {
  GProviderWithManifestData_manifest_actions._();

  factory GProviderWithManifestData_manifest_actions(
      [void Function(GProviderWithManifestData_manifest_actionsBuilder b)
          updates]) = _$GProviderWithManifestData_manifest_actions;

  static void _initializeBuilder(
          GProviderWithManifestData_manifest_actionsBuilder b) =>
      b..G__typename = 'ProviderManifestAction';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get img;
  @override
  String get color;
  @override
  _i2.GJSON get input;
  @override
  _i2.GJSON get output;
  static Serializer<GProviderWithManifestData_manifest_actions>
      get serializer => _$gProviderWithManifestDataManifestActionsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProviderWithManifestData_manifest_actions.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProviderWithManifestData_manifest_actions? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProviderWithManifestData_manifest_actions.serializer,
        json,
      );
}

abstract class GProviderWithManifestData_manifest_triggers
    implements
        Built<GProviderWithManifestData_manifest_triggers,
            GProviderWithManifestData_manifest_triggersBuilder>,
        GProviderWithManifest_manifest_triggers,
        GProviderManifestTrigger {
  GProviderWithManifestData_manifest_triggers._();

  factory GProviderWithManifestData_manifest_triggers(
      [void Function(GProviderWithManifestData_manifest_triggersBuilder b)
          updates]) = _$GProviderWithManifestData_manifest_triggers;

  static void _initializeBuilder(
          GProviderWithManifestData_manifest_triggersBuilder b) =>
      b..G__typename = 'ProviderManifestTrigger';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get img;
  @override
  String get color;
  @override
  _i2.GJSON get input;
  @override
  _i2.GJSON get output;
  static Serializer<GProviderWithManifestData_manifest_triggers>
      get serializer => _$gProviderWithManifestDataManifestTriggersSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProviderWithManifestData_manifest_triggers.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProviderWithManifestData_manifest_triggers? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProviderWithManifestData_manifest_triggers.serializer,
        json,
      );
}
