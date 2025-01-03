// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetAllProvidersReq> _$ggetAllProvidersReqSerializer =
    new _$GgetAllProvidersReqSerializer();
Serializer<GgetProviderByIdReq> _$ggetProviderByIdReqSerializer =
    new _$GgetProviderByIdReqSerializer();
Serializer<GProviderManifestActionReq> _$gProviderManifestActionReqSerializer =
    new _$GProviderManifestActionReqSerializer();
Serializer<GProviderManifestTriggerReq>
    _$gProviderManifestTriggerReqSerializer =
    new _$GProviderManifestTriggerReqSerializer();
Serializer<GBaseProviderReq> _$gBaseProviderReqSerializer =
    new _$GBaseProviderReqSerializer();
Serializer<GProviderWithManifestReq> _$gProviderWithManifestReqSerializer =
    new _$GProviderWithManifestReqSerializer();

class _$GgetAllProvidersReqSerializer
    implements StructuredSerializer<GgetAllProvidersReq> {
  @override
  final Iterable<Type> types = const [
    GgetAllProvidersReq,
    _$GgetAllProvidersReq
  ];
  @override
  final String wireName = 'GgetAllProvidersReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetAllProvidersReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GgetAllProvidersVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i4.Operation)),
      'executeOnListen',
      serializers.serialize(object.executeOnListen,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.requestId;
    if (value != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.optimisticResponse;
    if (value != null) {
      result
        ..add('optimisticResponse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GgetAllProvidersData)));
    }
    value = object.updateCacheHandlerKey;
    if (value != null) {
      result
        ..add('updateCacheHandlerKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updateCacheHandlerContext;
    if (value != null) {
      result
        ..add('updateCacheHandlerContext')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    value = object.fetchPolicy;
    if (value != null) {
      result
        ..add('fetchPolicy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.FetchPolicy)));
    }
    return result;
  }

  @override
  GgetAllProvidersReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetAllProvidersReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GgetAllProvidersVars))!
              as _i3.GgetAllProvidersVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i4.Operation))! as _i4.Operation;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'optimisticResponse':
          result.optimisticResponse.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GgetAllProvidersData))!
              as _i2.GgetAllProvidersData);
          break;
        case 'updateCacheHandlerKey':
          result.updateCacheHandlerKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updateCacheHandlerContext':
          result.updateCacheHandlerContext = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>?;
          break;
        case 'fetchPolicy':
          result.fetchPolicy = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.FetchPolicy))
              as _i1.FetchPolicy?;
          break;
        case 'executeOnListen':
          result.executeOnListen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetProviderByIdReqSerializer
    implements StructuredSerializer<GgetProviderByIdReq> {
  @override
  final Iterable<Type> types = const [
    GgetProviderByIdReq,
    _$GgetProviderByIdReq
  ];
  @override
  final String wireName = 'GgetProviderByIdReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetProviderByIdReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GgetProviderByIdVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i4.Operation)),
      'executeOnListen',
      serializers.serialize(object.executeOnListen,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.requestId;
    if (value != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.optimisticResponse;
    if (value != null) {
      result
        ..add('optimisticResponse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GgetProviderByIdData)));
    }
    value = object.updateCacheHandlerKey;
    if (value != null) {
      result
        ..add('updateCacheHandlerKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updateCacheHandlerContext;
    if (value != null) {
      result
        ..add('updateCacheHandlerContext')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    value = object.fetchPolicy;
    if (value != null) {
      result
        ..add('fetchPolicy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.FetchPolicy)));
    }
    return result;
  }

  @override
  GgetProviderByIdReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetProviderByIdReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GgetProviderByIdVars))!
              as _i3.GgetProviderByIdVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i4.Operation))! as _i4.Operation;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'optimisticResponse':
          result.optimisticResponse.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GgetProviderByIdData))!
              as _i2.GgetProviderByIdData);
          break;
        case 'updateCacheHandlerKey':
          result.updateCacheHandlerKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updateCacheHandlerContext':
          result.updateCacheHandlerContext = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>?;
          break;
        case 'fetchPolicy':
          result.fetchPolicy = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.FetchPolicy))
              as _i1.FetchPolicy?;
          break;
        case 'executeOnListen':
          result.executeOnListen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GProviderManifestActionReqSerializer
    implements StructuredSerializer<GProviderManifestActionReq> {
  @override
  final Iterable<Type> types = const [
    GProviderManifestActionReq,
    _$GProviderManifestActionReq
  ];
  @override
  final String wireName = 'GProviderManifestActionReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProviderManifestActionReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GProviderManifestActionVars)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(_i7.DocumentNode)),
      'idFields',
      serializers.serialize(object.idFields,
          specifiedType: const FullType(
              Map, const [const FullType(String), const FullType(dynamic)])),
    ];
    Object? value;
    value = object.fragmentName;
    if (value != null) {
      result
        ..add('fragmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GProviderManifestActionReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProviderManifestActionReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GProviderManifestActionVars))!
              as _i3.GProviderManifestActionVars);
          break;
        case 'document':
          result.document = serializers.deserialize(value,
                  specifiedType: const FullType(_i7.DocumentNode))!
              as _i7.DocumentNode;
          break;
        case 'fragmentName':
          result.fragmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idFields':
          result.idFields = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ]))! as Map<String, dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$GProviderManifestTriggerReqSerializer
    implements StructuredSerializer<GProviderManifestTriggerReq> {
  @override
  final Iterable<Type> types = const [
    GProviderManifestTriggerReq,
    _$GProviderManifestTriggerReq
  ];
  @override
  final String wireName = 'GProviderManifestTriggerReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProviderManifestTriggerReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GProviderManifestTriggerVars)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(_i7.DocumentNode)),
      'idFields',
      serializers.serialize(object.idFields,
          specifiedType: const FullType(
              Map, const [const FullType(String), const FullType(dynamic)])),
    ];
    Object? value;
    value = object.fragmentName;
    if (value != null) {
      result
        ..add('fragmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GProviderManifestTriggerReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProviderManifestTriggerReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GProviderManifestTriggerVars))!
              as _i3.GProviderManifestTriggerVars);
          break;
        case 'document':
          result.document = serializers.deserialize(value,
                  specifiedType: const FullType(_i7.DocumentNode))!
              as _i7.DocumentNode;
          break;
        case 'fragmentName':
          result.fragmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idFields':
          result.idFields = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ]))! as Map<String, dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$GBaseProviderReqSerializer
    implements StructuredSerializer<GBaseProviderReq> {
  @override
  final Iterable<Type> types = const [GBaseProviderReq, _$GBaseProviderReq];
  @override
  final String wireName = 'GBaseProviderReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GBaseProviderReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GBaseProviderVars)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(_i7.DocumentNode)),
      'idFields',
      serializers.serialize(object.idFields,
          specifiedType: const FullType(
              Map, const [const FullType(String), const FullType(dynamic)])),
    ];
    Object? value;
    value = object.fragmentName;
    if (value != null) {
      result
        ..add('fragmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GBaseProviderReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GBaseProviderReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GBaseProviderVars))!
              as _i3.GBaseProviderVars);
          break;
        case 'document':
          result.document = serializers.deserialize(value,
                  specifiedType: const FullType(_i7.DocumentNode))!
              as _i7.DocumentNode;
          break;
        case 'fragmentName':
          result.fragmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idFields':
          result.idFields = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ]))! as Map<String, dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$GProviderWithManifestReqSerializer
    implements StructuredSerializer<GProviderWithManifestReq> {
  @override
  final Iterable<Type> types = const [
    GProviderWithManifestReq,
    _$GProviderWithManifestReq
  ];
  @override
  final String wireName = 'GProviderWithManifestReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProviderWithManifestReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GProviderWithManifestVars)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(_i7.DocumentNode)),
      'idFields',
      serializers.serialize(object.idFields,
          specifiedType: const FullType(
              Map, const [const FullType(String), const FullType(dynamic)])),
    ];
    Object? value;
    value = object.fragmentName;
    if (value != null) {
      result
        ..add('fragmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GProviderWithManifestReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProviderWithManifestReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GProviderWithManifestVars))!
              as _i3.GProviderWithManifestVars);
          break;
        case 'document':
          result.document = serializers.deserialize(value,
                  specifiedType: const FullType(_i7.DocumentNode))!
              as _i7.DocumentNode;
          break;
        case 'fragmentName':
          result.fragmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idFields':
          result.idFields = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ]))! as Map<String, dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetAllProvidersReq extends GgetAllProvidersReq {
  @override
  final _i3.GgetAllProvidersVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GgetAllProvidersData? Function(
      _i2.GgetAllProvidersData?, _i2.GgetAllProvidersData?)? updateResult;
  @override
  final _i2.GgetAllProvidersData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;
  @override
  final _i4.Context? context;

  factory _$GgetAllProvidersReq(
          [void Function(GgetAllProvidersReqBuilder)? updates]) =>
      (new GgetAllProvidersReqBuilder()..update(updates))._build();

  _$GgetAllProvidersReq._(
      {required this.vars,
      required this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      required this.executeOnListen,
      this.context})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GgetAllProvidersReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GgetAllProvidersReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GgetAllProvidersReq', 'executeOnListen');
  }

  @override
  GgetAllProvidersReq rebuild(
          void Function(GgetAllProvidersReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAllProvidersReqBuilder toBuilder() =>
      new GgetAllProvidersReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GgetAllProvidersReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen &&
        context == other.context;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, updateResult.hashCode);
    _$hash = $jc(_$hash, optimisticResponse.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerKey.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerContext.hashCode);
    _$hash = $jc(_$hash, fetchPolicy.hashCode);
    _$hash = $jc(_$hash, executeOnListen.hashCode);
    _$hash = $jc(_$hash, context.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetAllProvidersReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen)
          ..add('context', context))
        .toString();
  }
}

class GgetAllProvidersReqBuilder
    implements Builder<GgetAllProvidersReq, GgetAllProvidersReqBuilder> {
  _$GgetAllProvidersReq? _$v;

  _i3.GgetAllProvidersVarsBuilder? _vars;
  _i3.GgetAllProvidersVarsBuilder get vars =>
      _$this._vars ??= new _i3.GgetAllProvidersVarsBuilder();
  set vars(_i3.GgetAllProvidersVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GgetAllProvidersData? Function(
      _i2.GgetAllProvidersData?, _i2.GgetAllProvidersData?)? _updateResult;
  _i2.GgetAllProvidersData? Function(
          _i2.GgetAllProvidersData?, _i2.GgetAllProvidersData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GgetAllProvidersData? Function(
                  _i2.GgetAllProvidersData?, _i2.GgetAllProvidersData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GgetAllProvidersDataBuilder? _optimisticResponse;
  _i2.GgetAllProvidersDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GgetAllProvidersDataBuilder();
  set optimisticResponse(_i2.GgetAllProvidersDataBuilder? optimisticResponse) =>
      _$this._optimisticResponse = optimisticResponse;

  String? _updateCacheHandlerKey;
  String? get updateCacheHandlerKey => _$this._updateCacheHandlerKey;
  set updateCacheHandlerKey(String? updateCacheHandlerKey) =>
      _$this._updateCacheHandlerKey = updateCacheHandlerKey;

  Map<String, dynamic>? _updateCacheHandlerContext;
  Map<String, dynamic>? get updateCacheHandlerContext =>
      _$this._updateCacheHandlerContext;
  set updateCacheHandlerContext(
          Map<String, dynamic>? updateCacheHandlerContext) =>
      _$this._updateCacheHandlerContext = updateCacheHandlerContext;

  _i1.FetchPolicy? _fetchPolicy;
  _i1.FetchPolicy? get fetchPolicy => _$this._fetchPolicy;
  set fetchPolicy(_i1.FetchPolicy? fetchPolicy) =>
      _$this._fetchPolicy = fetchPolicy;

  bool? _executeOnListen;
  bool? get executeOnListen => _$this._executeOnListen;
  set executeOnListen(bool? executeOnListen) =>
      _$this._executeOnListen = executeOnListen;

  _i4.Context? _context;
  _i4.Context? get context => _$this._context;
  set context(_i4.Context? context) => _$this._context = context;

  GgetAllProvidersReqBuilder() {
    GgetAllProvidersReq._initializeBuilder(this);
  }

  GgetAllProvidersReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _requestId = $v.requestId;
      _updateResult = $v.updateResult;
      _optimisticResponse = $v.optimisticResponse?.toBuilder();
      _updateCacheHandlerKey = $v.updateCacheHandlerKey;
      _updateCacheHandlerContext = $v.updateCacheHandlerContext;
      _fetchPolicy = $v.fetchPolicy;
      _executeOnListen = $v.executeOnListen;
      _context = $v.context;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetAllProvidersReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAllProvidersReq;
  }

  @override
  void update(void Function(GgetAllProvidersReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAllProvidersReq build() => _build();

  _$GgetAllProvidersReq _build() {
    _$GgetAllProvidersReq _$result;
    try {
      _$result = _$v ??
          new _$GgetAllProvidersReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GgetAllProvidersReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'GgetAllProvidersReq', 'executeOnListen'),
              context: context);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetAllProvidersReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetProviderByIdReq extends GgetProviderByIdReq {
  @override
  final _i3.GgetProviderByIdVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GgetProviderByIdData? Function(
      _i2.GgetProviderByIdData?, _i2.GgetProviderByIdData?)? updateResult;
  @override
  final _i2.GgetProviderByIdData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;
  @override
  final _i4.Context? context;

  factory _$GgetProviderByIdReq(
          [void Function(GgetProviderByIdReqBuilder)? updates]) =>
      (new GgetProviderByIdReqBuilder()..update(updates))._build();

  _$GgetProviderByIdReq._(
      {required this.vars,
      required this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      required this.executeOnListen,
      this.context})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GgetProviderByIdReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GgetProviderByIdReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GgetProviderByIdReq', 'executeOnListen');
  }

  @override
  GgetProviderByIdReq rebuild(
          void Function(GgetProviderByIdReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetProviderByIdReqBuilder toBuilder() =>
      new GgetProviderByIdReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GgetProviderByIdReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen &&
        context == other.context;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, updateResult.hashCode);
    _$hash = $jc(_$hash, optimisticResponse.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerKey.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerContext.hashCode);
    _$hash = $jc(_$hash, fetchPolicy.hashCode);
    _$hash = $jc(_$hash, executeOnListen.hashCode);
    _$hash = $jc(_$hash, context.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetProviderByIdReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen)
          ..add('context', context))
        .toString();
  }
}

class GgetProviderByIdReqBuilder
    implements Builder<GgetProviderByIdReq, GgetProviderByIdReqBuilder> {
  _$GgetProviderByIdReq? _$v;

  _i3.GgetProviderByIdVarsBuilder? _vars;
  _i3.GgetProviderByIdVarsBuilder get vars =>
      _$this._vars ??= new _i3.GgetProviderByIdVarsBuilder();
  set vars(_i3.GgetProviderByIdVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GgetProviderByIdData? Function(
      _i2.GgetProviderByIdData?, _i2.GgetProviderByIdData?)? _updateResult;
  _i2.GgetProviderByIdData? Function(
          _i2.GgetProviderByIdData?, _i2.GgetProviderByIdData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GgetProviderByIdData? Function(
                  _i2.GgetProviderByIdData?, _i2.GgetProviderByIdData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GgetProviderByIdDataBuilder? _optimisticResponse;
  _i2.GgetProviderByIdDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GgetProviderByIdDataBuilder();
  set optimisticResponse(_i2.GgetProviderByIdDataBuilder? optimisticResponse) =>
      _$this._optimisticResponse = optimisticResponse;

  String? _updateCacheHandlerKey;
  String? get updateCacheHandlerKey => _$this._updateCacheHandlerKey;
  set updateCacheHandlerKey(String? updateCacheHandlerKey) =>
      _$this._updateCacheHandlerKey = updateCacheHandlerKey;

  Map<String, dynamic>? _updateCacheHandlerContext;
  Map<String, dynamic>? get updateCacheHandlerContext =>
      _$this._updateCacheHandlerContext;
  set updateCacheHandlerContext(
          Map<String, dynamic>? updateCacheHandlerContext) =>
      _$this._updateCacheHandlerContext = updateCacheHandlerContext;

  _i1.FetchPolicy? _fetchPolicy;
  _i1.FetchPolicy? get fetchPolicy => _$this._fetchPolicy;
  set fetchPolicy(_i1.FetchPolicy? fetchPolicy) =>
      _$this._fetchPolicy = fetchPolicy;

  bool? _executeOnListen;
  bool? get executeOnListen => _$this._executeOnListen;
  set executeOnListen(bool? executeOnListen) =>
      _$this._executeOnListen = executeOnListen;

  _i4.Context? _context;
  _i4.Context? get context => _$this._context;
  set context(_i4.Context? context) => _$this._context = context;

  GgetProviderByIdReqBuilder() {
    GgetProviderByIdReq._initializeBuilder(this);
  }

  GgetProviderByIdReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _requestId = $v.requestId;
      _updateResult = $v.updateResult;
      _optimisticResponse = $v.optimisticResponse?.toBuilder();
      _updateCacheHandlerKey = $v.updateCacheHandlerKey;
      _updateCacheHandlerContext = $v.updateCacheHandlerContext;
      _fetchPolicy = $v.fetchPolicy;
      _executeOnListen = $v.executeOnListen;
      _context = $v.context;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetProviderByIdReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetProviderByIdReq;
  }

  @override
  void update(void Function(GgetProviderByIdReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetProviderByIdReq build() => _build();

  _$GgetProviderByIdReq _build() {
    _$GgetProviderByIdReq _$result;
    try {
      _$result = _$v ??
          new _$GgetProviderByIdReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GgetProviderByIdReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'GgetProviderByIdReq', 'executeOnListen'),
              context: context);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetProviderByIdReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GProviderManifestActionReq extends GProviderManifestActionReq {
  @override
  final _i3.GProviderManifestActionVars vars;
  @override
  final _i7.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GProviderManifestActionReq(
          [void Function(GProviderManifestActionReqBuilder)? updates]) =>
      (new GProviderManifestActionReqBuilder()..update(updates))._build();

  _$GProviderManifestActionReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GProviderManifestActionReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GProviderManifestActionReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GProviderManifestActionReq', 'idFields');
  }

  @override
  GProviderManifestActionReq rebuild(
          void Function(GProviderManifestActionReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProviderManifestActionReqBuilder toBuilder() =>
      new GProviderManifestActionReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProviderManifestActionReq &&
        vars == other.vars &&
        document == other.document &&
        fragmentName == other.fragmentName &&
        idFields == other.idFields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jc(_$hash, fragmentName.hashCode);
    _$hash = $jc(_$hash, idFields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GProviderManifestActionReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GProviderManifestActionReqBuilder
    implements
        Builder<GProviderManifestActionReq, GProviderManifestActionReqBuilder> {
  _$GProviderManifestActionReq? _$v;

  _i3.GProviderManifestActionVarsBuilder? _vars;
  _i3.GProviderManifestActionVarsBuilder get vars =>
      _$this._vars ??= new _i3.GProviderManifestActionVarsBuilder();
  set vars(_i3.GProviderManifestActionVarsBuilder? vars) => _$this._vars = vars;

  _i7.DocumentNode? _document;
  _i7.DocumentNode? get document => _$this._document;
  set document(_i7.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GProviderManifestActionReqBuilder() {
    GProviderManifestActionReq._initializeBuilder(this);
  }

  GProviderManifestActionReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _document = $v.document;
      _fragmentName = $v.fragmentName;
      _idFields = $v.idFields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProviderManifestActionReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProviderManifestActionReq;
  }

  @override
  void update(void Function(GProviderManifestActionReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GProviderManifestActionReq build() => _build();

  _$GProviderManifestActionReq _build() {
    _$GProviderManifestActionReq _$result;
    try {
      _$result = _$v ??
          new _$GProviderManifestActionReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GProviderManifestActionReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GProviderManifestActionReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GProviderManifestActionReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GProviderManifestTriggerReq extends GProviderManifestTriggerReq {
  @override
  final _i3.GProviderManifestTriggerVars vars;
  @override
  final _i7.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GProviderManifestTriggerReq(
          [void Function(GProviderManifestTriggerReqBuilder)? updates]) =>
      (new GProviderManifestTriggerReqBuilder()..update(updates))._build();

  _$GProviderManifestTriggerReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GProviderManifestTriggerReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GProviderManifestTriggerReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GProviderManifestTriggerReq', 'idFields');
  }

  @override
  GProviderManifestTriggerReq rebuild(
          void Function(GProviderManifestTriggerReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProviderManifestTriggerReqBuilder toBuilder() =>
      new GProviderManifestTriggerReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProviderManifestTriggerReq &&
        vars == other.vars &&
        document == other.document &&
        fragmentName == other.fragmentName &&
        idFields == other.idFields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jc(_$hash, fragmentName.hashCode);
    _$hash = $jc(_$hash, idFields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GProviderManifestTriggerReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GProviderManifestTriggerReqBuilder
    implements
        Builder<GProviderManifestTriggerReq,
            GProviderManifestTriggerReqBuilder> {
  _$GProviderManifestTriggerReq? _$v;

  _i3.GProviderManifestTriggerVarsBuilder? _vars;
  _i3.GProviderManifestTriggerVarsBuilder get vars =>
      _$this._vars ??= new _i3.GProviderManifestTriggerVarsBuilder();
  set vars(_i3.GProviderManifestTriggerVarsBuilder? vars) =>
      _$this._vars = vars;

  _i7.DocumentNode? _document;
  _i7.DocumentNode? get document => _$this._document;
  set document(_i7.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GProviderManifestTriggerReqBuilder() {
    GProviderManifestTriggerReq._initializeBuilder(this);
  }

  GProviderManifestTriggerReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _document = $v.document;
      _fragmentName = $v.fragmentName;
      _idFields = $v.idFields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProviderManifestTriggerReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProviderManifestTriggerReq;
  }

  @override
  void update(void Function(GProviderManifestTriggerReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GProviderManifestTriggerReq build() => _build();

  _$GProviderManifestTriggerReq _build() {
    _$GProviderManifestTriggerReq _$result;
    try {
      _$result = _$v ??
          new _$GProviderManifestTriggerReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GProviderManifestTriggerReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GProviderManifestTriggerReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GProviderManifestTriggerReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GBaseProviderReq extends GBaseProviderReq {
  @override
  final _i3.GBaseProviderVars vars;
  @override
  final _i7.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GBaseProviderReq(
          [void Function(GBaseProviderReqBuilder)? updates]) =>
      (new GBaseProviderReqBuilder()..update(updates))._build();

  _$GBaseProviderReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GBaseProviderReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GBaseProviderReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GBaseProviderReq', 'idFields');
  }

  @override
  GBaseProviderReq rebuild(void Function(GBaseProviderReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBaseProviderReqBuilder toBuilder() =>
      new GBaseProviderReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBaseProviderReq &&
        vars == other.vars &&
        document == other.document &&
        fragmentName == other.fragmentName &&
        idFields == other.idFields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jc(_$hash, fragmentName.hashCode);
    _$hash = $jc(_$hash, idFields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GBaseProviderReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GBaseProviderReqBuilder
    implements Builder<GBaseProviderReq, GBaseProviderReqBuilder> {
  _$GBaseProviderReq? _$v;

  _i3.GBaseProviderVarsBuilder? _vars;
  _i3.GBaseProviderVarsBuilder get vars =>
      _$this._vars ??= new _i3.GBaseProviderVarsBuilder();
  set vars(_i3.GBaseProviderVarsBuilder? vars) => _$this._vars = vars;

  _i7.DocumentNode? _document;
  _i7.DocumentNode? get document => _$this._document;
  set document(_i7.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GBaseProviderReqBuilder() {
    GBaseProviderReq._initializeBuilder(this);
  }

  GBaseProviderReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _document = $v.document;
      _fragmentName = $v.fragmentName;
      _idFields = $v.idFields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GBaseProviderReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBaseProviderReq;
  }

  @override
  void update(void Function(GBaseProviderReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBaseProviderReq build() => _build();

  _$GBaseProviderReq _build() {
    _$GBaseProviderReq _$result;
    try {
      _$result = _$v ??
          new _$GBaseProviderReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GBaseProviderReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GBaseProviderReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GBaseProviderReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GProviderWithManifestReq extends GProviderWithManifestReq {
  @override
  final _i3.GProviderWithManifestVars vars;
  @override
  final _i7.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GProviderWithManifestReq(
          [void Function(GProviderWithManifestReqBuilder)? updates]) =>
      (new GProviderWithManifestReqBuilder()..update(updates))._build();

  _$GProviderWithManifestReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GProviderWithManifestReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GProviderWithManifestReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GProviderWithManifestReq', 'idFields');
  }

  @override
  GProviderWithManifestReq rebuild(
          void Function(GProviderWithManifestReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProviderWithManifestReqBuilder toBuilder() =>
      new GProviderWithManifestReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProviderWithManifestReq &&
        vars == other.vars &&
        document == other.document &&
        fragmentName == other.fragmentName &&
        idFields == other.idFields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jc(_$hash, fragmentName.hashCode);
    _$hash = $jc(_$hash, idFields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GProviderWithManifestReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GProviderWithManifestReqBuilder
    implements
        Builder<GProviderWithManifestReq, GProviderWithManifestReqBuilder> {
  _$GProviderWithManifestReq? _$v;

  _i3.GProviderWithManifestVarsBuilder? _vars;
  _i3.GProviderWithManifestVarsBuilder get vars =>
      _$this._vars ??= new _i3.GProviderWithManifestVarsBuilder();
  set vars(_i3.GProviderWithManifestVarsBuilder? vars) => _$this._vars = vars;

  _i7.DocumentNode? _document;
  _i7.DocumentNode? get document => _$this._document;
  set document(_i7.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GProviderWithManifestReqBuilder() {
    GProviderWithManifestReq._initializeBuilder(this);
  }

  GProviderWithManifestReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _document = $v.document;
      _fragmentName = $v.fragmentName;
      _idFields = $v.idFields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProviderWithManifestReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProviderWithManifestReq;
  }

  @override
  void update(void Function(GProviderWithManifestReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GProviderWithManifestReq build() => _build();

  _$GProviderWithManifestReq _build() {
    _$GProviderWithManifestReq _$result;
    try {
      _$result = _$v ??
          new _$GProviderWithManifestReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GProviderWithManifestReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GProviderWithManifestReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GProviderWithManifestReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
