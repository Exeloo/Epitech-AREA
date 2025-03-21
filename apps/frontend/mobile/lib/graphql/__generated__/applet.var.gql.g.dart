// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applet.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetAllAppletsVars> _$ggetAllAppletsVarsSerializer =
    new _$GgetAllAppletsVarsSerializer();
Serializer<GgetAppletByIdVars> _$ggetAppletByIdVarsSerializer =
    new _$GgetAppletByIdVarsSerializer();
Serializer<GgetAppletNodeByIdVars> _$ggetAppletNodeByIdVarsSerializer =
    new _$GgetAppletNodeByIdVarsSerializer();
Serializer<GcreateAppletVars> _$gcreateAppletVarsSerializer =
    new _$GcreateAppletVarsSerializer();
Serializer<GupdateAppletVars> _$gupdateAppletVarsSerializer =
    new _$GupdateAppletVarsSerializer();
Serializer<GdeleteAppletVars> _$gdeleteAppletVarsSerializer =
    new _$GdeleteAppletVarsSerializer();
Serializer<GBaseAppletProviderVars> _$gBaseAppletProviderVarsSerializer =
    new _$GBaseAppletProviderVarsSerializer();
Serializer<GBaseAppletNodeVars> _$gBaseAppletNodeVarsSerializer =
    new _$GBaseAppletNodeVarsSerializer();
Serializer<GExtendedAppletNodeVars> _$gExtendedAppletNodeVarsSerializer =
    new _$GExtendedAppletNodeVarsSerializer();
Serializer<GBaseAppletVars> _$gBaseAppletVarsSerializer =
    new _$GBaseAppletVarsSerializer();
Serializer<GAppletWithNodesVars> _$gAppletWithNodesVarsSerializer =
    new _$GAppletWithNodesVarsSerializer();

class _$GgetAllAppletsVarsSerializer
    implements StructuredSerializer<GgetAllAppletsVars> {
  @override
  final Iterable<Type> types = const [GgetAllAppletsVars, _$GgetAllAppletsVars];
  @override
  final String wireName = 'GgetAllAppletsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetAllAppletsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GgetAllAppletsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GgetAllAppletsVarsBuilder().build();
  }
}

class _$GgetAppletByIdVarsSerializer
    implements StructuredSerializer<GgetAppletByIdVars> {
  @override
  final Iterable<Type> types = const [GgetAppletByIdVars, _$GgetAppletByIdVars];
  @override
  final String wireName = 'GgetAppletByIdVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetAppletByIdVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GgetAppletByIdVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetAppletByIdVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetAppletNodeByIdVarsSerializer
    implements StructuredSerializer<GgetAppletNodeByIdVars> {
  @override
  final Iterable<Type> types = const [
    GgetAppletNodeByIdVars,
    _$GgetAppletNodeByIdVars
  ];
  @override
  final String wireName = 'GgetAppletNodeByIdVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetAppletNodeByIdVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GgetAppletNodeByIdVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetAppletNodeByIdVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GcreateAppletVarsSerializer
    implements StructuredSerializer<GcreateAppletVars> {
  @override
  final Iterable<Type> types = const [GcreateAppletVars, _$GcreateAppletVars];
  @override
  final String wireName = 'GcreateAppletVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GcreateAppletVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(_i2.GAppletCreateInput)),
    ];

    return result;
  }

  @override
  GcreateAppletVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcreateAppletVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GAppletCreateInput))!
              as _i2.GAppletCreateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GupdateAppletVarsSerializer
    implements StructuredSerializer<GupdateAppletVars> {
  @override
  final Iterable<Type> types = const [GupdateAppletVars, _$GupdateAppletVars];
  @override
  final String wireName = 'GupdateAppletVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GupdateAppletVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(_i2.GAppletUpdateInput)),
    ];

    return result;
  }

  @override
  GupdateAppletVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GupdateAppletVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GAppletUpdateInput))!
              as _i2.GAppletUpdateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GdeleteAppletVarsSerializer
    implements StructuredSerializer<GdeleteAppletVars> {
  @override
  final Iterable<Type> types = const [GdeleteAppletVars, _$GdeleteAppletVars];
  @override
  final String wireName = 'GdeleteAppletVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GdeleteAppletVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GdeleteAppletVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdeleteAppletVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GBaseAppletProviderVarsSerializer
    implements StructuredSerializer<GBaseAppletProviderVars> {
  @override
  final Iterable<Type> types = const [
    GBaseAppletProviderVars,
    _$GBaseAppletProviderVars
  ];
  @override
  final String wireName = 'GBaseAppletProviderVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GBaseAppletProviderVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GBaseAppletProviderVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GBaseAppletProviderVarsBuilder().build();
  }
}

class _$GBaseAppletNodeVarsSerializer
    implements StructuredSerializer<GBaseAppletNodeVars> {
  @override
  final Iterable<Type> types = const [
    GBaseAppletNodeVars,
    _$GBaseAppletNodeVars
  ];
  @override
  final String wireName = 'GBaseAppletNodeVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GBaseAppletNodeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GBaseAppletNodeVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GBaseAppletNodeVarsBuilder().build();
  }
}

class _$GExtendedAppletNodeVarsSerializer
    implements StructuredSerializer<GExtendedAppletNodeVars> {
  @override
  final Iterable<Type> types = const [
    GExtendedAppletNodeVars,
    _$GExtendedAppletNodeVars
  ];
  @override
  final String wireName = 'GExtendedAppletNodeVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GExtendedAppletNodeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GExtendedAppletNodeVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GExtendedAppletNodeVarsBuilder().build();
  }
}

class _$GBaseAppletVarsSerializer
    implements StructuredSerializer<GBaseAppletVars> {
  @override
  final Iterable<Type> types = const [GBaseAppletVars, _$GBaseAppletVars];
  @override
  final String wireName = 'GBaseAppletVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GBaseAppletVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GBaseAppletVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GBaseAppletVarsBuilder().build();
  }
}

class _$GAppletWithNodesVarsSerializer
    implements StructuredSerializer<GAppletWithNodesVars> {
  @override
  final Iterable<Type> types = const [
    GAppletWithNodesVars,
    _$GAppletWithNodesVars
  ];
  @override
  final String wireName = 'GAppletWithNodesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAppletWithNodesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GAppletWithNodesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GAppletWithNodesVarsBuilder().build();
  }
}

class _$GgetAllAppletsVars extends GgetAllAppletsVars {
  factory _$GgetAllAppletsVars(
          [void Function(GgetAllAppletsVarsBuilder)? updates]) =>
      (new GgetAllAppletsVarsBuilder()..update(updates))._build();

  _$GgetAllAppletsVars._() : super._();

  @override
  GgetAllAppletsVars rebuild(
          void Function(GgetAllAppletsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAllAppletsVarsBuilder toBuilder() =>
      new GgetAllAppletsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetAllAppletsVars;
  }

  @override
  int get hashCode {
    return 626121800;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GgetAllAppletsVars').toString();
  }
}

class GgetAllAppletsVarsBuilder
    implements Builder<GgetAllAppletsVars, GgetAllAppletsVarsBuilder> {
  _$GgetAllAppletsVars? _$v;

  GgetAllAppletsVarsBuilder();

  @override
  void replace(GgetAllAppletsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAllAppletsVars;
  }

  @override
  void update(void Function(GgetAllAppletsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAllAppletsVars build() => _build();

  _$GgetAllAppletsVars _build() {
    final _$result = _$v ?? new _$GgetAllAppletsVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GgetAppletByIdVars extends GgetAppletByIdVars {
  @override
  final int id;

  factory _$GgetAppletByIdVars(
          [void Function(GgetAppletByIdVarsBuilder)? updates]) =>
      (new GgetAppletByIdVarsBuilder()..update(updates))._build();

  _$GgetAppletByIdVars._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GgetAppletByIdVars', 'id');
  }

  @override
  GgetAppletByIdVars rebuild(
          void Function(GgetAppletByIdVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAppletByIdVarsBuilder toBuilder() =>
      new GgetAppletByIdVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetAppletByIdVars && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetAppletByIdVars')..add('id', id))
        .toString();
  }
}

class GgetAppletByIdVarsBuilder
    implements Builder<GgetAppletByIdVars, GgetAppletByIdVarsBuilder> {
  _$GgetAppletByIdVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GgetAppletByIdVarsBuilder();

  GgetAppletByIdVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetAppletByIdVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAppletByIdVars;
  }

  @override
  void update(void Function(GgetAppletByIdVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAppletByIdVars build() => _build();

  _$GgetAppletByIdVars _build() {
    final _$result = _$v ??
        new _$GgetAppletByIdVars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GgetAppletByIdVars', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GgetAppletNodeByIdVars extends GgetAppletNodeByIdVars {
  @override
  final int id;

  factory _$GgetAppletNodeByIdVars(
          [void Function(GgetAppletNodeByIdVarsBuilder)? updates]) =>
      (new GgetAppletNodeByIdVarsBuilder()..update(updates))._build();

  _$GgetAppletNodeByIdVars._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GgetAppletNodeByIdVars', 'id');
  }

  @override
  GgetAppletNodeByIdVars rebuild(
          void Function(GgetAppletNodeByIdVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAppletNodeByIdVarsBuilder toBuilder() =>
      new GgetAppletNodeByIdVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetAppletNodeByIdVars && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetAppletNodeByIdVars')
          ..add('id', id))
        .toString();
  }
}

class GgetAppletNodeByIdVarsBuilder
    implements Builder<GgetAppletNodeByIdVars, GgetAppletNodeByIdVarsBuilder> {
  _$GgetAppletNodeByIdVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GgetAppletNodeByIdVarsBuilder();

  GgetAppletNodeByIdVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetAppletNodeByIdVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAppletNodeByIdVars;
  }

  @override
  void update(void Function(GgetAppletNodeByIdVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAppletNodeByIdVars build() => _build();

  _$GgetAppletNodeByIdVars _build() {
    final _$result = _$v ??
        new _$GgetAppletNodeByIdVars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GgetAppletNodeByIdVars', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GcreateAppletVars extends GcreateAppletVars {
  @override
  final _i2.GAppletCreateInput data;

  factory _$GcreateAppletVars(
          [void Function(GcreateAppletVarsBuilder)? updates]) =>
      (new GcreateAppletVarsBuilder()..update(updates))._build();

  _$GcreateAppletVars._({required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(data, r'GcreateAppletVars', 'data');
  }

  @override
  GcreateAppletVars rebuild(void Function(GcreateAppletVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcreateAppletVarsBuilder toBuilder() =>
      new GcreateAppletVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcreateAppletVars && data == other.data;
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
    return (newBuiltValueToStringHelper(r'GcreateAppletVars')
          ..add('data', data))
        .toString();
  }
}

class GcreateAppletVarsBuilder
    implements Builder<GcreateAppletVars, GcreateAppletVarsBuilder> {
  _$GcreateAppletVars? _$v;

  _i2.GAppletCreateInputBuilder? _data;
  _i2.GAppletCreateInputBuilder get data =>
      _$this._data ??= new _i2.GAppletCreateInputBuilder();
  set data(_i2.GAppletCreateInputBuilder? data) => _$this._data = data;

  GcreateAppletVarsBuilder();

  GcreateAppletVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcreateAppletVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcreateAppletVars;
  }

  @override
  void update(void Function(GcreateAppletVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GcreateAppletVars build() => _build();

  _$GcreateAppletVars _build() {
    _$GcreateAppletVars _$result;
    try {
      _$result = _$v ?? new _$GcreateAppletVars._(data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GcreateAppletVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GupdateAppletVars extends GupdateAppletVars {
  @override
  final int id;
  @override
  final _i2.GAppletUpdateInput data;

  factory _$GupdateAppletVars(
          [void Function(GupdateAppletVarsBuilder)? updates]) =>
      (new GupdateAppletVarsBuilder()..update(updates))._build();

  _$GupdateAppletVars._({required this.id, required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GupdateAppletVars', 'id');
    BuiltValueNullFieldError.checkNotNull(data, r'GupdateAppletVars', 'data');
  }

  @override
  GupdateAppletVars rebuild(void Function(GupdateAppletVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupdateAppletVarsBuilder toBuilder() =>
      new GupdateAppletVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GupdateAppletVars && id == other.id && data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GupdateAppletVars')
          ..add('id', id)
          ..add('data', data))
        .toString();
  }
}

class GupdateAppletVarsBuilder
    implements Builder<GupdateAppletVars, GupdateAppletVarsBuilder> {
  _$GupdateAppletVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i2.GAppletUpdateInputBuilder? _data;
  _i2.GAppletUpdateInputBuilder get data =>
      _$this._data ??= new _i2.GAppletUpdateInputBuilder();
  set data(_i2.GAppletUpdateInputBuilder? data) => _$this._data = data;

  GupdateAppletVarsBuilder();

  GupdateAppletVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GupdateAppletVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupdateAppletVars;
  }

  @override
  void update(void Function(GupdateAppletVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GupdateAppletVars build() => _build();

  _$GupdateAppletVars _build() {
    _$GupdateAppletVars _$result;
    try {
      _$result = _$v ??
          new _$GupdateAppletVars._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GupdateAppletVars', 'id'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GupdateAppletVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GdeleteAppletVars extends GdeleteAppletVars {
  @override
  final int id;

  factory _$GdeleteAppletVars(
          [void Function(GdeleteAppletVarsBuilder)? updates]) =>
      (new GdeleteAppletVarsBuilder()..update(updates))._build();

  _$GdeleteAppletVars._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GdeleteAppletVars', 'id');
  }

  @override
  GdeleteAppletVars rebuild(void Function(GdeleteAppletVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdeleteAppletVarsBuilder toBuilder() =>
      new GdeleteAppletVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdeleteAppletVars && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GdeleteAppletVars')..add('id', id))
        .toString();
  }
}

class GdeleteAppletVarsBuilder
    implements Builder<GdeleteAppletVars, GdeleteAppletVarsBuilder> {
  _$GdeleteAppletVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GdeleteAppletVarsBuilder();

  GdeleteAppletVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GdeleteAppletVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdeleteAppletVars;
  }

  @override
  void update(void Function(GdeleteAppletVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdeleteAppletVars build() => _build();

  _$GdeleteAppletVars _build() {
    final _$result = _$v ??
        new _$GdeleteAppletVars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GdeleteAppletVars', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GBaseAppletProviderVars extends GBaseAppletProviderVars {
  factory _$GBaseAppletProviderVars(
          [void Function(GBaseAppletProviderVarsBuilder)? updates]) =>
      (new GBaseAppletProviderVarsBuilder()..update(updates))._build();

  _$GBaseAppletProviderVars._() : super._();

  @override
  GBaseAppletProviderVars rebuild(
          void Function(GBaseAppletProviderVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBaseAppletProviderVarsBuilder toBuilder() =>
      new GBaseAppletProviderVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBaseAppletProviderVars;
  }

  @override
  int get hashCode {
    return 255751447;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GBaseAppletProviderVars').toString();
  }
}

class GBaseAppletProviderVarsBuilder
    implements
        Builder<GBaseAppletProviderVars, GBaseAppletProviderVarsBuilder> {
  _$GBaseAppletProviderVars? _$v;

  GBaseAppletProviderVarsBuilder();

  @override
  void replace(GBaseAppletProviderVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBaseAppletProviderVars;
  }

  @override
  void update(void Function(GBaseAppletProviderVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBaseAppletProviderVars build() => _build();

  _$GBaseAppletProviderVars _build() {
    final _$result = _$v ?? new _$GBaseAppletProviderVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GBaseAppletNodeVars extends GBaseAppletNodeVars {
  factory _$GBaseAppletNodeVars(
          [void Function(GBaseAppletNodeVarsBuilder)? updates]) =>
      (new GBaseAppletNodeVarsBuilder()..update(updates))._build();

  _$GBaseAppletNodeVars._() : super._();

  @override
  GBaseAppletNodeVars rebuild(
          void Function(GBaseAppletNodeVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBaseAppletNodeVarsBuilder toBuilder() =>
      new GBaseAppletNodeVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBaseAppletNodeVars;
  }

  @override
  int get hashCode {
    return 437728117;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GBaseAppletNodeVars').toString();
  }
}

class GBaseAppletNodeVarsBuilder
    implements Builder<GBaseAppletNodeVars, GBaseAppletNodeVarsBuilder> {
  _$GBaseAppletNodeVars? _$v;

  GBaseAppletNodeVarsBuilder();

  @override
  void replace(GBaseAppletNodeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBaseAppletNodeVars;
  }

  @override
  void update(void Function(GBaseAppletNodeVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBaseAppletNodeVars build() => _build();

  _$GBaseAppletNodeVars _build() {
    final _$result = _$v ?? new _$GBaseAppletNodeVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GExtendedAppletNodeVars extends GExtendedAppletNodeVars {
  factory _$GExtendedAppletNodeVars(
          [void Function(GExtendedAppletNodeVarsBuilder)? updates]) =>
      (new GExtendedAppletNodeVarsBuilder()..update(updates))._build();

  _$GExtendedAppletNodeVars._() : super._();

  @override
  GExtendedAppletNodeVars rebuild(
          void Function(GExtendedAppletNodeVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExtendedAppletNodeVarsBuilder toBuilder() =>
      new GExtendedAppletNodeVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExtendedAppletNodeVars;
  }

  @override
  int get hashCode {
    return 954437777;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GExtendedAppletNodeVars').toString();
  }
}

class GExtendedAppletNodeVarsBuilder
    implements
        Builder<GExtendedAppletNodeVars, GExtendedAppletNodeVarsBuilder> {
  _$GExtendedAppletNodeVars? _$v;

  GExtendedAppletNodeVarsBuilder();

  @override
  void replace(GExtendedAppletNodeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExtendedAppletNodeVars;
  }

  @override
  void update(void Function(GExtendedAppletNodeVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExtendedAppletNodeVars build() => _build();

  _$GExtendedAppletNodeVars _build() {
    final _$result = _$v ?? new _$GExtendedAppletNodeVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GBaseAppletVars extends GBaseAppletVars {
  factory _$GBaseAppletVars([void Function(GBaseAppletVarsBuilder)? updates]) =>
      (new GBaseAppletVarsBuilder()..update(updates))._build();

  _$GBaseAppletVars._() : super._();

  @override
  GBaseAppletVars rebuild(void Function(GBaseAppletVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBaseAppletVarsBuilder toBuilder() =>
      new GBaseAppletVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBaseAppletVars;
  }

  @override
  int get hashCode {
    return 706653856;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GBaseAppletVars').toString();
  }
}

class GBaseAppletVarsBuilder
    implements Builder<GBaseAppletVars, GBaseAppletVarsBuilder> {
  _$GBaseAppletVars? _$v;

  GBaseAppletVarsBuilder();

  @override
  void replace(GBaseAppletVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBaseAppletVars;
  }

  @override
  void update(void Function(GBaseAppletVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBaseAppletVars build() => _build();

  _$GBaseAppletVars _build() {
    final _$result = _$v ?? new _$GBaseAppletVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GAppletWithNodesVars extends GAppletWithNodesVars {
  factory _$GAppletWithNodesVars(
          [void Function(GAppletWithNodesVarsBuilder)? updates]) =>
      (new GAppletWithNodesVarsBuilder()..update(updates))._build();

  _$GAppletWithNodesVars._() : super._();

  @override
  GAppletWithNodesVars rebuild(
          void Function(GAppletWithNodesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAppletWithNodesVarsBuilder toBuilder() =>
      new GAppletWithNodesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAppletWithNodesVars;
  }

  @override
  int get hashCode {
    return 774085330;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GAppletWithNodesVars').toString();
  }
}

class GAppletWithNodesVarsBuilder
    implements Builder<GAppletWithNodesVars, GAppletWithNodesVarsBuilder> {
  _$GAppletWithNodesVars? _$v;

  GAppletWithNodesVarsBuilder();

  @override
  void replace(GAppletWithNodesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAppletWithNodesVars;
  }

  @override
  void update(void Function(GAppletWithNodesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAppletWithNodesVars build() => _build();

  _$GAppletWithNodesVars _build() {
    final _$result = _$v ?? new _$GAppletWithNodesVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
