// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GAppletNodeType _$gAppletNodeTypeACTION =
    const GAppletNodeType._('ACTION');
const GAppletNodeType _$gAppletNodeTypeTRIGGER =
    const GAppletNodeType._('TRIGGER');

GAppletNodeType _$gAppletNodeTypeValueOf(String name) {
  switch (name) {
    case 'ACTION':
      return _$gAppletNodeTypeACTION;
    case 'TRIGGER':
      return _$gAppletNodeTypeTRIGGER;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GAppletNodeType> _$gAppletNodeTypeValues =
    new BuiltSet<GAppletNodeType>(const <GAppletNodeType>[
  _$gAppletNodeTypeACTION,
  _$gAppletNodeTypeTRIGGER,
]);

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

Serializer<GAppletCreateInput> _$gAppletCreateInputSerializer =
    new _$GAppletCreateInputSerializer();
Serializer<GAppletNodeCreateInput> _$gAppletNodeCreateInputSerializer =
    new _$GAppletNodeCreateInputSerializer();
Serializer<GAppletNodeType> _$gAppletNodeTypeSerializer =
    new _$GAppletNodeTypeSerializer();
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
Serializer<GUserUpdateInput> _$gUserUpdateInputSerializer =
    new _$GUserUpdateInputSerializer();

class _$GAppletCreateInputSerializer
    implements StructuredSerializer<GAppletCreateInput> {
  @override
  final Iterable<Type> types = const [GAppletCreateInput, _$GAppletCreateInput];
  @override
  final String wireName = 'GAppletCreateInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAppletCreateInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'triggerNodes',
      serializers.serialize(object.triggerNodes,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GAppletNodeCreateInput)])),
    ];
    Object? value;
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
  GAppletCreateInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAppletCreateInputBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'triggerNodes':
          result.triggerNodes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GAppletNodeCreateInput)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GAppletNodeCreateInputSerializer
    implements StructuredSerializer<GAppletNodeCreateInput> {
  @override
  final Iterable<Type> types = const [
    GAppletNodeCreateInput,
    _$GAppletNodeCreateInput
  ];
  @override
  final String wireName = 'GAppletNodeCreateInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAppletNodeCreateInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'actionId',
      serializers.serialize(object.actionId,
          specifiedType: const FullType(String)),
      'input',
      serializers.serialize(object.input, specifiedType: const FullType(GJSON)),
      'next',
      serializers.serialize(object.next,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GAppletNodeCreateInput)])),
      'providerId',
      serializers.serialize(object.providerId,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GAppletNodeCreateInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAppletNodeCreateInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'actionId':
          result.actionId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'input':
          result.input.replace(serializers.deserialize(value,
              specifiedType: const FullType(GJSON))! as GJSON);
          break;
        case 'next':
          result.next.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GAppletNodeCreateInput)
              ]))! as BuiltList<Object?>);
          break;
        case 'providerId':
          result.providerId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GAppletNodeTypeSerializer
    implements PrimitiveSerializer<GAppletNodeType> {
  @override
  final Iterable<Type> types = const <Type>[GAppletNodeType];
  @override
  final String wireName = 'GAppletNodeType';

  @override
  Object serialize(Serializers serializers, GAppletNodeType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GAppletNodeType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GAppletNodeType.valueOf(serialized as String);
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

class _$GUserUpdateInputSerializer
    implements StructuredSerializer<GUserUpdateInput> {
  @override
  final Iterable<Type> types = const [GUserUpdateInput, _$GUserUpdateInput];
  @override
  final String wireName = 'GUserUpdateInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserUpdateInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.firstName;
    if (value != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('lastName')
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
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUserUpdateInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserUpdateInputBuilder();

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
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pronoun':
          result.pronoun = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAppletCreateInput extends GAppletCreateInput {
  @override
  final String? description;
  @override
  final String name;
  @override
  final BuiltList<GAppletNodeCreateInput> triggerNodes;

  factory _$GAppletCreateInput(
          [void Function(GAppletCreateInputBuilder)? updates]) =>
      (new GAppletCreateInputBuilder()..update(updates))._build();

  _$GAppletCreateInput._(
      {this.description, required this.name, required this.triggerNodes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'GAppletCreateInput', 'name');
    BuiltValueNullFieldError.checkNotNull(
        triggerNodes, r'GAppletCreateInput', 'triggerNodes');
  }

  @override
  GAppletCreateInput rebuild(
          void Function(GAppletCreateInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAppletCreateInputBuilder toBuilder() =>
      new GAppletCreateInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAppletCreateInput &&
        description == other.description &&
        name == other.name &&
        triggerNodes == other.triggerNodes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, triggerNodes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAppletCreateInput')
          ..add('description', description)
          ..add('name', name)
          ..add('triggerNodes', triggerNodes))
        .toString();
  }
}

class GAppletCreateInputBuilder
    implements Builder<GAppletCreateInput, GAppletCreateInputBuilder> {
  _$GAppletCreateInput? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<GAppletNodeCreateInput>? _triggerNodes;
  ListBuilder<GAppletNodeCreateInput> get triggerNodes =>
      _$this._triggerNodes ??= new ListBuilder<GAppletNodeCreateInput>();
  set triggerNodes(ListBuilder<GAppletNodeCreateInput>? triggerNodes) =>
      _$this._triggerNodes = triggerNodes;

  GAppletCreateInputBuilder();

  GAppletCreateInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _name = $v.name;
      _triggerNodes = $v.triggerNodes.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAppletCreateInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAppletCreateInput;
  }

  @override
  void update(void Function(GAppletCreateInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAppletCreateInput build() => _build();

  _$GAppletCreateInput _build() {
    _$GAppletCreateInput _$result;
    try {
      _$result = _$v ??
          new _$GAppletCreateInput._(
              description: description,
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GAppletCreateInput', 'name'),
              triggerNodes: triggerNodes.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'triggerNodes';
        triggerNodes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAppletCreateInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAppletNodeCreateInput extends GAppletNodeCreateInput {
  @override
  final String actionId;
  @override
  final GJSON input;
  @override
  final BuiltList<GAppletNodeCreateInput> next;
  @override
  final int providerId;

  factory _$GAppletNodeCreateInput(
          [void Function(GAppletNodeCreateInputBuilder)? updates]) =>
      (new GAppletNodeCreateInputBuilder()..update(updates))._build();

  _$GAppletNodeCreateInput._(
      {required this.actionId,
      required this.input,
      required this.next,
      required this.providerId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        actionId, r'GAppletNodeCreateInput', 'actionId');
    BuiltValueNullFieldError.checkNotNull(
        input, r'GAppletNodeCreateInput', 'input');
    BuiltValueNullFieldError.checkNotNull(
        next, r'GAppletNodeCreateInput', 'next');
    BuiltValueNullFieldError.checkNotNull(
        providerId, r'GAppletNodeCreateInput', 'providerId');
  }

  @override
  GAppletNodeCreateInput rebuild(
          void Function(GAppletNodeCreateInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAppletNodeCreateInputBuilder toBuilder() =>
      new GAppletNodeCreateInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAppletNodeCreateInput &&
        actionId == other.actionId &&
        input == other.input &&
        next == other.next &&
        providerId == other.providerId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, actionId.hashCode);
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jc(_$hash, next.hashCode);
    _$hash = $jc(_$hash, providerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAppletNodeCreateInput')
          ..add('actionId', actionId)
          ..add('input', input)
          ..add('next', next)
          ..add('providerId', providerId))
        .toString();
  }
}

class GAppletNodeCreateInputBuilder
    implements Builder<GAppletNodeCreateInput, GAppletNodeCreateInputBuilder> {
  _$GAppletNodeCreateInput? _$v;

  String? _actionId;
  String? get actionId => _$this._actionId;
  set actionId(String? actionId) => _$this._actionId = actionId;

  GJSONBuilder? _input;
  GJSONBuilder get input => _$this._input ??= new GJSONBuilder();
  set input(GJSONBuilder? input) => _$this._input = input;

  ListBuilder<GAppletNodeCreateInput>? _next;
  ListBuilder<GAppletNodeCreateInput> get next =>
      _$this._next ??= new ListBuilder<GAppletNodeCreateInput>();
  set next(ListBuilder<GAppletNodeCreateInput>? next) => _$this._next = next;

  int? _providerId;
  int? get providerId => _$this._providerId;
  set providerId(int? providerId) => _$this._providerId = providerId;

  GAppletNodeCreateInputBuilder();

  GAppletNodeCreateInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _actionId = $v.actionId;
      _input = $v.input.toBuilder();
      _next = $v.next.toBuilder();
      _providerId = $v.providerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAppletNodeCreateInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAppletNodeCreateInput;
  }

  @override
  void update(void Function(GAppletNodeCreateInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAppletNodeCreateInput build() => _build();

  _$GAppletNodeCreateInput _build() {
    _$GAppletNodeCreateInput _$result;
    try {
      _$result = _$v ??
          new _$GAppletNodeCreateInput._(
              actionId: BuiltValueNullFieldError.checkNotNull(
                  actionId, r'GAppletNodeCreateInput', 'actionId'),
              input: input.build(),
              next: next.build(),
              providerId: BuiltValueNullFieldError.checkNotNull(
                  providerId, r'GAppletNodeCreateInput', 'providerId'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
        _$failedField = 'next';
        next.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAppletNodeCreateInput', _$failedField, e.toString());
      }
      rethrow;
    }
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

class _$GUserUpdateInput extends GUserUpdateInput {
  @override
  final String? description;
  @override
  final String? email;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? pronoun;
  @override
  final String? username;

  factory _$GUserUpdateInput(
          [void Function(GUserUpdateInputBuilder)? updates]) =>
      (new GUserUpdateInputBuilder()..update(updates))._build();

  _$GUserUpdateInput._(
      {this.description,
      this.email,
      this.firstName,
      this.lastName,
      this.pronoun,
      this.username})
      : super._();

  @override
  GUserUpdateInput rebuild(void Function(GUserUpdateInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserUpdateInputBuilder toBuilder() =>
      new GUserUpdateInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserUpdateInput &&
        description == other.description &&
        email == other.email &&
        firstName == other.firstName &&
        lastName == other.lastName &&
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
    _$hash = $jc(_$hash, pronoun.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserUpdateInput')
          ..add('description', description)
          ..add('email', email)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('pronoun', pronoun)
          ..add('username', username))
        .toString();
  }
}

class GUserUpdateInputBuilder
    implements Builder<GUserUpdateInput, GUserUpdateInputBuilder> {
  _$GUserUpdateInput? _$v;

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

  String? _pronoun;
  String? get pronoun => _$this._pronoun;
  set pronoun(String? pronoun) => _$this._pronoun = pronoun;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  GUserUpdateInputBuilder();

  GUserUpdateInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _email = $v.email;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _pronoun = $v.pronoun;
      _username = $v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserUpdateInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserUpdateInput;
  }

  @override
  void update(void Function(GUserUpdateInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserUpdateInput build() => _build();

  _$GUserUpdateInput _build() {
    final _$result = _$v ??
        new _$GUserUpdateInput._(
            description: description,
            email: email,
            firstName: firstName,
            lastName: lastName,
            pronoun: pronoun,
            username: username);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
