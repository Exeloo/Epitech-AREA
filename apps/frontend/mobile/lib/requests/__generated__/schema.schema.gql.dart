// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gql_code_builder/src/serializers/default_scalar_serializer.dart'
    as _i2;
import 'package:mobile/requests/__generated__/serializers.gql.dart' as _i1;

part 'schema.schema.gql.g.dart';

abstract class GAppletSubscribeInput
    implements Built<GAppletSubscribeInput, GAppletSubscribeInputBuilder> {
  GAppletSubscribeInput._();

  factory GAppletSubscribeInput(
          [void Function(GAppletSubscribeInputBuilder b) updates]) =
      _$GAppletSubscribeInput;

  String get channelIdInput;
  String get channelIdOutput;
  String get guildIdInput;
  String get guildIdOutput;
  String get message;
  String get name;
  static Serializer<GAppletSubscribeInput> get serializer =>
      _$gAppletSubscribeInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAppletSubscribeInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAppletSubscribeInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAppletSubscribeInput.serializer,
        json,
      );
}

abstract class GAuthPasswordInput
    implements Built<GAuthPasswordInput, GAuthPasswordInputBuilder> {
  GAuthPasswordInput._();

  factory GAuthPasswordInput(
          [void Function(GAuthPasswordInputBuilder b) updates]) =
      _$GAuthPasswordInput;

  String get email;
  String get password;
  static Serializer<GAuthPasswordInput> get serializer =>
      _$gAuthPasswordInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAuthPasswordInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAuthPasswordInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAuthPasswordInput.serializer,
        json,
      );
}

abstract class GAuthRefreshTokenInput
    implements Built<GAuthRefreshTokenInput, GAuthRefreshTokenInputBuilder> {
  GAuthRefreshTokenInput._();

  factory GAuthRefreshTokenInput(
          [void Function(GAuthRefreshTokenInputBuilder b) updates]) =
      _$GAuthRefreshTokenInput;

  String get refreshToken;
  static Serializer<GAuthRefreshTokenInput> get serializer =>
      _$gAuthRefreshTokenInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAuthRefreshTokenInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAuthRefreshTokenInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAuthRefreshTokenInput.serializer,
        json,
      );
}

abstract class GDateTime implements Built<GDateTime, GDateTimeBuilder> {
  GDateTime._();

  factory GDateTime([String? value]) =>
      _$GDateTime((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GDateTime> get serializer =>
      _i2.DefaultScalarSerializer<GDateTime>(
          (Object serialized) => GDateTime((serialized as String?)));
}

abstract class GJSON implements Built<GJSON, GJSONBuilder> {
  GJSON._();

  factory GJSON([String? value]) =>
      _$GJSON((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GJSON> get serializer => _i2.DefaultScalarSerializer<GJSON>(
      (Object serialized) => GJSON((serialized as String?)));
}

abstract class GProviderCreateInput
    implements Built<GProviderCreateInput, GProviderCreateInputBuilder> {
  GProviderCreateInput._();

  factory GProviderCreateInput(
          [void Function(GProviderCreateInputBuilder b) updates]) =
      _$GProviderCreateInput;

  String get host;
  String get providerId;
  GProviderVisibility get visibility;
  static Serializer<GProviderCreateInput> get serializer =>
      _$gProviderCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProviderCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProviderCreateInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProviderCreateInput.serializer,
        json,
      );
}

class GProviderVisibility extends EnumClass {
  const GProviderVisibility._(String name) : super(name);

  static const GProviderVisibility PRIVATE = _$gProviderVisibilityPRIVATE;

  static const GProviderVisibility PUBLIC = _$gProviderVisibilityPUBLIC;

  static const GProviderVisibility UNLISTED = _$gProviderVisibilityUNLISTED;

  static Serializer<GProviderVisibility> get serializer =>
      _$gProviderVisibilitySerializer;

  static BuiltSet<GProviderVisibility> get values =>
      _$gProviderVisibilityValues;

  static GProviderVisibility valueOf(String name) =>
      _$gProviderVisibilityValueOf(name);
}

abstract class GUserCreateInput
    implements Built<GUserCreateInput, GUserCreateInputBuilder> {
  GUserCreateInput._();

  factory GUserCreateInput([void Function(GUserCreateInputBuilder b) updates]) =
      _$GUserCreateInput;

  String? get description;
  String get email;
  String get firstName;
  String get lastName;
  String? get password;
  String? get pronoun;
  String get username;
  static Serializer<GUserCreateInput> get serializer =>
      _$gUserCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserCreateInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserCreateInput.serializer,
        json,
      );
}

abstract class GUserRegisterInput
    implements Built<GUserRegisterInput, GUserRegisterInputBuilder> {
  GUserRegisterInput._();

  factory GUserRegisterInput(
          [void Function(GUserRegisterInputBuilder b) updates]) =
      _$GUserRegisterInput;

  String get email;
  String get firstName;
  String get lastName;
  String? get password;
  String get username;
  static Serializer<GUserRegisterInput> get serializer =>
      _$gUserRegisterInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserRegisterInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserRegisterInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserRegisterInput.serializer,
        json,
      );
}

const Map<String, Set<String>> possibleTypesMap = {};
