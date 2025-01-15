// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:aether/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:aether/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth.data.gql.g.dart';

abstract class GloginData implements Built<GloginData, GloginDataBuilder> {
  GloginData._();

  factory GloginData([void Function(GloginDataBuilder b) updates]) =
      _$GloginData;

  static void _initializeBuilder(GloginDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GloginData_login get login;
  static Serializer<GloginData> get serializer => _$gloginDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GloginData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GloginData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GloginData.serializer,
        json,
      );
}

abstract class GloginData_login
    implements Built<GloginData_login, GloginData_loginBuilder>, GTokenFields {
  GloginData_login._();

  factory GloginData_login([void Function(GloginData_loginBuilder b) updates]) =
      _$GloginData_login;

  static void _initializeBuilder(GloginData_loginBuilder b) =>
      b..G__typename = 'AuthTokenResponse';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get token;
  @override
  String get refreshToken;
  @override
  _i2.GDateTime get tokenExpiresAt;
  static Serializer<GloginData_login> get serializer =>
      _$gloginDataLoginSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GloginData_login.serializer,
        this,
      ) as Map<String, dynamic>);

  static GloginData_login? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GloginData_login.serializer,
        json,
      );
}

abstract class GrefreshTokenData
    implements Built<GrefreshTokenData, GrefreshTokenDataBuilder> {
  GrefreshTokenData._();

  factory GrefreshTokenData(
          [void Function(GrefreshTokenDataBuilder b) updates]) =
      _$GrefreshTokenData;

  static void _initializeBuilder(GrefreshTokenDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GrefreshTokenData_refreshToken get refreshToken;
  static Serializer<GrefreshTokenData> get serializer =>
      _$grefreshTokenDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GrefreshTokenData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GrefreshTokenData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GrefreshTokenData.serializer,
        json,
      );
}

abstract class GrefreshTokenData_refreshToken
    implements
        Built<GrefreshTokenData_refreshToken,
            GrefreshTokenData_refreshTokenBuilder>,
        GTokenFields {
  GrefreshTokenData_refreshToken._();

  factory GrefreshTokenData_refreshToken(
          [void Function(GrefreshTokenData_refreshTokenBuilder b) updates]) =
      _$GrefreshTokenData_refreshToken;

  static void _initializeBuilder(GrefreshTokenData_refreshTokenBuilder b) =>
      b..G__typename = 'AuthTokenResponse';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get token;
  @override
  String get refreshToken;
  @override
  _i2.GDateTime get tokenExpiresAt;
  static Serializer<GrefreshTokenData_refreshToken> get serializer =>
      _$grefreshTokenDataRefreshTokenSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GrefreshTokenData_refreshToken.serializer,
        this,
      ) as Map<String, dynamic>);

  static GrefreshTokenData_refreshToken? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GrefreshTokenData_refreshToken.serializer,
        json,
      );
}

abstract class GTokenFields {
  String get G__typename;
  String get token;
  String get refreshToken;
  _i2.GDateTime get tokenExpiresAt;
  Map<String, dynamic> toJson();
}

abstract class GTokenFieldsData
    implements Built<GTokenFieldsData, GTokenFieldsDataBuilder>, GTokenFields {
  GTokenFieldsData._();

  factory GTokenFieldsData([void Function(GTokenFieldsDataBuilder b) updates]) =
      _$GTokenFieldsData;

  static void _initializeBuilder(GTokenFieldsDataBuilder b) =>
      b..G__typename = 'AuthTokenResponse';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get token;
  @override
  String get refreshToken;
  @override
  _i2.GDateTime get tokenExpiresAt;
  static Serializer<GTokenFieldsData> get serializer =>
      _$gTokenFieldsDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTokenFieldsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTokenFieldsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTokenFieldsData.serializer,
        json,
      );
}
