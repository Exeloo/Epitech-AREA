// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GloginData> _$gloginDataSerializer = new _$GloginDataSerializer();
Serializer<GloginData_login> _$gloginDataLoginSerializer =
    new _$GloginData_loginSerializer();
Serializer<GrefreshTokenData> _$grefreshTokenDataSerializer =
    new _$GrefreshTokenDataSerializer();
Serializer<GrefreshTokenData_refreshToken>
    _$grefreshTokenDataRefreshTokenSerializer =
    new _$GrefreshTokenData_refreshTokenSerializer();
Serializer<GTokenFieldsData> _$gTokenFieldsDataSerializer =
    new _$GTokenFieldsDataSerializer();

class _$GloginDataSerializer implements StructuredSerializer<GloginData> {
  @override
  final Iterable<Type> types = const [GloginData, _$GloginData];
  @override
  final String wireName = 'GloginData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GloginData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'login',
      serializers.serialize(object.login,
          specifiedType: const FullType(GloginData_login)),
    ];

    return result;
  }

  @override
  GloginData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GloginDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'login':
          result.login.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GloginData_login))!
              as GloginData_login);
          break;
      }
    }

    return result.build();
  }
}

class _$GloginData_loginSerializer
    implements StructuredSerializer<GloginData_login> {
  @override
  final Iterable<Type> types = const [GloginData_login, _$GloginData_login];
  @override
  final String wireName = 'GloginData_login';

  @override
  Iterable<Object?> serialize(Serializers serializers, GloginData_login object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
      'refreshToken',
      serializers.serialize(object.refreshToken,
          specifiedType: const FullType(String)),
      'tokenExpiresAt',
      serializers.serialize(object.tokenExpiresAt,
          specifiedType: const FullType(_i2.GDateTime)),
    ];

    return result;
  }

  @override
  GloginData_login deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GloginData_loginBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'refreshToken':
          result.refreshToken = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'tokenExpiresAt':
          result.tokenExpiresAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
      }
    }

    return result.build();
  }
}

class _$GrefreshTokenDataSerializer
    implements StructuredSerializer<GrefreshTokenData> {
  @override
  final Iterable<Type> types = const [GrefreshTokenData, _$GrefreshTokenData];
  @override
  final String wireName = 'GrefreshTokenData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GrefreshTokenData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'refreshToken',
      serializers.serialize(object.refreshToken,
          specifiedType: const FullType(GrefreshTokenData_refreshToken)),
    ];

    return result;
  }

  @override
  GrefreshTokenData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GrefreshTokenDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'refreshToken':
          result.refreshToken.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GrefreshTokenData_refreshToken))!
              as GrefreshTokenData_refreshToken);
          break;
      }
    }

    return result.build();
  }
}

class _$GrefreshTokenData_refreshTokenSerializer
    implements StructuredSerializer<GrefreshTokenData_refreshToken> {
  @override
  final Iterable<Type> types = const [
    GrefreshTokenData_refreshToken,
    _$GrefreshTokenData_refreshToken
  ];
  @override
  final String wireName = 'GrefreshTokenData_refreshToken';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GrefreshTokenData_refreshToken object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
      'refreshToken',
      serializers.serialize(object.refreshToken,
          specifiedType: const FullType(String)),
      'tokenExpiresAt',
      serializers.serialize(object.tokenExpiresAt,
          specifiedType: const FullType(_i2.GDateTime)),
    ];

    return result;
  }

  @override
  GrefreshTokenData_refreshToken deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GrefreshTokenData_refreshTokenBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'refreshToken':
          result.refreshToken = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'tokenExpiresAt':
          result.tokenExpiresAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
      }
    }

    return result.build();
  }
}

class _$GTokenFieldsDataSerializer
    implements StructuredSerializer<GTokenFieldsData> {
  @override
  final Iterable<Type> types = const [GTokenFieldsData, _$GTokenFieldsData];
  @override
  final String wireName = 'GTokenFieldsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GTokenFieldsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
      'refreshToken',
      serializers.serialize(object.refreshToken,
          specifiedType: const FullType(String)),
      'tokenExpiresAt',
      serializers.serialize(object.tokenExpiresAt,
          specifiedType: const FullType(_i2.GDateTime)),
    ];

    return result;
  }

  @override
  GTokenFieldsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GTokenFieldsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'refreshToken':
          result.refreshToken = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'tokenExpiresAt':
          result.tokenExpiresAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
      }
    }

    return result.build();
  }
}

class _$GloginData extends GloginData {
  @override
  final String G__typename;
  @override
  final GloginData_login login;

  factory _$GloginData([void Function(GloginDataBuilder)? updates]) =>
      (new GloginDataBuilder()..update(updates))._build();

  _$GloginData._({required this.G__typename, required this.login}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GloginData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(login, r'GloginData', 'login');
  }

  @override
  GloginData rebuild(void Function(GloginDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GloginDataBuilder toBuilder() => new GloginDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GloginData &&
        G__typename == other.G__typename &&
        login == other.login;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, login.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GloginData')
          ..add('G__typename', G__typename)
          ..add('login', login))
        .toString();
  }
}

class GloginDataBuilder implements Builder<GloginData, GloginDataBuilder> {
  _$GloginData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GloginData_loginBuilder? _login;
  GloginData_loginBuilder get login =>
      _$this._login ??= new GloginData_loginBuilder();
  set login(GloginData_loginBuilder? login) => _$this._login = login;

  GloginDataBuilder() {
    GloginData._initializeBuilder(this);
  }

  GloginDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _login = $v.login.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GloginData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GloginData;
  }

  @override
  void update(void Function(GloginDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GloginData build() => _build();

  _$GloginData _build() {
    _$GloginData _$result;
    try {
      _$result = _$v ??
          new _$GloginData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GloginData', 'G__typename'),
            login: login.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'login';
        login.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GloginData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GloginData_login extends GloginData_login {
  @override
  final String G__typename;
  @override
  final String token;
  @override
  final String refreshToken;
  @override
  final _i2.GDateTime tokenExpiresAt;

  factory _$GloginData_login(
          [void Function(GloginData_loginBuilder)? updates]) =>
      (new GloginData_loginBuilder()..update(updates))._build();

  _$GloginData_login._(
      {required this.G__typename,
      required this.token,
      required this.refreshToken,
      required this.tokenExpiresAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GloginData_login', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(token, r'GloginData_login', 'token');
    BuiltValueNullFieldError.checkNotNull(
        refreshToken, r'GloginData_login', 'refreshToken');
    BuiltValueNullFieldError.checkNotNull(
        tokenExpiresAt, r'GloginData_login', 'tokenExpiresAt');
  }

  @override
  GloginData_login rebuild(void Function(GloginData_loginBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GloginData_loginBuilder toBuilder() =>
      new GloginData_loginBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GloginData_login &&
        G__typename == other.G__typename &&
        token == other.token &&
        refreshToken == other.refreshToken &&
        tokenExpiresAt == other.tokenExpiresAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jc(_$hash, tokenExpiresAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GloginData_login')
          ..add('G__typename', G__typename)
          ..add('token', token)
          ..add('refreshToken', refreshToken)
          ..add('tokenExpiresAt', tokenExpiresAt))
        .toString();
  }
}

class GloginData_loginBuilder
    implements Builder<GloginData_login, GloginData_loginBuilder> {
  _$GloginData_login? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  _i2.GDateTimeBuilder? _tokenExpiresAt;
  _i2.GDateTimeBuilder get tokenExpiresAt =>
      _$this._tokenExpiresAt ??= new _i2.GDateTimeBuilder();
  set tokenExpiresAt(_i2.GDateTimeBuilder? tokenExpiresAt) =>
      _$this._tokenExpiresAt = tokenExpiresAt;

  GloginData_loginBuilder() {
    GloginData_login._initializeBuilder(this);
  }

  GloginData_loginBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _token = $v.token;
      _refreshToken = $v.refreshToken;
      _tokenExpiresAt = $v.tokenExpiresAt.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GloginData_login other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GloginData_login;
  }

  @override
  void update(void Function(GloginData_loginBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GloginData_login build() => _build();

  _$GloginData_login _build() {
    _$GloginData_login _$result;
    try {
      _$result = _$v ??
          new _$GloginData_login._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GloginData_login', 'G__typename'),
            token: BuiltValueNullFieldError.checkNotNull(
                token, r'GloginData_login', 'token'),
            refreshToken: BuiltValueNullFieldError.checkNotNull(
                refreshToken, r'GloginData_login', 'refreshToken'),
            tokenExpiresAt: tokenExpiresAt.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tokenExpiresAt';
        tokenExpiresAt.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GloginData_login', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GrefreshTokenData extends GrefreshTokenData {
  @override
  final String G__typename;
  @override
  final GrefreshTokenData_refreshToken refreshToken;

  factory _$GrefreshTokenData(
          [void Function(GrefreshTokenDataBuilder)? updates]) =>
      (new GrefreshTokenDataBuilder()..update(updates))._build();

  _$GrefreshTokenData._({required this.G__typename, required this.refreshToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GrefreshTokenData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        refreshToken, r'GrefreshTokenData', 'refreshToken');
  }

  @override
  GrefreshTokenData rebuild(void Function(GrefreshTokenDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GrefreshTokenDataBuilder toBuilder() =>
      new GrefreshTokenDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GrefreshTokenData &&
        G__typename == other.G__typename &&
        refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GrefreshTokenData')
          ..add('G__typename', G__typename)
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class GrefreshTokenDataBuilder
    implements Builder<GrefreshTokenData, GrefreshTokenDataBuilder> {
  _$GrefreshTokenData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GrefreshTokenData_refreshTokenBuilder? _refreshToken;
  GrefreshTokenData_refreshTokenBuilder get refreshToken =>
      _$this._refreshToken ??= new GrefreshTokenData_refreshTokenBuilder();
  set refreshToken(GrefreshTokenData_refreshTokenBuilder? refreshToken) =>
      _$this._refreshToken = refreshToken;

  GrefreshTokenDataBuilder() {
    GrefreshTokenData._initializeBuilder(this);
  }

  GrefreshTokenDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _refreshToken = $v.refreshToken.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GrefreshTokenData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GrefreshTokenData;
  }

  @override
  void update(void Function(GrefreshTokenDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GrefreshTokenData build() => _build();

  _$GrefreshTokenData _build() {
    _$GrefreshTokenData _$result;
    try {
      _$result = _$v ??
          new _$GrefreshTokenData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GrefreshTokenData', 'G__typename'),
            refreshToken: refreshToken.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'refreshToken';
        refreshToken.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GrefreshTokenData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GrefreshTokenData_refreshToken extends GrefreshTokenData_refreshToken {
  @override
  final String G__typename;
  @override
  final String token;
  @override
  final String refreshToken;
  @override
  final _i2.GDateTime tokenExpiresAt;

  factory _$GrefreshTokenData_refreshToken(
          [void Function(GrefreshTokenData_refreshTokenBuilder)? updates]) =>
      (new GrefreshTokenData_refreshTokenBuilder()..update(updates))._build();

  _$GrefreshTokenData_refreshToken._(
      {required this.G__typename,
      required this.token,
      required this.refreshToken,
      required this.tokenExpiresAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GrefreshTokenData_refreshToken', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        token, r'GrefreshTokenData_refreshToken', 'token');
    BuiltValueNullFieldError.checkNotNull(
        refreshToken, r'GrefreshTokenData_refreshToken', 'refreshToken');
    BuiltValueNullFieldError.checkNotNull(
        tokenExpiresAt, r'GrefreshTokenData_refreshToken', 'tokenExpiresAt');
  }

  @override
  GrefreshTokenData_refreshToken rebuild(
          void Function(GrefreshTokenData_refreshTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GrefreshTokenData_refreshTokenBuilder toBuilder() =>
      new GrefreshTokenData_refreshTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GrefreshTokenData_refreshToken &&
        G__typename == other.G__typename &&
        token == other.token &&
        refreshToken == other.refreshToken &&
        tokenExpiresAt == other.tokenExpiresAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jc(_$hash, tokenExpiresAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GrefreshTokenData_refreshToken')
          ..add('G__typename', G__typename)
          ..add('token', token)
          ..add('refreshToken', refreshToken)
          ..add('tokenExpiresAt', tokenExpiresAt))
        .toString();
  }
}

class GrefreshTokenData_refreshTokenBuilder
    implements
        Builder<GrefreshTokenData_refreshToken,
            GrefreshTokenData_refreshTokenBuilder> {
  _$GrefreshTokenData_refreshToken? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  _i2.GDateTimeBuilder? _tokenExpiresAt;
  _i2.GDateTimeBuilder get tokenExpiresAt =>
      _$this._tokenExpiresAt ??= new _i2.GDateTimeBuilder();
  set tokenExpiresAt(_i2.GDateTimeBuilder? tokenExpiresAt) =>
      _$this._tokenExpiresAt = tokenExpiresAt;

  GrefreshTokenData_refreshTokenBuilder() {
    GrefreshTokenData_refreshToken._initializeBuilder(this);
  }

  GrefreshTokenData_refreshTokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _token = $v.token;
      _refreshToken = $v.refreshToken;
      _tokenExpiresAt = $v.tokenExpiresAt.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GrefreshTokenData_refreshToken other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GrefreshTokenData_refreshToken;
  }

  @override
  void update(void Function(GrefreshTokenData_refreshTokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GrefreshTokenData_refreshToken build() => _build();

  _$GrefreshTokenData_refreshToken _build() {
    _$GrefreshTokenData_refreshToken _$result;
    try {
      _$result = _$v ??
          new _$GrefreshTokenData_refreshToken._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GrefreshTokenData_refreshToken', 'G__typename'),
            token: BuiltValueNullFieldError.checkNotNull(
                token, r'GrefreshTokenData_refreshToken', 'token'),
            refreshToken: BuiltValueNullFieldError.checkNotNull(refreshToken,
                r'GrefreshTokenData_refreshToken', 'refreshToken'),
            tokenExpiresAt: tokenExpiresAt.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tokenExpiresAt';
        tokenExpiresAt.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GrefreshTokenData_refreshToken', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GTokenFieldsData extends GTokenFieldsData {
  @override
  final String G__typename;
  @override
  final String token;
  @override
  final String refreshToken;
  @override
  final _i2.GDateTime tokenExpiresAt;

  factory _$GTokenFieldsData(
          [void Function(GTokenFieldsDataBuilder)? updates]) =>
      (new GTokenFieldsDataBuilder()..update(updates))._build();

  _$GTokenFieldsData._(
      {required this.G__typename,
      required this.token,
      required this.refreshToken,
      required this.tokenExpiresAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GTokenFieldsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(token, r'GTokenFieldsData', 'token');
    BuiltValueNullFieldError.checkNotNull(
        refreshToken, r'GTokenFieldsData', 'refreshToken');
    BuiltValueNullFieldError.checkNotNull(
        tokenExpiresAt, r'GTokenFieldsData', 'tokenExpiresAt');
  }

  @override
  GTokenFieldsData rebuild(void Function(GTokenFieldsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTokenFieldsDataBuilder toBuilder() =>
      new GTokenFieldsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTokenFieldsData &&
        G__typename == other.G__typename &&
        token == other.token &&
        refreshToken == other.refreshToken &&
        tokenExpiresAt == other.tokenExpiresAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jc(_$hash, tokenExpiresAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GTokenFieldsData')
          ..add('G__typename', G__typename)
          ..add('token', token)
          ..add('refreshToken', refreshToken)
          ..add('tokenExpiresAt', tokenExpiresAt))
        .toString();
  }
}

class GTokenFieldsDataBuilder
    implements Builder<GTokenFieldsData, GTokenFieldsDataBuilder> {
  _$GTokenFieldsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  _i2.GDateTimeBuilder? _tokenExpiresAt;
  _i2.GDateTimeBuilder get tokenExpiresAt =>
      _$this._tokenExpiresAt ??= new _i2.GDateTimeBuilder();
  set tokenExpiresAt(_i2.GDateTimeBuilder? tokenExpiresAt) =>
      _$this._tokenExpiresAt = tokenExpiresAt;

  GTokenFieldsDataBuilder() {
    GTokenFieldsData._initializeBuilder(this);
  }

  GTokenFieldsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _token = $v.token;
      _refreshToken = $v.refreshToken;
      _tokenExpiresAt = $v.tokenExpiresAt.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GTokenFieldsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GTokenFieldsData;
  }

  @override
  void update(void Function(GTokenFieldsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GTokenFieldsData build() => _build();

  _$GTokenFieldsData _build() {
    _$GTokenFieldsData _$result;
    try {
      _$result = _$v ??
          new _$GTokenFieldsData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GTokenFieldsData', 'G__typename'),
            token: BuiltValueNullFieldError.checkNotNull(
                token, r'GTokenFieldsData', 'token'),
            refreshToken: BuiltValueNullFieldError.checkNotNull(
                refreshToken, r'GTokenFieldsData', 'refreshToken'),
            tokenExpiresAt: tokenExpiresAt.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tokenExpiresAt';
        tokenExpiresAt.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GTokenFieldsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
