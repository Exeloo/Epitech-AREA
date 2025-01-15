// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GloginVars> _$gloginVarsSerializer = new _$GloginVarsSerializer();
Serializer<GrefreshTokenVars> _$grefreshTokenVarsSerializer =
    new _$GrefreshTokenVarsSerializer();
Serializer<GTokenFieldsVars> _$gTokenFieldsVarsSerializer =
    new _$GTokenFieldsVarsSerializer();

class _$GloginVarsSerializer implements StructuredSerializer<GloginVars> {
  @override
  final Iterable<Type> types = const [GloginVars, _$GloginVars];
  @override
  final String wireName = 'GloginVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GloginVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(_i1.GAuthPasswordInput)),
    ];

    return result;
  }

  @override
  GloginVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GloginVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GAuthPasswordInput))!
              as _i1.GAuthPasswordInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GrefreshTokenVarsSerializer
    implements StructuredSerializer<GrefreshTokenVars> {
  @override
  final Iterable<Type> types = const [GrefreshTokenVars, _$GrefreshTokenVars];
  @override
  final String wireName = 'GrefreshTokenVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GrefreshTokenVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(_i1.GAuthRefreshTokenInput)),
    ];

    return result;
  }

  @override
  GrefreshTokenVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GrefreshTokenVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GAuthRefreshTokenInput))!
              as _i1.GAuthRefreshTokenInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GTokenFieldsVarsSerializer
    implements StructuredSerializer<GTokenFieldsVars> {
  @override
  final Iterable<Type> types = const [GTokenFieldsVars, _$GTokenFieldsVars];
  @override
  final String wireName = 'GTokenFieldsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GTokenFieldsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GTokenFieldsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GTokenFieldsVarsBuilder().build();
  }
}

class _$GloginVars extends GloginVars {
  @override
  final _i1.GAuthPasswordInput data;

  factory _$GloginVars([void Function(GloginVarsBuilder)? updates]) =>
      (new GloginVarsBuilder()..update(updates))._build();

  _$GloginVars._({required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(data, r'GloginVars', 'data');
  }

  @override
  GloginVars rebuild(void Function(GloginVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GloginVarsBuilder toBuilder() => new GloginVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GloginVars && data == other.data;
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
    return (newBuiltValueToStringHelper(r'GloginVars')..add('data', data))
        .toString();
  }
}

class GloginVarsBuilder implements Builder<GloginVars, GloginVarsBuilder> {
  _$GloginVars? _$v;

  _i1.GAuthPasswordInputBuilder? _data;
  _i1.GAuthPasswordInputBuilder get data =>
      _$this._data ??= new _i1.GAuthPasswordInputBuilder();
  set data(_i1.GAuthPasswordInputBuilder? data) => _$this._data = data;

  GloginVarsBuilder();

  GloginVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GloginVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GloginVars;
  }

  @override
  void update(void Function(GloginVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GloginVars build() => _build();

  _$GloginVars _build() {
    _$GloginVars _$result;
    try {
      _$result = _$v ??
          new _$GloginVars._(
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GloginVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GrefreshTokenVars extends GrefreshTokenVars {
  @override
  final _i1.GAuthRefreshTokenInput data;

  factory _$GrefreshTokenVars(
          [void Function(GrefreshTokenVarsBuilder)? updates]) =>
      (new GrefreshTokenVarsBuilder()..update(updates))._build();

  _$GrefreshTokenVars._({required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(data, r'GrefreshTokenVars', 'data');
  }

  @override
  GrefreshTokenVars rebuild(void Function(GrefreshTokenVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GrefreshTokenVarsBuilder toBuilder() =>
      new GrefreshTokenVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GrefreshTokenVars && data == other.data;
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
    return (newBuiltValueToStringHelper(r'GrefreshTokenVars')
          ..add('data', data))
        .toString();
  }
}

class GrefreshTokenVarsBuilder
    implements Builder<GrefreshTokenVars, GrefreshTokenVarsBuilder> {
  _$GrefreshTokenVars? _$v;

  _i1.GAuthRefreshTokenInputBuilder? _data;
  _i1.GAuthRefreshTokenInputBuilder get data =>
      _$this._data ??= new _i1.GAuthRefreshTokenInputBuilder();
  set data(_i1.GAuthRefreshTokenInputBuilder? data) => _$this._data = data;

  GrefreshTokenVarsBuilder();

  GrefreshTokenVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GrefreshTokenVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GrefreshTokenVars;
  }

  @override
  void update(void Function(GrefreshTokenVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GrefreshTokenVars build() => _build();

  _$GrefreshTokenVars _build() {
    _$GrefreshTokenVars _$result;
    try {
      _$result = _$v ??
          new _$GrefreshTokenVars._(
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GrefreshTokenVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GTokenFieldsVars extends GTokenFieldsVars {
  factory _$GTokenFieldsVars(
          [void Function(GTokenFieldsVarsBuilder)? updates]) =>
      (new GTokenFieldsVarsBuilder()..update(updates))._build();

  _$GTokenFieldsVars._() : super._();

  @override
  GTokenFieldsVars rebuild(void Function(GTokenFieldsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTokenFieldsVarsBuilder toBuilder() =>
      new GTokenFieldsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTokenFieldsVars;
  }

  @override
  int get hashCode {
    return 104686833;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GTokenFieldsVars').toString();
  }
}

class GTokenFieldsVarsBuilder
    implements Builder<GTokenFieldsVars, GTokenFieldsVarsBuilder> {
  _$GTokenFieldsVars? _$v;

  GTokenFieldsVarsBuilder();

  @override
  void replace(GTokenFieldsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GTokenFieldsVars;
  }

  @override
  void update(void Function(GTokenFieldsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GTokenFieldsVars build() => _build();

  _$GTokenFieldsVars _build() {
    final _$result = _$v ?? new _$GTokenFieldsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
