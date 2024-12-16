// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetMeData> _$ggetMeDataSerializer = new _$GgetMeDataSerializer();
Serializer<GgetMeData_getMe> _$ggetMeDataGetMeSerializer =
    new _$GgetMeData_getMeSerializer();
Serializer<GregisterData> _$gregisterDataSerializer =
    new _$GregisterDataSerializer();
Serializer<GregisterData_register> _$gregisterDataRegisterSerializer =
    new _$GregisterData_registerSerializer();
Serializer<GUserData> _$gUserDataSerializer = new _$GUserDataSerializer();

class _$GgetMeDataSerializer implements StructuredSerializer<GgetMeData> {
  @override
  final Iterable<Type> types = const [GgetMeData, _$GgetMeData];
  @override
  final String wireName = 'GgetMeData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GgetMeData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getMe',
      serializers.serialize(object.getMe,
          specifiedType: const FullType(GgetMeData_getMe)),
    ];

    return result;
  }

  @override
  GgetMeData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetMeDataBuilder();

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
        case 'getMe':
          result.getMe.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GgetMeData_getMe))!
              as GgetMeData_getMe);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetMeData_getMeSerializer
    implements StructuredSerializer<GgetMeData_getMe> {
  @override
  final Iterable<Type> types = const [GgetMeData_getMe, _$GgetMeData_getMe];
  @override
  final String wireName = 'GgetMeData_getMe';

  @override
  Iterable<Object?> serialize(Serializers serializers, GgetMeData_getMe object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.pronoun;
    if (value != null) {
      result
        ..add('pronoun')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.picture;
    if (value != null) {
      result
        ..add('picture')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GgetMeData_getMe deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetMeData_getMeBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
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
        case 'pronoun':
          result.pronoun = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'picture':
          result.picture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GregisterDataSerializer implements StructuredSerializer<GregisterData> {
  @override
  final Iterable<Type> types = const [GregisterData, _$GregisterData];
  @override
  final String wireName = 'GregisterData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GregisterData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'register',
      serializers.serialize(object.register,
          specifiedType: const FullType(GregisterData_register)),
    ];

    return result;
  }

  @override
  GregisterData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GregisterDataBuilder();

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
        case 'register':
          result.register.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GregisterData_register))!
              as GregisterData_register);
          break;
      }
    }

    return result.build();
  }
}

class _$GregisterData_registerSerializer
    implements StructuredSerializer<GregisterData_register> {
  @override
  final Iterable<Type> types = const [
    GregisterData_register,
    _$GregisterData_register
  ];
  @override
  final String wireName = 'GregisterData_register';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GregisterData_register object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.pronoun;
    if (value != null) {
      result
        ..add('pronoun')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.picture;
    if (value != null) {
      result
        ..add('picture')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GregisterData_register deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GregisterData_registerBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
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
        case 'pronoun':
          result.pronoun = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'picture':
          result.picture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserDataSerializer implements StructuredSerializer<GUserData> {
  @override
  final Iterable<Type> types = const [GUserData, _$GUserData];
  @override
  final String wireName = 'GUserData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.pronoun;
    if (value != null) {
      result
        ..add('pronoun')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.picture;
    if (value != null) {
      result
        ..add('picture')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUserData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserDataBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
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
        case 'pronoun':
          result.pronoun = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'picture':
          result.picture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetMeData extends GgetMeData {
  @override
  final String G__typename;
  @override
  final GgetMeData_getMe getMe;

  factory _$GgetMeData([void Function(GgetMeDataBuilder)? updates]) =>
      (new GgetMeDataBuilder()..update(updates))._build();

  _$GgetMeData._({required this.G__typename, required this.getMe}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetMeData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(getMe, r'GgetMeData', 'getMe');
  }

  @override
  GgetMeData rebuild(void Function(GgetMeDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetMeDataBuilder toBuilder() => new GgetMeDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetMeData &&
        G__typename == other.G__typename &&
        getMe == other.getMe;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getMe.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetMeData')
          ..add('G__typename', G__typename)
          ..add('getMe', getMe))
        .toString();
  }
}

class GgetMeDataBuilder implements Builder<GgetMeData, GgetMeDataBuilder> {
  _$GgetMeData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetMeData_getMeBuilder? _getMe;
  GgetMeData_getMeBuilder get getMe =>
      _$this._getMe ??= new GgetMeData_getMeBuilder();
  set getMe(GgetMeData_getMeBuilder? getMe) => _$this._getMe = getMe;

  GgetMeDataBuilder() {
    GgetMeData._initializeBuilder(this);
  }

  GgetMeDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getMe = $v.getMe.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetMeData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetMeData;
  }

  @override
  void update(void Function(GgetMeDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetMeData build() => _build();

  _$GgetMeData _build() {
    _$GgetMeData _$result;
    try {
      _$result = _$v ??
          new _$GgetMeData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetMeData', 'G__typename'),
              getMe: getMe.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getMe';
        getMe.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetMeData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetMeData_getMe extends GgetMeData_getMe {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String username;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String? pronoun;
  @override
  final String? picture;
  @override
  final String? description;

  factory _$GgetMeData_getMe(
          [void Function(GgetMeData_getMeBuilder)? updates]) =>
      (new GgetMeData_getMeBuilder()..update(updates))._build();

  _$GgetMeData_getMe._(
      {required this.G__typename,
      required this.id,
      required this.username,
      required this.firstName,
      required this.lastName,
      this.pronoun,
      this.picture,
      this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetMeData_getMe', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GgetMeData_getMe', 'id');
    BuiltValueNullFieldError.checkNotNull(
        username, r'GgetMeData_getMe', 'username');
    BuiltValueNullFieldError.checkNotNull(
        firstName, r'GgetMeData_getMe', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, r'GgetMeData_getMe', 'lastName');
  }

  @override
  GgetMeData_getMe rebuild(void Function(GgetMeData_getMeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetMeData_getMeBuilder toBuilder() =>
      new GgetMeData_getMeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetMeData_getMe &&
        G__typename == other.G__typename &&
        id == other.id &&
        username == other.username &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        pronoun == other.pronoun &&
        picture == other.picture &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, pronoun.hashCode);
    _$hash = $jc(_$hash, picture.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetMeData_getMe')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('username', username)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('pronoun', pronoun)
          ..add('picture', picture)
          ..add('description', description))
        .toString();
  }
}

class GgetMeData_getMeBuilder
    implements Builder<GgetMeData_getMe, GgetMeData_getMeBuilder> {
  _$GgetMeData_getMe? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _pronoun;
  String? get pronoun => _$this._pronoun;
  set pronoun(String? pronoun) => _$this._pronoun = pronoun;

  String? _picture;
  String? get picture => _$this._picture;
  set picture(String? picture) => _$this._picture = picture;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GgetMeData_getMeBuilder() {
    GgetMeData_getMe._initializeBuilder(this);
  }

  GgetMeData_getMeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _username = $v.username;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _pronoun = $v.pronoun;
      _picture = $v.picture;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetMeData_getMe other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetMeData_getMe;
  }

  @override
  void update(void Function(GgetMeData_getMeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetMeData_getMe build() => _build();

  _$GgetMeData_getMe _build() {
    final _$result = _$v ??
        new _$GgetMeData_getMe._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GgetMeData_getMe', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GgetMeData_getMe', 'id'),
            username: BuiltValueNullFieldError.checkNotNull(
                username, r'GgetMeData_getMe', 'username'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'GgetMeData_getMe', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'GgetMeData_getMe', 'lastName'),
            pronoun: pronoun,
            picture: picture,
            description: description);
    replace(_$result);
    return _$result;
  }
}

class _$GregisterData extends GregisterData {
  @override
  final String G__typename;
  @override
  final GregisterData_register register;

  factory _$GregisterData([void Function(GregisterDataBuilder)? updates]) =>
      (new GregisterDataBuilder()..update(updates))._build();

  _$GregisterData._({required this.G__typename, required this.register})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GregisterData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        register, r'GregisterData', 'register');
  }

  @override
  GregisterData rebuild(void Function(GregisterDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GregisterDataBuilder toBuilder() => new GregisterDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GregisterData &&
        G__typename == other.G__typename &&
        register == other.register;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, register.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GregisterData')
          ..add('G__typename', G__typename)
          ..add('register', register))
        .toString();
  }
}

class GregisterDataBuilder
    implements Builder<GregisterData, GregisterDataBuilder> {
  _$GregisterData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GregisterData_registerBuilder? _register;
  GregisterData_registerBuilder get register =>
      _$this._register ??= new GregisterData_registerBuilder();
  set register(GregisterData_registerBuilder? register) =>
      _$this._register = register;

  GregisterDataBuilder() {
    GregisterData._initializeBuilder(this);
  }

  GregisterDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _register = $v.register.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GregisterData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GregisterData;
  }

  @override
  void update(void Function(GregisterDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GregisterData build() => _build();

  _$GregisterData _build() {
    _$GregisterData _$result;
    try {
      _$result = _$v ??
          new _$GregisterData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GregisterData', 'G__typename'),
              register: register.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'register';
        register.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GregisterData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GregisterData_register extends GregisterData_register {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String username;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String? pronoun;
  @override
  final String? picture;
  @override
  final String? description;

  factory _$GregisterData_register(
          [void Function(GregisterData_registerBuilder)? updates]) =>
      (new GregisterData_registerBuilder()..update(updates))._build();

  _$GregisterData_register._(
      {required this.G__typename,
      required this.id,
      required this.username,
      required this.firstName,
      required this.lastName,
      this.pronoun,
      this.picture,
      this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GregisterData_register', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GregisterData_register', 'id');
    BuiltValueNullFieldError.checkNotNull(
        username, r'GregisterData_register', 'username');
    BuiltValueNullFieldError.checkNotNull(
        firstName, r'GregisterData_register', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, r'GregisterData_register', 'lastName');
  }

  @override
  GregisterData_register rebuild(
          void Function(GregisterData_registerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GregisterData_registerBuilder toBuilder() =>
      new GregisterData_registerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GregisterData_register &&
        G__typename == other.G__typename &&
        id == other.id &&
        username == other.username &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        pronoun == other.pronoun &&
        picture == other.picture &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, pronoun.hashCode);
    _$hash = $jc(_$hash, picture.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GregisterData_register')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('username', username)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('pronoun', pronoun)
          ..add('picture', picture)
          ..add('description', description))
        .toString();
  }
}

class GregisterData_registerBuilder
    implements Builder<GregisterData_register, GregisterData_registerBuilder> {
  _$GregisterData_register? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _pronoun;
  String? get pronoun => _$this._pronoun;
  set pronoun(String? pronoun) => _$this._pronoun = pronoun;

  String? _picture;
  String? get picture => _$this._picture;
  set picture(String? picture) => _$this._picture = picture;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GregisterData_registerBuilder() {
    GregisterData_register._initializeBuilder(this);
  }

  GregisterData_registerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _username = $v.username;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _pronoun = $v.pronoun;
      _picture = $v.picture;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GregisterData_register other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GregisterData_register;
  }

  @override
  void update(void Function(GregisterData_registerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GregisterData_register build() => _build();

  _$GregisterData_register _build() {
    final _$result = _$v ??
        new _$GregisterData_register._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GregisterData_register', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GregisterData_register', 'id'),
            username: BuiltValueNullFieldError.checkNotNull(
                username, r'GregisterData_register', 'username'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'GregisterData_register', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'GregisterData_register', 'lastName'),
            pronoun: pronoun,
            picture: picture,
            description: description);
    replace(_$result);
    return _$result;
  }
}

class _$GUserData extends GUserData {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String username;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String? pronoun;
  @override
  final String? picture;
  @override
  final String? description;

  factory _$GUserData([void Function(GUserDataBuilder)? updates]) =>
      (new GUserDataBuilder()..update(updates))._build();

  _$GUserData._(
      {required this.G__typename,
      required this.id,
      required this.username,
      required this.firstName,
      required this.lastName,
      this.pronoun,
      this.picture,
      this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GUserData', 'id');
    BuiltValueNullFieldError.checkNotNull(username, r'GUserData', 'username');
    BuiltValueNullFieldError.checkNotNull(firstName, r'GUserData', 'firstName');
    BuiltValueNullFieldError.checkNotNull(lastName, r'GUserData', 'lastName');
  }

  @override
  GUserData rebuild(void Function(GUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserDataBuilder toBuilder() => new GUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserData &&
        G__typename == other.G__typename &&
        id == other.id &&
        username == other.username &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        pronoun == other.pronoun &&
        picture == other.picture &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, pronoun.hashCode);
    _$hash = $jc(_$hash, picture.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('username', username)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('pronoun', pronoun)
          ..add('picture', picture)
          ..add('description', description))
        .toString();
  }
}

class GUserDataBuilder implements Builder<GUserData, GUserDataBuilder> {
  _$GUserData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _pronoun;
  String? get pronoun => _$this._pronoun;
  set pronoun(String? pronoun) => _$this._pronoun = pronoun;

  String? _picture;
  String? get picture => _$this._picture;
  set picture(String? picture) => _$this._picture = picture;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GUserDataBuilder() {
    GUserData._initializeBuilder(this);
  }

  GUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _username = $v.username;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _pronoun = $v.pronoun;
      _picture = $v.picture;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserData;
  }

  @override
  void update(void Function(GUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserData build() => _build();

  _$GUserData _build() {
    final _$result = _$v ??
        new _$GUserData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GUserData', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(id, r'GUserData', 'id'),
            username: BuiltValueNullFieldError.checkNotNull(
                username, r'GUserData', 'username'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'GUserData', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'GUserData', 'lastName'),
            pronoun: pronoun,
            picture: picture,
            description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
