// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GProviderVisibility _$gProviderVisibilityPRIVATE =
    const GProviderVisibility._('PRIVATE');
const GProviderVisibility _$gProviderVisibilityPUBLIC =
    const GProviderVisibility._('PUBLIC');
const GProviderVisibility _$gProviderVisibilityUNLISTED =
    const GProviderVisibility._('UNLISTED');

GProviderVisibility _$gProviderVisibilityValueOf(String name) {
  switch (name) {
    case 'PRIVATE':
      return _$gProviderVisibilityPRIVATE;
    case 'PUBLIC':
      return _$gProviderVisibilityPUBLIC;
    case 'UNLISTED':
      return _$gProviderVisibilityUNLISTED;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GProviderVisibility> _$gProviderVisibilityValues =
    new BuiltSet<GProviderVisibility>(const <GProviderVisibility>[
  _$gProviderVisibilityPRIVATE,
  _$gProviderVisibilityPUBLIC,
  _$gProviderVisibilityUNLISTED,
]);

Serializer<GAppletSubscribeInput> _$gAppletSubscribeInputSerializer =
    new _$GAppletSubscribeInputSerializer();
Serializer<GAuthPasswordInput> _$gAuthPasswordInputSerializer =
    new _$GAuthPasswordInputSerializer();
Serializer<GAuthRefreshTokenInput> _$gAuthRefreshTokenInputSerializer =
    new _$GAuthRefreshTokenInputSerializer();
Serializer<GProviderCreateInput> _$gProviderCreateInputSerializer =
    new _$GProviderCreateInputSerializer();
Serializer<GProviderVisibility> _$gProviderVisibilitySerializer =
    new _$GProviderVisibilitySerializer();
Serializer<GUserCreateInput> _$gUserCreateInputSerializer =
    new _$GUserCreateInputSerializer();
Serializer<GUserRegisterInput> _$gUserRegisterInputSerializer =
    new _$GUserRegisterInputSerializer();

class _$GAppletSubscribeInputSerializer
    implements StructuredSerializer<GAppletSubscribeInput> {
  @override
  final Iterable<Type> types = const [
    GAppletSubscribeInput,
    _$GAppletSubscribeInput
  ];
  @override
  final String wireName = 'GAppletSubscribeInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAppletSubscribeInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'channelIdInput',
      serializers.serialize(object.channelIdInput,
          specifiedType: const FullType(String)),
      'channelIdOutput',
      serializers.serialize(object.channelIdOutput,
          specifiedType: const FullType(String)),
      'guildIdInput',
      serializers.serialize(object.guildIdInput,
          specifiedType: const FullType(String)),
      'guildIdOutput',
      serializers.serialize(object.guildIdOutput,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GAppletSubscribeInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAppletSubscribeInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'channelIdInput':
          result.channelIdInput = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'channelIdOutput':
          result.channelIdOutput = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'guildIdInput':
          result.guildIdInput = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'guildIdOutput':
          result.guildIdOutput = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GAuthPasswordInputSerializer
    implements StructuredSerializer<GAuthPasswordInput> {
  @override
  final Iterable<Type> types = const [GAuthPasswordInput, _$GAuthPasswordInput];
  @override
  final String wireName = 'GAuthPasswordInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAuthPasswordInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GAuthPasswordInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAuthPasswordInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GAuthRefreshTokenInputSerializer
    implements StructuredSerializer<GAuthRefreshTokenInput> {
  @override
  final Iterable<Type> types = const [
    GAuthRefreshTokenInput,
    _$GAuthRefreshTokenInput
  ];
  @override
  final String wireName = 'GAuthRefreshTokenInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAuthRefreshTokenInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'refreshToken',
      serializers.serialize(object.refreshToken,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GAuthRefreshTokenInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAuthRefreshTokenInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'refreshToken':
          result.refreshToken = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GProviderCreateInputSerializer
    implements StructuredSerializer<GProviderCreateInput> {
  @override
  final Iterable<Type> types = const [
    GProviderCreateInput,
    _$GProviderCreateInput
  ];
  @override
  final String wireName = 'GProviderCreateInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProviderCreateInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'host',
      serializers.serialize(object.host, specifiedType: const FullType(String)),
      'providerId',
      serializers.serialize(object.providerId,
          specifiedType: const FullType(String)),
      'visibility',
      serializers.serialize(object.visibility,
          specifiedType: const FullType(GProviderVisibility)),
    ];

    return result;
  }

  @override
  GProviderCreateInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProviderCreateInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'host':
          result.host = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'providerId':
          result.providerId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
                  specifiedType: const FullType(GProviderVisibility))!
              as GProviderVisibility;
          break;
      }
    }

    return result.build();
  }
}

class _$GProviderVisibilitySerializer
    implements PrimitiveSerializer<GProviderVisibility> {
  @override
  final Iterable<Type> types = const <Type>[GProviderVisibility];
  @override
  final String wireName = 'GProviderVisibility';

  @override
  Object serialize(Serializers serializers, GProviderVisibility object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GProviderVisibility deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GProviderVisibility.valueOf(serialized as String);
}

class _$GUserCreateInputSerializer
    implements StructuredSerializer<GUserCreateInput> {
  @override
  final Iterable<Type> types = const [GUserCreateInput, _$GUserCreateInput];
  @override
  final String wireName = 'GUserCreateInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserCreateInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pronoun;
    if (value != null) {
      result
        ..add('pronoun')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUserCreateInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserCreateInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pronoun':
          result.pronoun = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserRegisterInputSerializer
    implements StructuredSerializer<GUserRegisterInput> {
  @override
  final Iterable<Type> types = const [GUserRegisterInput, _$GUserRegisterInput];
  @override
  final String wireName = 'GUserRegisterInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserRegisterInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUserRegisterInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserRegisterInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GAppletSubscribeInput extends GAppletSubscribeInput {
  @override
  final String channelIdInput;
  @override
  final String channelIdOutput;
  @override
  final String guildIdInput;
  @override
  final String guildIdOutput;
  @override
  final String message;
  @override
  final String name;

  factory _$GAppletSubscribeInput(
          [void Function(GAppletSubscribeInputBuilder)? updates]) =>
      (new GAppletSubscribeInputBuilder()..update(updates))._build();

  _$GAppletSubscribeInput._(
      {required this.channelIdInput,
      required this.channelIdOutput,
      required this.guildIdInput,
      required this.guildIdOutput,
      required this.message,
      required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        channelIdInput, r'GAppletSubscribeInput', 'channelIdInput');
    BuiltValueNullFieldError.checkNotNull(
        channelIdOutput, r'GAppletSubscribeInput', 'channelIdOutput');
    BuiltValueNullFieldError.checkNotNull(
        guildIdInput, r'GAppletSubscribeInput', 'guildIdInput');
    BuiltValueNullFieldError.checkNotNull(
        guildIdOutput, r'GAppletSubscribeInput', 'guildIdOutput');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GAppletSubscribeInput', 'message');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GAppletSubscribeInput', 'name');
  }

  @override
  GAppletSubscribeInput rebuild(
          void Function(GAppletSubscribeInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAppletSubscribeInputBuilder toBuilder() =>
      new GAppletSubscribeInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAppletSubscribeInput &&
        channelIdInput == other.channelIdInput &&
        channelIdOutput == other.channelIdOutput &&
        guildIdInput == other.guildIdInput &&
        guildIdOutput == other.guildIdOutput &&
        message == other.message &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, channelIdInput.hashCode);
    _$hash = $jc(_$hash, channelIdOutput.hashCode);
    _$hash = $jc(_$hash, guildIdInput.hashCode);
    _$hash = $jc(_$hash, guildIdOutput.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAppletSubscribeInput')
          ..add('channelIdInput', channelIdInput)
          ..add('channelIdOutput', channelIdOutput)
          ..add('guildIdInput', guildIdInput)
          ..add('guildIdOutput', guildIdOutput)
          ..add('message', message)
          ..add('name', name))
        .toString();
  }
}

class GAppletSubscribeInputBuilder
    implements Builder<GAppletSubscribeInput, GAppletSubscribeInputBuilder> {
  _$GAppletSubscribeInput? _$v;

  String? _channelIdInput;
  String? get channelIdInput => _$this._channelIdInput;
  set channelIdInput(String? channelIdInput) =>
      _$this._channelIdInput = channelIdInput;

  String? _channelIdOutput;
  String? get channelIdOutput => _$this._channelIdOutput;
  set channelIdOutput(String? channelIdOutput) =>
      _$this._channelIdOutput = channelIdOutput;

  String? _guildIdInput;
  String? get guildIdInput => _$this._guildIdInput;
  set guildIdInput(String? guildIdInput) => _$this._guildIdInput = guildIdInput;

  String? _guildIdOutput;
  String? get guildIdOutput => _$this._guildIdOutput;
  set guildIdOutput(String? guildIdOutput) =>
      _$this._guildIdOutput = guildIdOutput;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GAppletSubscribeInputBuilder();

  GAppletSubscribeInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _channelIdInput = $v.channelIdInput;
      _channelIdOutput = $v.channelIdOutput;
      _guildIdInput = $v.guildIdInput;
      _guildIdOutput = $v.guildIdOutput;
      _message = $v.message;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAppletSubscribeInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAppletSubscribeInput;
  }

  @override
  void update(void Function(GAppletSubscribeInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAppletSubscribeInput build() => _build();

  _$GAppletSubscribeInput _build() {
    final _$result = _$v ??
        new _$GAppletSubscribeInput._(
            channelIdInput: BuiltValueNullFieldError.checkNotNull(
                channelIdInput, r'GAppletSubscribeInput', 'channelIdInput'),
            channelIdOutput: BuiltValueNullFieldError.checkNotNull(
                channelIdOutput, r'GAppletSubscribeInput', 'channelIdOutput'),
            guildIdInput: BuiltValueNullFieldError.checkNotNull(
                guildIdInput, r'GAppletSubscribeInput', 'guildIdInput'),
            guildIdOutput: BuiltValueNullFieldError.checkNotNull(
                guildIdOutput, r'GAppletSubscribeInput', 'guildIdOutput'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'GAppletSubscribeInput', 'message'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GAppletSubscribeInput', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GAuthPasswordInput extends GAuthPasswordInput {
  @override
  final String email;
  @override
  final String password;

  factory _$GAuthPasswordInput(
          [void Function(GAuthPasswordInputBuilder)? updates]) =>
      (new GAuthPasswordInputBuilder()..update(updates))._build();

  _$GAuthPasswordInput._({required this.email, required this.password})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        email, r'GAuthPasswordInput', 'email');
    BuiltValueNullFieldError.checkNotNull(
        password, r'GAuthPasswordInput', 'password');
  }

  @override
  GAuthPasswordInput rebuild(
          void Function(GAuthPasswordInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAuthPasswordInputBuilder toBuilder() =>
      new GAuthPasswordInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAuthPasswordInput &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAuthPasswordInput')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class GAuthPasswordInputBuilder
    implements Builder<GAuthPasswordInput, GAuthPasswordInputBuilder> {
  _$GAuthPasswordInput? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  GAuthPasswordInputBuilder();

  GAuthPasswordInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAuthPasswordInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAuthPasswordInput;
  }

  @override
  void update(void Function(GAuthPasswordInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAuthPasswordInput build() => _build();

  _$GAuthPasswordInput _build() {
    final _$result = _$v ??
        new _$GAuthPasswordInput._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'GAuthPasswordInput', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'GAuthPasswordInput', 'password'));
    replace(_$result);
    return _$result;
  }
}

class _$GAuthRefreshTokenInput extends GAuthRefreshTokenInput {
  @override
  final String refreshToken;

  factory _$GAuthRefreshTokenInput(
          [void Function(GAuthRefreshTokenInputBuilder)? updates]) =>
      (new GAuthRefreshTokenInputBuilder()..update(updates))._build();

  _$GAuthRefreshTokenInput._({required this.refreshToken}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        refreshToken, r'GAuthRefreshTokenInput', 'refreshToken');
  }

  @override
  GAuthRefreshTokenInput rebuild(
          void Function(GAuthRefreshTokenInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAuthRefreshTokenInputBuilder toBuilder() =>
      new GAuthRefreshTokenInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAuthRefreshTokenInput &&
        refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAuthRefreshTokenInput')
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class GAuthRefreshTokenInputBuilder
    implements Builder<GAuthRefreshTokenInput, GAuthRefreshTokenInputBuilder> {
  _$GAuthRefreshTokenInput? _$v;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  GAuthRefreshTokenInputBuilder();

  GAuthRefreshTokenInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refreshToken = $v.refreshToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAuthRefreshTokenInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAuthRefreshTokenInput;
  }

  @override
  void update(void Function(GAuthRefreshTokenInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAuthRefreshTokenInput build() => _build();

  _$GAuthRefreshTokenInput _build() {
    final _$result = _$v ??
        new _$GAuthRefreshTokenInput._(
            refreshToken: BuiltValueNullFieldError.checkNotNull(
                refreshToken, r'GAuthRefreshTokenInput', 'refreshToken'));
    replace(_$result);
    return _$result;
  }
}

class _$GDateTime extends GDateTime {
  @override
  final String value;

  factory _$GDateTime([void Function(GDateTimeBuilder)? updates]) =>
      (new GDateTimeBuilder()..update(updates))._build();

  _$GDateTime._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, r'GDateTime', 'value');
  }

  @override
  GDateTime rebuild(void Function(GDateTimeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDateTimeBuilder toBuilder() => new GDateTimeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDateTime && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDateTime')..add('value', value))
        .toString();
  }
}

class GDateTimeBuilder implements Builder<GDateTime, GDateTimeBuilder> {
  _$GDateTime? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GDateTimeBuilder();

  GDateTimeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDateTime other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDateTime;
  }

  @override
  void update(void Function(GDateTimeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDateTime build() => _build();

  _$GDateTime _build() {
    final _$result = _$v ??
        new _$GDateTime._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'GDateTime', 'value'));
    replace(_$result);
    return _$result;
  }
}

class _$GJSON extends GJSON {
  @override
  final String value;

  factory _$GJSON([void Function(GJSONBuilder)? updates]) =>
      (new GJSONBuilder()..update(updates))._build();

  _$GJSON._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, r'GJSON', 'value');
  }

  @override
  GJSON rebuild(void Function(GJSONBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GJSONBuilder toBuilder() => new GJSONBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GJSON && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GJSON')..add('value', value))
        .toString();
  }
}

class GJSONBuilder implements Builder<GJSON, GJSONBuilder> {
  _$GJSON? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GJSONBuilder();

  GJSONBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GJSON other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GJSON;
  }

  @override
  void update(void Function(GJSONBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GJSON build() => _build();

  _$GJSON _build() {
    final _$result = _$v ??
        new _$GJSON._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'GJSON', 'value'));
    replace(_$result);
    return _$result;
  }
}

class _$GProviderCreateInput extends GProviderCreateInput {
  @override
  final String host;
  @override
  final String providerId;
  @override
  final GProviderVisibility visibility;

  factory _$GProviderCreateInput(
          [void Function(GProviderCreateInputBuilder)? updates]) =>
      (new GProviderCreateInputBuilder()..update(updates))._build();

  _$GProviderCreateInput._(
      {required this.host, required this.providerId, required this.visibility})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        host, r'GProviderCreateInput', 'host');
    BuiltValueNullFieldError.checkNotNull(
        providerId, r'GProviderCreateInput', 'providerId');
    BuiltValueNullFieldError.checkNotNull(
        visibility, r'GProviderCreateInput', 'visibility');
  }

  @override
  GProviderCreateInput rebuild(
          void Function(GProviderCreateInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProviderCreateInputBuilder toBuilder() =>
      new GProviderCreateInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProviderCreateInput &&
        host == other.host &&
        providerId == other.providerId &&
        visibility == other.visibility;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, host.hashCode);
    _$hash = $jc(_$hash, providerId.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GProviderCreateInput')
          ..add('host', host)
          ..add('providerId', providerId)
          ..add('visibility', visibility))
        .toString();
  }
}

class GProviderCreateInputBuilder
    implements Builder<GProviderCreateInput, GProviderCreateInputBuilder> {
  _$GProviderCreateInput? _$v;

  String? _host;
  String? get host => _$this._host;
  set host(String? host) => _$this._host = host;

  String? _providerId;
  String? get providerId => _$this._providerId;
  set providerId(String? providerId) => _$this._providerId = providerId;

  GProviderVisibility? _visibility;
  GProviderVisibility? get visibility => _$this._visibility;
  set visibility(GProviderVisibility? visibility) =>
      _$this._visibility = visibility;

  GProviderCreateInputBuilder();

  GProviderCreateInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _host = $v.host;
      _providerId = $v.providerId;
      _visibility = $v.visibility;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProviderCreateInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProviderCreateInput;
  }

  @override
  void update(void Function(GProviderCreateInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GProviderCreateInput build() => _build();

  _$GProviderCreateInput _build() {
    final _$result = _$v ??
        new _$GProviderCreateInput._(
            host: BuiltValueNullFieldError.checkNotNull(
                host, r'GProviderCreateInput', 'host'),
            providerId: BuiltValueNullFieldError.checkNotNull(
                providerId, r'GProviderCreateInput', 'providerId'),
            visibility: BuiltValueNullFieldError.checkNotNull(
                visibility, r'GProviderCreateInput', 'visibility'));
    replace(_$result);
    return _$result;
  }
}

class _$GUserCreateInput extends GUserCreateInput {
  @override
  final String? description;
  @override
  final String email;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String? password;
  @override
  final String? pronoun;
  @override
  final String username;

  factory _$GUserCreateInput(
          [void Function(GUserCreateInputBuilder)? updates]) =>
      (new GUserCreateInputBuilder()..update(updates))._build();

  _$GUserCreateInput._(
      {this.description,
      required this.email,
      required this.firstName,
      required this.lastName,
      this.password,
      this.pronoun,
      required this.username})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(email, r'GUserCreateInput', 'email');
    BuiltValueNullFieldError.checkNotNull(
        firstName, r'GUserCreateInput', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, r'GUserCreateInput', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        username, r'GUserCreateInput', 'username');
  }

  @override
  GUserCreateInput rebuild(void Function(GUserCreateInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserCreateInputBuilder toBuilder() =>
      new GUserCreateInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserCreateInput &&
        description == other.description &&
        email == other.email &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        password == other.password &&
        pronoun == other.pronoun &&
        username == other.username;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, pronoun.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserCreateInput')
          ..add('description', description)
          ..add('email', email)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('password', password)
          ..add('pronoun', pronoun)
          ..add('username', username))
        .toString();
  }
}

class GUserCreateInputBuilder
    implements Builder<GUserCreateInput, GUserCreateInputBuilder> {
  _$GUserCreateInput? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _pronoun;
  String? get pronoun => _$this._pronoun;
  set pronoun(String? pronoun) => _$this._pronoun = pronoun;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  GUserCreateInputBuilder();

  GUserCreateInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _email = $v.email;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _password = $v.password;
      _pronoun = $v.pronoun;
      _username = $v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserCreateInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserCreateInput;
  }

  @override
  void update(void Function(GUserCreateInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserCreateInput build() => _build();

  _$GUserCreateInput _build() {
    final _$result = _$v ??
        new _$GUserCreateInput._(
            description: description,
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'GUserCreateInput', 'email'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'GUserCreateInput', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'GUserCreateInput', 'lastName'),
            password: password,
            pronoun: pronoun,
            username: BuiltValueNullFieldError.checkNotNull(
                username, r'GUserCreateInput', 'username'));
    replace(_$result);
    return _$result;
  }
}

class _$GUserRegisterInput extends GUserRegisterInput {
  @override
  final String email;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String? password;
  @override
  final String username;

  factory _$GUserRegisterInput(
          [void Function(GUserRegisterInputBuilder)? updates]) =>
      (new GUserRegisterInputBuilder()..update(updates))._build();

  _$GUserRegisterInput._(
      {required this.email,
      required this.firstName,
      required this.lastName,
      this.password,
      required this.username})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        email, r'GUserRegisterInput', 'email');
    BuiltValueNullFieldError.checkNotNull(
        firstName, r'GUserRegisterInput', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, r'GUserRegisterInput', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        username, r'GUserRegisterInput', 'username');
  }

  @override
  GUserRegisterInput rebuild(
          void Function(GUserRegisterInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserRegisterInputBuilder toBuilder() =>
      new GUserRegisterInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserRegisterInput &&
        email == other.email &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        password == other.password &&
        username == other.username;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserRegisterInput')
          ..add('email', email)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('password', password)
          ..add('username', username))
        .toString();
  }
}

class GUserRegisterInputBuilder
    implements Builder<GUserRegisterInput, GUserRegisterInputBuilder> {
  _$GUserRegisterInput? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  GUserRegisterInputBuilder();

  GUserRegisterInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _password = $v.password;
      _username = $v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserRegisterInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserRegisterInput;
  }

  @override
  void update(void Function(GUserRegisterInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserRegisterInput build() => _build();

  _$GUserRegisterInput _build() {
    final _$result = _$v ??
        new _$GUserRegisterInput._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'GUserRegisterInput', 'email'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'GUserRegisterInput', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'GUserRegisterInput', 'lastName'),
            password: password,
            username: BuiltValueNullFieldError.checkNotNull(
                username, r'GUserRegisterInput', 'username'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
