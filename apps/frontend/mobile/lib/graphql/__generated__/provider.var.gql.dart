// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:aether/graphql/__generated__/serializers.gql.dart' as _i1;
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'provider.var.gql.g.dart';

abstract class GgetAllProvidersVars
    implements Built<GgetAllProvidersVars, GgetAllProvidersVarsBuilder> {
  GgetAllProvidersVars._();

  factory GgetAllProvidersVars(
          [void Function(GgetAllProvidersVarsBuilder b) updates]) =
      _$GgetAllProvidersVars;

  static Serializer<GgetAllProvidersVars> get serializer =>
      _$ggetAllProvidersVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllProvidersVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllProvidersVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllProvidersVars.serializer,
        json,
      );
}

abstract class GgetProviderByIdVars
    implements Built<GgetProviderByIdVars, GgetProviderByIdVarsBuilder> {
  GgetProviderByIdVars._();

  factory GgetProviderByIdVars(
          [void Function(GgetProviderByIdVarsBuilder b) updates]) =
      _$GgetProviderByIdVars;

  int get id;
  static Serializer<GgetProviderByIdVars> get serializer =>
      _$ggetProviderByIdVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetProviderByIdVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetProviderByIdVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetProviderByIdVars.serializer,
        json,
      );
}

abstract class GProviderManifestActionVars
    implements
        Built<GProviderManifestActionVars, GProviderManifestActionVarsBuilder> {
  GProviderManifestActionVars._();

  factory GProviderManifestActionVars(
          [void Function(GProviderManifestActionVarsBuilder b) updates]) =
      _$GProviderManifestActionVars;

  static Serializer<GProviderManifestActionVars> get serializer =>
      _$gProviderManifestActionVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProviderManifestActionVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProviderManifestActionVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProviderManifestActionVars.serializer,
        json,
      );
}

abstract class GProviderManifestTriggerVars
    implements
        Built<GProviderManifestTriggerVars,
            GProviderManifestTriggerVarsBuilder> {
  GProviderManifestTriggerVars._();

  factory GProviderManifestTriggerVars(
          [void Function(GProviderManifestTriggerVarsBuilder b) updates]) =
      _$GProviderManifestTriggerVars;

  static Serializer<GProviderManifestTriggerVars> get serializer =>
      _$gProviderManifestTriggerVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProviderManifestTriggerVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProviderManifestTriggerVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProviderManifestTriggerVars.serializer,
        json,
      );
}

abstract class GBaseProviderVars
    implements Built<GBaseProviderVars, GBaseProviderVarsBuilder> {
  GBaseProviderVars._();

  factory GBaseProviderVars(
          [void Function(GBaseProviderVarsBuilder b) updates]) =
      _$GBaseProviderVars;

  static Serializer<GBaseProviderVars> get serializer =>
      _$gBaseProviderVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GBaseProviderVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GBaseProviderVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GBaseProviderVars.serializer,
        json,
      );
}

abstract class GProviderWithManifestVars
    implements
        Built<GProviderWithManifestVars, GProviderWithManifestVarsBuilder> {
  GProviderWithManifestVars._();

  factory GProviderWithManifestVars(
          [void Function(GProviderWithManifestVarsBuilder b) updates]) =
      _$GProviderWithManifestVars;

  static Serializer<GProviderWithManifestVars> get serializer =>
      _$gProviderWithManifestVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProviderWithManifestVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProviderWithManifestVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProviderWithManifestVars.serializer,
        json,
      );
}
