// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mobile/graphql/__generated__/serializers.gql.dart' as _i1;

part 'user.data.gql.g.dart';

abstract class GgetMeData implements Built<GgetMeData, GgetMeDataBuilder> {
  GgetMeData._();

  factory GgetMeData([void Function(GgetMeDataBuilder b) updates]) =
      _$GgetMeData;

  static void _initializeBuilder(GgetMeDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetMeData_getMe get getMe;
  static Serializer<GgetMeData> get serializer => _$ggetMeDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetMeData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetMeData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetMeData.serializer,
        json,
      );
}

abstract class GgetMeData_getMe
    implements Built<GgetMeData_getMe, GgetMeData_getMeBuilder>, GUser {
  GgetMeData_getMe._();

  factory GgetMeData_getMe([void Function(GgetMeData_getMeBuilder b) updates]) =
      _$GgetMeData_getMe;

  static void _initializeBuilder(GgetMeData_getMeBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get username;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String? get pronoun;
  @override
  String? get picture;
  @override
  String? get description;
  static Serializer<GgetMeData_getMe> get serializer =>
      _$ggetMeDataGetMeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetMeData_getMe.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetMeData_getMe? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetMeData_getMe.serializer,
        json,
      );
}

abstract class GregisterData
    implements Built<GregisterData, GregisterDataBuilder> {
  GregisterData._();

  factory GregisterData([void Function(GregisterDataBuilder b) updates]) =
      _$GregisterData;

  static void _initializeBuilder(GregisterDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GregisterData_register get register;
  static Serializer<GregisterData> get serializer => _$gregisterDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GregisterData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GregisterData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GregisterData.serializer,
        json,
      );
}

abstract class GregisterData_register
    implements
        Built<GregisterData_register, GregisterData_registerBuilder>,
        GUser {
  GregisterData_register._();

  factory GregisterData_register(
          [void Function(GregisterData_registerBuilder b) updates]) =
      _$GregisterData_register;

  static void _initializeBuilder(GregisterData_registerBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get username;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String? get pronoun;
  @override
  String? get picture;
  @override
  String? get description;
  static Serializer<GregisterData_register> get serializer =>
      _$gregisterDataRegisterSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GregisterData_register.serializer,
        this,
      ) as Map<String, dynamic>);

  static GregisterData_register? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GregisterData_register.serializer,
        json,
      );
}

abstract class GUser {
  String get G__typename;
  int get id;
  String get username;
  String get firstName;
  String get lastName;
  String? get pronoun;
  String? get picture;
  String? get description;
  Map<String, dynamic> toJson();
}

abstract class GUserData implements Built<GUserData, GUserDataBuilder>, GUser {
  GUserData._();

  factory GUserData([void Function(GUserDataBuilder b) updates]) = _$GUserData;

  static void _initializeBuilder(GUserDataBuilder b) => b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get username;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String? get pronoun;
  @override
  String? get picture;
  @override
  String? get description;
  static Serializer<GUserData> get serializer => _$gUserDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserData.serializer,
        json,
      );
}
