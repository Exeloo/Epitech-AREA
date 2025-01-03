// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetAllProvidersVars> _$ggetAllProvidersVarsSerializer =
    new _$GgetAllProvidersVarsSerializer();
Serializer<GgetProviderByIdVars> _$ggetProviderByIdVarsSerializer =
    new _$GgetProviderByIdVarsSerializer();
Serializer<GProviderManifestActionVars>
    _$gProviderManifestActionVarsSerializer =
    new _$GProviderManifestActionVarsSerializer();
Serializer<GProviderManifestTriggerVars>
    _$gProviderManifestTriggerVarsSerializer =
    new _$GProviderManifestTriggerVarsSerializer();
Serializer<GBaseProviderVars> _$gBaseProviderVarsSerializer =
    new _$GBaseProviderVarsSerializer();
Serializer<GProviderWithManifestVars> _$gProviderWithManifestVarsSerializer =
    new _$GProviderWithManifestVarsSerializer();

class _$GgetAllProvidersVarsSerializer
    implements StructuredSerializer<GgetAllProvidersVars> {
  @override
  final Iterable<Type> types = const [
    GgetAllProvidersVars,
    _$GgetAllProvidersVars
  ];
  @override
  final String wireName = 'GgetAllProvidersVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetAllProvidersVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GgetAllProvidersVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GgetAllProvidersVarsBuilder().build();
  }
}

class _$GgetProviderByIdVarsSerializer
    implements StructuredSerializer<GgetProviderByIdVars> {
  @override
  final Iterable<Type> types = const [
    GgetProviderByIdVars,
    _$GgetProviderByIdVars
  ];
  @override
  final String wireName = 'GgetProviderByIdVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetProviderByIdVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GgetProviderByIdVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetProviderByIdVarsBuilder();

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

class _$GProviderManifestActionVarsSerializer
    implements StructuredSerializer<GProviderManifestActionVars> {
  @override
  final Iterable<Type> types = const [
    GProviderManifestActionVars,
    _$GProviderManifestActionVars
  ];
  @override
  final String wireName = 'GProviderManifestActionVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProviderManifestActionVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GProviderManifestActionVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GProviderManifestActionVarsBuilder().build();
  }
}

class _$GProviderManifestTriggerVarsSerializer
    implements StructuredSerializer<GProviderManifestTriggerVars> {
  @override
  final Iterable<Type> types = const [
    GProviderManifestTriggerVars,
    _$GProviderManifestTriggerVars
  ];
  @override
  final String wireName = 'GProviderManifestTriggerVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProviderManifestTriggerVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GProviderManifestTriggerVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GProviderManifestTriggerVarsBuilder().build();
  }
}

class _$GBaseProviderVarsSerializer
    implements StructuredSerializer<GBaseProviderVars> {
  @override
  final Iterable<Type> types = const [GBaseProviderVars, _$GBaseProviderVars];
  @override
  final String wireName = 'GBaseProviderVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GBaseProviderVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GBaseProviderVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GBaseProviderVarsBuilder().build();
  }
}

class _$GProviderWithManifestVarsSerializer
    implements StructuredSerializer<GProviderWithManifestVars> {
  @override
  final Iterable<Type> types = const [
    GProviderWithManifestVars,
    _$GProviderWithManifestVars
  ];
  @override
  final String wireName = 'GProviderWithManifestVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProviderWithManifestVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GProviderWithManifestVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GProviderWithManifestVarsBuilder().build();
  }
}

class _$GgetAllProvidersVars extends GgetAllProvidersVars {
  factory _$GgetAllProvidersVars(
          [void Function(GgetAllProvidersVarsBuilder)? updates]) =>
      (new GgetAllProvidersVarsBuilder()..update(updates))._build();

  _$GgetAllProvidersVars._() : super._();

  @override
  GgetAllProvidersVars rebuild(
          void Function(GgetAllProvidersVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAllProvidersVarsBuilder toBuilder() =>
      new GgetAllProvidersVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetAllProvidersVars;
  }

  @override
  int get hashCode {
    return 141723882;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GgetAllProvidersVars').toString();
  }
}

class GgetAllProvidersVarsBuilder
    implements Builder<GgetAllProvidersVars, GgetAllProvidersVarsBuilder> {
  _$GgetAllProvidersVars? _$v;

  GgetAllProvidersVarsBuilder();

  @override
  void replace(GgetAllProvidersVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAllProvidersVars;
  }

  @override
  void update(void Function(GgetAllProvidersVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAllProvidersVars build() => _build();

  _$GgetAllProvidersVars _build() {
    final _$result = _$v ?? new _$GgetAllProvidersVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GgetProviderByIdVars extends GgetProviderByIdVars {
  @override
  final int id;

  factory _$GgetProviderByIdVars(
          [void Function(GgetProviderByIdVarsBuilder)? updates]) =>
      (new GgetProviderByIdVarsBuilder()..update(updates))._build();

  _$GgetProviderByIdVars._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GgetProviderByIdVars', 'id');
  }

  @override
  GgetProviderByIdVars rebuild(
          void Function(GgetProviderByIdVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetProviderByIdVarsBuilder toBuilder() =>
      new GgetProviderByIdVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetProviderByIdVars && id == other.id;
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
    return (newBuiltValueToStringHelper(r'GgetProviderByIdVars')..add('id', id))
        .toString();
  }
}

class GgetProviderByIdVarsBuilder
    implements Builder<GgetProviderByIdVars, GgetProviderByIdVarsBuilder> {
  _$GgetProviderByIdVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GgetProviderByIdVarsBuilder();

  GgetProviderByIdVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetProviderByIdVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetProviderByIdVars;
  }

  @override
  void update(void Function(GgetProviderByIdVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetProviderByIdVars build() => _build();

  _$GgetProviderByIdVars _build() {
    final _$result = _$v ??
        new _$GgetProviderByIdVars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GgetProviderByIdVars', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GProviderManifestActionVars extends GProviderManifestActionVars {
  factory _$GProviderManifestActionVars(
          [void Function(GProviderManifestActionVarsBuilder)? updates]) =>
      (new GProviderManifestActionVarsBuilder()..update(updates))._build();

  _$GProviderManifestActionVars._() : super._();

  @override
  GProviderManifestActionVars rebuild(
          void Function(GProviderManifestActionVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProviderManifestActionVarsBuilder toBuilder() =>
      new GProviderManifestActionVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProviderManifestActionVars;
  }

  @override
  int get hashCode {
    return 75716004;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GProviderManifestActionVars')
        .toString();
  }
}

class GProviderManifestActionVarsBuilder
    implements
        Builder<GProviderManifestActionVars,
            GProviderManifestActionVarsBuilder> {
  _$GProviderManifestActionVars? _$v;

  GProviderManifestActionVarsBuilder();

  @override
  void replace(GProviderManifestActionVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProviderManifestActionVars;
  }

  @override
  void update(void Function(GProviderManifestActionVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GProviderManifestActionVars build() => _build();

  _$GProviderManifestActionVars _build() {
    final _$result = _$v ?? new _$GProviderManifestActionVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GProviderManifestTriggerVars extends GProviderManifestTriggerVars {
  factory _$GProviderManifestTriggerVars(
          [void Function(GProviderManifestTriggerVarsBuilder)? updates]) =>
      (new GProviderManifestTriggerVarsBuilder()..update(updates))._build();

  _$GProviderManifestTriggerVars._() : super._();

  @override
  GProviderManifestTriggerVars rebuild(
          void Function(GProviderManifestTriggerVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProviderManifestTriggerVarsBuilder toBuilder() =>
      new GProviderManifestTriggerVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProviderManifestTriggerVars;
  }

  @override
  int get hashCode {
    return 381740610;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GProviderManifestTriggerVars')
        .toString();
  }
}

class GProviderManifestTriggerVarsBuilder
    implements
        Builder<GProviderManifestTriggerVars,
            GProviderManifestTriggerVarsBuilder> {
  _$GProviderManifestTriggerVars? _$v;

  GProviderManifestTriggerVarsBuilder();

  @override
  void replace(GProviderManifestTriggerVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProviderManifestTriggerVars;
  }

  @override
  void update(void Function(GProviderManifestTriggerVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GProviderManifestTriggerVars build() => _build();

  _$GProviderManifestTriggerVars _build() {
    final _$result = _$v ?? new _$GProviderManifestTriggerVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GBaseProviderVars extends GBaseProviderVars {
  factory _$GBaseProviderVars(
          [void Function(GBaseProviderVarsBuilder)? updates]) =>
      (new GBaseProviderVarsBuilder()..update(updates))._build();

  _$GBaseProviderVars._() : super._();

  @override
  GBaseProviderVars rebuild(void Function(GBaseProviderVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBaseProviderVarsBuilder toBuilder() =>
      new GBaseProviderVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBaseProviderVars;
  }

  @override
  int get hashCode {
    return 991741240;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GBaseProviderVars').toString();
  }
}

class GBaseProviderVarsBuilder
    implements Builder<GBaseProviderVars, GBaseProviderVarsBuilder> {
  _$GBaseProviderVars? _$v;

  GBaseProviderVarsBuilder();

  @override
  void replace(GBaseProviderVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBaseProviderVars;
  }

  @override
  void update(void Function(GBaseProviderVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBaseProviderVars build() => _build();

  _$GBaseProviderVars _build() {
    final _$result = _$v ?? new _$GBaseProviderVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GProviderWithManifestVars extends GProviderWithManifestVars {
  factory _$GProviderWithManifestVars(
          [void Function(GProviderWithManifestVarsBuilder)? updates]) =>
      (new GProviderWithManifestVarsBuilder()..update(updates))._build();

  _$GProviderWithManifestVars._() : super._();

  @override
  GProviderWithManifestVars rebuild(
          void Function(GProviderWithManifestVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProviderWithManifestVarsBuilder toBuilder() =>
      new GProviderWithManifestVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProviderWithManifestVars;
  }

  @override
  int get hashCode {
    return 207963779;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GProviderWithManifestVars').toString();
  }
}

class GProviderWithManifestVarsBuilder
    implements
        Builder<GProviderWithManifestVars, GProviderWithManifestVarsBuilder> {
  _$GProviderWithManifestVars? _$v;

  GProviderWithManifestVarsBuilder();

  @override
  void replace(GProviderWithManifestVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProviderWithManifestVars;
  }

  @override
  void update(void Function(GProviderWithManifestVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GProviderWithManifestVars build() => _build();

  _$GProviderWithManifestVars _build() {
    final _$result = _$v ?? new _$GProviderWithManifestVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
