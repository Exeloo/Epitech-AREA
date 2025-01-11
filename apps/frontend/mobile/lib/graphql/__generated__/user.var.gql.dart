// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:aether/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:aether/graphql/__generated__/serializers.gql.dart' as _i1;
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user.var.gql.g.dart';

abstract class GgetMeVars implements Built<GgetMeVars, GgetMeVarsBuilder> {
  GgetMeVars._();

  factory GgetMeVars([void Function(GgetMeVarsBuilder b) updates]) =
      _$GgetMeVars;

  static Serializer<GgetMeVars> get serializer => _$ggetMeVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetMeVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetMeVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetMeVars.serializer,
        json,
      );
}

abstract class GupdateMeVars
    implements Built<GupdateMeVars, GupdateMeVarsBuilder> {
  GupdateMeVars._();

  factory GupdateMeVars([void Function(GupdateMeVarsBuilder b) updates]) =
      _$GupdateMeVars;

  _i2.GUserUpdateInput get data;
  static Serializer<GupdateMeVars> get serializer => _$gupdateMeVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GupdateMeVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GupdateMeVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GupdateMeVars.serializer,
        json,
      );
}

abstract class GregisterVars
    implements Built<GregisterVars, GregisterVarsBuilder> {
  GregisterVars._();

  factory GregisterVars([void Function(GregisterVarsBuilder b) updates]) =
      _$GregisterVars;

  _i2.GUserRegisterInput get data;
  static Serializer<GregisterVars> get serializer => _$gregisterVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GregisterVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GregisterVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GregisterVars.serializer,
        json,
      );
}

abstract class GUserVars implements Built<GUserVars, GUserVarsBuilder> {
  GUserVars._();

  factory GUserVars([void Function(GUserVarsBuilder b) updates]) = _$GUserVars;

  static Serializer<GUserVars> get serializer => _$gUserVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserVars.serializer,
        json,
      );
}
