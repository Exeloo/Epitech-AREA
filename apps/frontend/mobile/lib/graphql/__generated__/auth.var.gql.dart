// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mobile/graphql/__generated__/schema.schema.gql.dart' as _i1;
import 'package:mobile/graphql/__generated__/serializers.gql.dart' as _i2;

part 'auth.var.gql.g.dart';

abstract class GloginVars implements Built<GloginVars, GloginVarsBuilder> {
  GloginVars._();

  factory GloginVars([void Function(GloginVarsBuilder b) updates]) =
      _$GloginVars;

  _i1.GAuthPasswordInput get data;
  static Serializer<GloginVars> get serializer => _$gloginVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GloginVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GloginVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GloginVars.serializer,
        json,
      );
}

abstract class GrefreshTokenVars
    implements Built<GrefreshTokenVars, GrefreshTokenVarsBuilder> {
  GrefreshTokenVars._();

  factory GrefreshTokenVars(
          [void Function(GrefreshTokenVarsBuilder b) updates]) =
      _$GrefreshTokenVars;

  _i1.GAuthRefreshTokenInput get data;
  static Serializer<GrefreshTokenVars> get serializer =>
      _$grefreshTokenVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GrefreshTokenVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GrefreshTokenVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GrefreshTokenVars.serializer,
        json,
      );
}

abstract class GTokenFieldsVars
    implements Built<GTokenFieldsVars, GTokenFieldsVarsBuilder> {
  GTokenFieldsVars._();

  factory GTokenFieldsVars([void Function(GTokenFieldsVarsBuilder b) updates]) =
      _$GTokenFieldsVars;

  static Serializer<GTokenFieldsVars> get serializer =>
      _$gTokenFieldsVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTokenFieldsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTokenFieldsVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTokenFieldsVars.serializer,
        json,
      );
}
