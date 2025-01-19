// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:aether/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gql_code_builder/src/serializers/default_scalar_serializer.dart'
    as _i2;

part 'schema.schema.gql.g.dart';

abstract class GAppletCreateInput
    implements Built<GAppletCreateInput, GAppletCreateInputBuilder> {
  GAppletCreateInput._();

  factory GAppletCreateInput(
          [void Function(GAppletCreateInputBuilder b) updates]) =
      _$GAppletCreateInput;

  String? get description;
  String get name;
  BuiltList<GAppletNodeCreateInput> get triggerNodes;
  static Serializer<GAppletCreateInput> get serializer =>
      _$gAppletCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAppletCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAppletCreateInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAppletCreateInput.serializer,
        json,
      );
}

abstract class GAppletNodeCreateInput
    implements Built<GAppletNodeCreateInput, GAppletNodeCreateInputBuilder> {
  GAppletNodeCreateInput._();

  factory GAppletNodeCreateInput(
          [void Function(GAppletNodeCreateInputBuilder b) updates]) =
      _$GAppletNodeCreateInput;

  String get actionId;
  GJSON get input;
  BuiltList<GAppletNodeCreateInput> get next;
  int get providerId;
  static Serializer<GAppletNodeCreateInput> get serializer =>
      _$gAppletNodeCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAppletNodeCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAppletNodeCreateInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAppletNodeCreateInput.serializer,
        json,
      );
}

class GAppletNodeType extends EnumClass {
  const GAppletNodeType._(String name) : super(name);

  static const GAppletNodeType ACTION = _$gAppletNodeTypeACTION;

  static const GAppletNodeType TRIGGER = _$gAppletNodeTypeTRIGGER;

  static Serializer<GAppletNodeType> get serializer =>
      _$gAppletNodeTypeSerializer;

  static BuiltSet<GAppletNodeType> get values => _$gAppletNodeTypeValues;

  static GAppletNodeType valueOf(String name) => _$gAppletNodeTypeValueOf(name);
}

abstract class GAppletNodeUpdateInput
    implements Built<GAppletNodeUpdateInput, GAppletNodeUpdateInputBuilder> {
  GAppletNodeUpdateInput._();

  factory GAppletNodeUpdateInput(
          [void Function(GAppletNodeUpdateInputBuilder b) updates]) =
      _$GAppletNodeUpdateInput;

  String get actionId;
  GJSON get input;
  BuiltList<GAppletNodeUpdateInput> get next;
  int get providerId;
  static Serializer<GAppletNodeUpdateInput> get serializer =>
      _$gAppletNodeUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAppletNodeUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAppletNodeUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAppletNodeUpdateInput.serializer,
        json,
      );
}

abstract class GAppletUpdateInput
    implements Built<GAppletUpdateInput, GAppletUpdateInputBuilder> {
  GAppletUpdateInput._();

  factory GAppletUpdateInput(
          [void Function(GAppletUpdateInputBuilder b) updates]) =
      _$GAppletUpdateInput;

  String? get description;
  String get name;
  BuiltList<GAppletNodeUpdateInput> get triggerNodes;
  static Serializer<GAppletUpdateInput> get serializer =>
      _$gAppletUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAppletUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAppletUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAppletUpdateInput.serializer,
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

abstract class GUserUpdateInput
    implements Built<GUserUpdateInput, GUserUpdateInputBuilder> {
  GUserUpdateInput._();

  factory GUserUpdateInput([void Function(GUserUpdateInputBuilder b) updates]) =
      _$GUserUpdateInput;

  String? get description;
  String? get email;
  String? get firstName;
  String? get lastName;
  String? get pronoun;
  String? get username;
  static Serializer<GUserUpdateInput> get serializer =>
      _$gUserUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserUpdateInput.serializer,
        json,
      );
}

const Map<String, Set<String>> possibleTypesMap = {};
