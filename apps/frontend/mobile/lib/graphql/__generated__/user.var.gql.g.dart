// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetMeVars> _$ggetMeVarsSerializer = new _$GgetMeVarsSerializer();
Serializer<GregisterVars> _$gregisterVarsSerializer =
    new _$GregisterVarsSerializer();
Serializer<GUserVars> _$gUserVarsSerializer = new _$GUserVarsSerializer();

class _$GgetMeVarsSerializer implements StructuredSerializer<GgetMeVars> {
  @override
  final Iterable<Type> types = const [GgetMeVars, _$GgetMeVars];
  @override
  final String wireName = 'GgetMeVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GgetMeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GgetMeVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GgetMeVarsBuilder().build();
  }
}

class _$GregisterVarsSerializer implements StructuredSerializer<GregisterVars> {
  @override
  final Iterable<Type> types = const [GregisterVars, _$GregisterVars];
  @override
  final String wireName = 'GregisterVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GregisterVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(_i2.GUserRegisterInput)),
    ];

    return result;
  }

  @override
  GregisterVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GregisterVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GUserRegisterInput))!
              as _i2.GUserRegisterInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserVarsSerializer implements StructuredSerializer<GUserVars> {
  @override
  final Iterable<Type> types = const [GUserVars, _$GUserVars];
  @override
  final String wireName = 'GUserVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GUserVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GUserVarsBuilder().build();
  }
}

class _$GgetMeVars extends GgetMeVars {
  factory _$GgetMeVars([void Function(GgetMeVarsBuilder)? updates]) =>
      (new GgetMeVarsBuilder()..update(updates))._build();

  _$GgetMeVars._() : super._();

  @override
  GgetMeVars rebuild(void Function(GgetMeVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetMeVarsBuilder toBuilder() => new GgetMeVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetMeVars;
  }

  @override
  int get hashCode {
    return 486157557;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GgetMeVars').toString();
  }
}

class GgetMeVarsBuilder implements Builder<GgetMeVars, GgetMeVarsBuilder> {
  _$GgetMeVars? _$v;

  GgetMeVarsBuilder();

  @override
  void replace(GgetMeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetMeVars;
  }

  @override
  void update(void Function(GgetMeVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetMeVars build() => _build();

  _$GgetMeVars _build() {
    final _$result = _$v ?? new _$GgetMeVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GregisterVars extends GregisterVars {
  @override
  final _i2.GUserRegisterInput data;

  factory _$GregisterVars([void Function(GregisterVarsBuilder)? updates]) =>
      (new GregisterVarsBuilder()..update(updates))._build();

  _$GregisterVars._({required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(data, r'GregisterVars', 'data');
  }

  @override
  GregisterVars rebuild(void Function(GregisterVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GregisterVarsBuilder toBuilder() => new GregisterVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GregisterVars && data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GregisterVars')..add('data', data))
        .toString();
  }
}

class GregisterVarsBuilder
    implements Builder<GregisterVars, GregisterVarsBuilder> {
  _$GregisterVars? _$v;

  _i2.GUserRegisterInputBuilder? _data;
  _i2.GUserRegisterInputBuilder get data =>
      _$this._data ??= new _i2.GUserRegisterInputBuilder();
  set data(_i2.GUserRegisterInputBuilder? data) => _$this._data = data;

  GregisterVarsBuilder();

  GregisterVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GregisterVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GregisterVars;
  }

  @override
  void update(void Function(GregisterVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GregisterVars build() => _build();

  _$GregisterVars _build() {
    _$GregisterVars _$result;
    try {
      _$result = _$v ?? new _$GregisterVars._(data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GregisterVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserVars extends GUserVars {
  factory _$GUserVars([void Function(GUserVarsBuilder)? updates]) =>
      (new GUserVarsBuilder()..update(updates))._build();

  _$GUserVars._() : super._();

  @override
  GUserVars rebuild(void Function(GUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserVarsBuilder toBuilder() => new GUserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserVars;
  }

  @override
  int get hashCode {
    return 1056382329;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GUserVars').toString();
  }
}

class GUserVarsBuilder implements Builder<GUserVars, GUserVarsBuilder> {
  _$GUserVars? _$v;

  GUserVarsBuilder();

  @override
  void replace(GUserVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserVars;
  }

  @override
  void update(void Function(GUserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserVars build() => _build();

  _$GUserVars _build() {
    final _$result = _$v ?? new _$GUserVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
