// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applet.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetAllAppletsReq> _$ggetAllAppletsReqSerializer =
    new _$GgetAllAppletsReqSerializer();
Serializer<GgetAppletByIdReq> _$ggetAppletByIdReqSerializer =
    new _$GgetAppletByIdReqSerializer();
Serializer<GgetAppletNodeByIdReq> _$ggetAppletNodeByIdReqSerializer =
    new _$GgetAppletNodeByIdReqSerializer();
Serializer<GcreateAppletReq> _$gcreateAppletReqSerializer =
    new _$GcreateAppletReqSerializer();
Serializer<GupdateAppletReq> _$gupdateAppletReqSerializer =
    new _$GupdateAppletReqSerializer();
Serializer<GdeleteAppletReq> _$gdeleteAppletReqSerializer =
    new _$GdeleteAppletReqSerializer();
Serializer<GBaseAppletProviderReq> _$gBaseAppletProviderReqSerializer =
    new _$GBaseAppletProviderReqSerializer();
Serializer<GBaseAppletNodeReq> _$gBaseAppletNodeReqSerializer =
    new _$GBaseAppletNodeReqSerializer();
Serializer<GExtendedAppletNodeReq> _$gExtendedAppletNodeReqSerializer =
    new _$GExtendedAppletNodeReqSerializer();
Serializer<GBaseAppletReq> _$gBaseAppletReqSerializer =
    new _$GBaseAppletReqSerializer();
Serializer<GAppletWithNodesReq> _$gAppletWithNodesReqSerializer =
    new _$GAppletWithNodesReqSerializer();

class _$GgetAllAppletsReqSerializer
    implements StructuredSerializer<GgetAllAppletsReq> {
  @override
  final Iterable<Type> types = const [GgetAllAppletsReq, _$GgetAllAppletsReq];
  @override
  final String wireName = 'GgetAllAppletsReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GgetAllAppletsReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GgetAllAppletsVars)),
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
            specifiedType: const FullType(_i2.GgetAllAppletsData)));
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
  GgetAllAppletsReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetAllAppletsReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GgetAllAppletsVars))!
              as _i3.GgetAllAppletsVars);
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
                  specifiedType: const FullType(_i2.GgetAllAppletsData))!
              as _i2.GgetAllAppletsData);
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

class _$GgetAppletByIdReqSerializer
    implements StructuredSerializer<GgetAppletByIdReq> {
  @override
  final Iterable<Type> types = const [GgetAppletByIdReq, _$GgetAppletByIdReq];
  @override
  final String wireName = 'GgetAppletByIdReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GgetAppletByIdReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GgetAppletByIdVars)),
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
            specifiedType: const FullType(_i2.GgetAppletByIdData)));
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
  GgetAppletByIdReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetAppletByIdReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GgetAppletByIdVars))!
              as _i3.GgetAppletByIdVars);
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
                  specifiedType: const FullType(_i2.GgetAppletByIdData))!
              as _i2.GgetAppletByIdData);
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

class _$GgetAppletNodeByIdReqSerializer
    implements StructuredSerializer<GgetAppletNodeByIdReq> {
  @override
  final Iterable<Type> types = const [
    GgetAppletNodeByIdReq,
    _$GgetAppletNodeByIdReq
  ];
  @override
  final String wireName = 'GgetAppletNodeByIdReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetAppletNodeByIdReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GgetAppletNodeByIdVars)),
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
            specifiedType: const FullType(_i2.GgetAppletNodeByIdData)));
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
  GgetAppletNodeByIdReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetAppletNodeByIdReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GgetAppletNodeByIdVars))!
              as _i3.GgetAppletNodeByIdVars);
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
                  specifiedType: const FullType(_i2.GgetAppletNodeByIdData))!
              as _i2.GgetAppletNodeByIdData);
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

class _$GcreateAppletReqSerializer
    implements StructuredSerializer<GcreateAppletReq> {
  @override
  final Iterable<Type> types = const [GcreateAppletReq, _$GcreateAppletReq];
  @override
  final String wireName = 'GcreateAppletReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GcreateAppletReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GcreateAppletVars)),
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
            specifiedType: const FullType(_i2.GcreateAppletData)));
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
  GcreateAppletReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcreateAppletReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GcreateAppletVars))!
              as _i3.GcreateAppletVars);
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
                  specifiedType: const FullType(_i2.GcreateAppletData))!
              as _i2.GcreateAppletData);
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

class _$GupdateAppletReqSerializer
    implements StructuredSerializer<GupdateAppletReq> {
  @override
  final Iterable<Type> types = const [GupdateAppletReq, _$GupdateAppletReq];
  @override
  final String wireName = 'GupdateAppletReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GupdateAppletReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GupdateAppletVars)),
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
            specifiedType: const FullType(_i2.GupdateAppletData)));
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
  GupdateAppletReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GupdateAppletReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GupdateAppletVars))!
              as _i3.GupdateAppletVars);
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
                  specifiedType: const FullType(_i2.GupdateAppletData))!
              as _i2.GupdateAppletData);
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

class _$GdeleteAppletReqSerializer
    implements StructuredSerializer<GdeleteAppletReq> {
  @override
  final Iterable<Type> types = const [GdeleteAppletReq, _$GdeleteAppletReq];
  @override
  final String wireName = 'GdeleteAppletReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GdeleteAppletReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GdeleteAppletVars)),
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
            specifiedType: const FullType(_i2.GdeleteAppletData)));
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
  GdeleteAppletReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdeleteAppletReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GdeleteAppletVars))!
              as _i3.GdeleteAppletVars);
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
                  specifiedType: const FullType(_i2.GdeleteAppletData))!
              as _i2.GdeleteAppletData);
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

class _$GBaseAppletProviderReqSerializer
    implements StructuredSerializer<GBaseAppletProviderReq> {
  @override
  final Iterable<Type> types = const [
    GBaseAppletProviderReq,
    _$GBaseAppletProviderReq
  ];
  @override
  final String wireName = 'GBaseAppletProviderReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GBaseAppletProviderReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GBaseAppletProviderVars)),
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
  GBaseAppletProviderReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GBaseAppletProviderReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GBaseAppletProviderVars))!
              as _i3.GBaseAppletProviderVars);
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

class _$GBaseAppletNodeReqSerializer
    implements StructuredSerializer<GBaseAppletNodeReq> {
  @override
  final Iterable<Type> types = const [GBaseAppletNodeReq, _$GBaseAppletNodeReq];
  @override
  final String wireName = 'GBaseAppletNodeReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GBaseAppletNodeReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GBaseAppletNodeVars)),
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
  GBaseAppletNodeReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GBaseAppletNodeReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GBaseAppletNodeVars))!
              as _i3.GBaseAppletNodeVars);
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

class _$GExtendedAppletNodeReqSerializer
    implements StructuredSerializer<GExtendedAppletNodeReq> {
  @override
  final Iterable<Type> types = const [
    GExtendedAppletNodeReq,
    _$GExtendedAppletNodeReq
  ];
  @override
  final String wireName = 'GExtendedAppletNodeReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GExtendedAppletNodeReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GExtendedAppletNodeVars)),
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
  GExtendedAppletNodeReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GExtendedAppletNodeReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GExtendedAppletNodeVars))!
              as _i3.GExtendedAppletNodeVars);
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

class _$GBaseAppletReqSerializer
    implements StructuredSerializer<GBaseAppletReq> {
  @override
  final Iterable<Type> types = const [GBaseAppletReq, _$GBaseAppletReq];
  @override
  final String wireName = 'GBaseAppletReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GBaseAppletReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GBaseAppletVars)),
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
  GBaseAppletReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GBaseAppletReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GBaseAppletVars))!
              as _i3.GBaseAppletVars);
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

class _$GAppletWithNodesReqSerializer
    implements StructuredSerializer<GAppletWithNodesReq> {
  @override
  final Iterable<Type> types = const [
    GAppletWithNodesReq,
    _$GAppletWithNodesReq
  ];
  @override
  final String wireName = 'GAppletWithNodesReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAppletWithNodesReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GAppletWithNodesVars)),
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
  GAppletWithNodesReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAppletWithNodesReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GAppletWithNodesVars))!
              as _i3.GAppletWithNodesVars);
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

class _$GgetAllAppletsReq extends GgetAllAppletsReq {
  @override
  final _i3.GgetAllAppletsVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GgetAllAppletsData? Function(
      _i2.GgetAllAppletsData?, _i2.GgetAllAppletsData?)? updateResult;
  @override
  final _i2.GgetAllAppletsData? optimisticResponse;
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

  factory _$GgetAllAppletsReq(
          [void Function(GgetAllAppletsReqBuilder)? updates]) =>
      (new GgetAllAppletsReqBuilder()..update(updates))._build();

  _$GgetAllAppletsReq._(
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
    BuiltValueNullFieldError.checkNotNull(vars, r'GgetAllAppletsReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GgetAllAppletsReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GgetAllAppletsReq', 'executeOnListen');
  }

  @override
  GgetAllAppletsReq rebuild(void Function(GgetAllAppletsReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAllAppletsReqBuilder toBuilder() =>
      new GgetAllAppletsReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GgetAllAppletsReq &&
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
    return (newBuiltValueToStringHelper(r'GgetAllAppletsReq')
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

class GgetAllAppletsReqBuilder
    implements Builder<GgetAllAppletsReq, GgetAllAppletsReqBuilder> {
  _$GgetAllAppletsReq? _$v;

  _i3.GgetAllAppletsVarsBuilder? _vars;
  _i3.GgetAllAppletsVarsBuilder get vars =>
      _$this._vars ??= new _i3.GgetAllAppletsVarsBuilder();
  set vars(_i3.GgetAllAppletsVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GgetAllAppletsData? Function(
      _i2.GgetAllAppletsData?, _i2.GgetAllAppletsData?)? _updateResult;
  _i2.GgetAllAppletsData? Function(
          _i2.GgetAllAppletsData?, _i2.GgetAllAppletsData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GgetAllAppletsData? Function(
                  _i2.GgetAllAppletsData?, _i2.GgetAllAppletsData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GgetAllAppletsDataBuilder? _optimisticResponse;
  _i2.GgetAllAppletsDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GgetAllAppletsDataBuilder();
  set optimisticResponse(_i2.GgetAllAppletsDataBuilder? optimisticResponse) =>
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

  GgetAllAppletsReqBuilder() {
    GgetAllAppletsReq._initializeBuilder(this);
  }

  GgetAllAppletsReqBuilder get _$this {
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
  void replace(GgetAllAppletsReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAllAppletsReq;
  }

  @override
  void update(void Function(GgetAllAppletsReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAllAppletsReq build() => _build();

  _$GgetAllAppletsReq _build() {
    _$GgetAllAppletsReq _$result;
    try {
      _$result = _$v ??
          new _$GgetAllAppletsReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GgetAllAppletsReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'GgetAllAppletsReq', 'executeOnListen'),
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
            r'GgetAllAppletsReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetAppletByIdReq extends GgetAppletByIdReq {
  @override
  final _i3.GgetAppletByIdVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GgetAppletByIdData? Function(
      _i2.GgetAppletByIdData?, _i2.GgetAppletByIdData?)? updateResult;
  @override
  final _i2.GgetAppletByIdData? optimisticResponse;
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

  factory _$GgetAppletByIdReq(
          [void Function(GgetAppletByIdReqBuilder)? updates]) =>
      (new GgetAppletByIdReqBuilder()..update(updates))._build();

  _$GgetAppletByIdReq._(
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
    BuiltValueNullFieldError.checkNotNull(vars, r'GgetAppletByIdReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GgetAppletByIdReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GgetAppletByIdReq', 'executeOnListen');
  }

  @override
  GgetAppletByIdReq rebuild(void Function(GgetAppletByIdReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAppletByIdReqBuilder toBuilder() =>
      new GgetAppletByIdReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GgetAppletByIdReq &&
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
    return (newBuiltValueToStringHelper(r'GgetAppletByIdReq')
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

class GgetAppletByIdReqBuilder
    implements Builder<GgetAppletByIdReq, GgetAppletByIdReqBuilder> {
  _$GgetAppletByIdReq? _$v;

  _i3.GgetAppletByIdVarsBuilder? _vars;
  _i3.GgetAppletByIdVarsBuilder get vars =>
      _$this._vars ??= new _i3.GgetAppletByIdVarsBuilder();
  set vars(_i3.GgetAppletByIdVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GgetAppletByIdData? Function(
      _i2.GgetAppletByIdData?, _i2.GgetAppletByIdData?)? _updateResult;
  _i2.GgetAppletByIdData? Function(
          _i2.GgetAppletByIdData?, _i2.GgetAppletByIdData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GgetAppletByIdData? Function(
                  _i2.GgetAppletByIdData?, _i2.GgetAppletByIdData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GgetAppletByIdDataBuilder? _optimisticResponse;
  _i2.GgetAppletByIdDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GgetAppletByIdDataBuilder();
  set optimisticResponse(_i2.GgetAppletByIdDataBuilder? optimisticResponse) =>
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

  GgetAppletByIdReqBuilder() {
    GgetAppletByIdReq._initializeBuilder(this);
  }

  GgetAppletByIdReqBuilder get _$this {
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
  void replace(GgetAppletByIdReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAppletByIdReq;
  }

  @override
  void update(void Function(GgetAppletByIdReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAppletByIdReq build() => _build();

  _$GgetAppletByIdReq _build() {
    _$GgetAppletByIdReq _$result;
    try {
      _$result = _$v ??
          new _$GgetAppletByIdReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GgetAppletByIdReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'GgetAppletByIdReq', 'executeOnListen'),
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
            r'GgetAppletByIdReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetAppletNodeByIdReq extends GgetAppletNodeByIdReq {
  @override
  final _i3.GgetAppletNodeByIdVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GgetAppletNodeByIdData? Function(
      _i2.GgetAppletNodeByIdData?, _i2.GgetAppletNodeByIdData?)? updateResult;
  @override
  final _i2.GgetAppletNodeByIdData? optimisticResponse;
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

  factory _$GgetAppletNodeByIdReq(
          [void Function(GgetAppletNodeByIdReqBuilder)? updates]) =>
      (new GgetAppletNodeByIdReqBuilder()..update(updates))._build();

  _$GgetAppletNodeByIdReq._(
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
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GgetAppletNodeByIdReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GgetAppletNodeByIdReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GgetAppletNodeByIdReq', 'executeOnListen');
  }

  @override
  GgetAppletNodeByIdReq rebuild(
          void Function(GgetAppletNodeByIdReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAppletNodeByIdReqBuilder toBuilder() =>
      new GgetAppletNodeByIdReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GgetAppletNodeByIdReq &&
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
    return (newBuiltValueToStringHelper(r'GgetAppletNodeByIdReq')
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

class GgetAppletNodeByIdReqBuilder
    implements Builder<GgetAppletNodeByIdReq, GgetAppletNodeByIdReqBuilder> {
  _$GgetAppletNodeByIdReq? _$v;

  _i3.GgetAppletNodeByIdVarsBuilder? _vars;
  _i3.GgetAppletNodeByIdVarsBuilder get vars =>
      _$this._vars ??= new _i3.GgetAppletNodeByIdVarsBuilder();
  set vars(_i3.GgetAppletNodeByIdVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GgetAppletNodeByIdData? Function(
      _i2.GgetAppletNodeByIdData?, _i2.GgetAppletNodeByIdData?)? _updateResult;
  _i2.GgetAppletNodeByIdData? Function(
          _i2.GgetAppletNodeByIdData?, _i2.GgetAppletNodeByIdData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GgetAppletNodeByIdData? Function(
                  _i2.GgetAppletNodeByIdData?, _i2.GgetAppletNodeByIdData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GgetAppletNodeByIdDataBuilder? _optimisticResponse;
  _i2.GgetAppletNodeByIdDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GgetAppletNodeByIdDataBuilder();
  set optimisticResponse(
          _i2.GgetAppletNodeByIdDataBuilder? optimisticResponse) =>
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

  GgetAppletNodeByIdReqBuilder() {
    GgetAppletNodeByIdReq._initializeBuilder(this);
  }

  GgetAppletNodeByIdReqBuilder get _$this {
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
  void replace(GgetAppletNodeByIdReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAppletNodeByIdReq;
  }

  @override
  void update(void Function(GgetAppletNodeByIdReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAppletNodeByIdReq build() => _build();

  _$GgetAppletNodeByIdReq _build() {
    _$GgetAppletNodeByIdReq _$result;
    try {
      _$result = _$v ??
          new _$GgetAppletNodeByIdReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GgetAppletNodeByIdReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'GgetAppletNodeByIdReq', 'executeOnListen'),
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
            r'GgetAppletNodeByIdReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GcreateAppletReq extends GcreateAppletReq {
  @override
  final _i3.GcreateAppletVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GcreateAppletData? Function(
      _i2.GcreateAppletData?, _i2.GcreateAppletData?)? updateResult;
  @override
  final _i2.GcreateAppletData? optimisticResponse;
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

  factory _$GcreateAppletReq(
          [void Function(GcreateAppletReqBuilder)? updates]) =>
      (new GcreateAppletReqBuilder()..update(updates))._build();

  _$GcreateAppletReq._(
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
    BuiltValueNullFieldError.checkNotNull(vars, r'GcreateAppletReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GcreateAppletReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GcreateAppletReq', 'executeOnListen');
  }

  @override
  GcreateAppletReq rebuild(void Function(GcreateAppletReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcreateAppletReqBuilder toBuilder() =>
      new GcreateAppletReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GcreateAppletReq &&
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
    return (newBuiltValueToStringHelper(r'GcreateAppletReq')
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

class GcreateAppletReqBuilder
    implements Builder<GcreateAppletReq, GcreateAppletReqBuilder> {
  _$GcreateAppletReq? _$v;

  _i3.GcreateAppletVarsBuilder? _vars;
  _i3.GcreateAppletVarsBuilder get vars =>
      _$this._vars ??= new _i3.GcreateAppletVarsBuilder();
  set vars(_i3.GcreateAppletVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GcreateAppletData? Function(
      _i2.GcreateAppletData?, _i2.GcreateAppletData?)? _updateResult;
  _i2.GcreateAppletData? Function(
          _i2.GcreateAppletData?, _i2.GcreateAppletData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GcreateAppletData? Function(
                  _i2.GcreateAppletData?, _i2.GcreateAppletData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GcreateAppletDataBuilder? _optimisticResponse;
  _i2.GcreateAppletDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GcreateAppletDataBuilder();
  set optimisticResponse(_i2.GcreateAppletDataBuilder? optimisticResponse) =>
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

  GcreateAppletReqBuilder() {
    GcreateAppletReq._initializeBuilder(this);
  }

  GcreateAppletReqBuilder get _$this {
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
  void replace(GcreateAppletReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcreateAppletReq;
  }

  @override
  void update(void Function(GcreateAppletReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GcreateAppletReq build() => _build();

  _$GcreateAppletReq _build() {
    _$GcreateAppletReq _$result;
    try {
      _$result = _$v ??
          new _$GcreateAppletReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GcreateAppletReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'GcreateAppletReq', 'executeOnListen'),
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
            r'GcreateAppletReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GupdateAppletReq extends GupdateAppletReq {
  @override
  final _i3.GupdateAppletVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GupdateAppletData? Function(
      _i2.GupdateAppletData?, _i2.GupdateAppletData?)? updateResult;
  @override
  final _i2.GupdateAppletData? optimisticResponse;
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

  factory _$GupdateAppletReq(
          [void Function(GupdateAppletReqBuilder)? updates]) =>
      (new GupdateAppletReqBuilder()..update(updates))._build();

  _$GupdateAppletReq._(
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
    BuiltValueNullFieldError.checkNotNull(vars, r'GupdateAppletReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GupdateAppletReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GupdateAppletReq', 'executeOnListen');
  }

  @override
  GupdateAppletReq rebuild(void Function(GupdateAppletReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupdateAppletReqBuilder toBuilder() =>
      new GupdateAppletReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GupdateAppletReq &&
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
    return (newBuiltValueToStringHelper(r'GupdateAppletReq')
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

class GupdateAppletReqBuilder
    implements Builder<GupdateAppletReq, GupdateAppletReqBuilder> {
  _$GupdateAppletReq? _$v;

  _i3.GupdateAppletVarsBuilder? _vars;
  _i3.GupdateAppletVarsBuilder get vars =>
      _$this._vars ??= new _i3.GupdateAppletVarsBuilder();
  set vars(_i3.GupdateAppletVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GupdateAppletData? Function(
      _i2.GupdateAppletData?, _i2.GupdateAppletData?)? _updateResult;
  _i2.GupdateAppletData? Function(
          _i2.GupdateAppletData?, _i2.GupdateAppletData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GupdateAppletData? Function(
                  _i2.GupdateAppletData?, _i2.GupdateAppletData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GupdateAppletDataBuilder? _optimisticResponse;
  _i2.GupdateAppletDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GupdateAppletDataBuilder();
  set optimisticResponse(_i2.GupdateAppletDataBuilder? optimisticResponse) =>
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

  GupdateAppletReqBuilder() {
    GupdateAppletReq._initializeBuilder(this);
  }

  GupdateAppletReqBuilder get _$this {
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
  void replace(GupdateAppletReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupdateAppletReq;
  }

  @override
  void update(void Function(GupdateAppletReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GupdateAppletReq build() => _build();

  _$GupdateAppletReq _build() {
    _$GupdateAppletReq _$result;
    try {
      _$result = _$v ??
          new _$GupdateAppletReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GupdateAppletReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'GupdateAppletReq', 'executeOnListen'),
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
            r'GupdateAppletReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GdeleteAppletReq extends GdeleteAppletReq {
  @override
  final _i3.GdeleteAppletVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GdeleteAppletData? Function(
      _i2.GdeleteAppletData?, _i2.GdeleteAppletData?)? updateResult;
  @override
  final _i2.GdeleteAppletData? optimisticResponse;
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

  factory _$GdeleteAppletReq(
          [void Function(GdeleteAppletReqBuilder)? updates]) =>
      (new GdeleteAppletReqBuilder()..update(updates))._build();

  _$GdeleteAppletReq._(
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
    BuiltValueNullFieldError.checkNotNull(vars, r'GdeleteAppletReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GdeleteAppletReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GdeleteAppletReq', 'executeOnListen');
  }

  @override
  GdeleteAppletReq rebuild(void Function(GdeleteAppletReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdeleteAppletReqBuilder toBuilder() =>
      new GdeleteAppletReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GdeleteAppletReq &&
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
    return (newBuiltValueToStringHelper(r'GdeleteAppletReq')
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

class GdeleteAppletReqBuilder
    implements Builder<GdeleteAppletReq, GdeleteAppletReqBuilder> {
  _$GdeleteAppletReq? _$v;

  _i3.GdeleteAppletVarsBuilder? _vars;
  _i3.GdeleteAppletVarsBuilder get vars =>
      _$this._vars ??= new _i3.GdeleteAppletVarsBuilder();
  set vars(_i3.GdeleteAppletVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GdeleteAppletData? Function(
      _i2.GdeleteAppletData?, _i2.GdeleteAppletData?)? _updateResult;
  _i2.GdeleteAppletData? Function(
          _i2.GdeleteAppletData?, _i2.GdeleteAppletData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GdeleteAppletData? Function(
                  _i2.GdeleteAppletData?, _i2.GdeleteAppletData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GdeleteAppletDataBuilder? _optimisticResponse;
  _i2.GdeleteAppletDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GdeleteAppletDataBuilder();
  set optimisticResponse(_i2.GdeleteAppletDataBuilder? optimisticResponse) =>
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

  GdeleteAppletReqBuilder() {
    GdeleteAppletReq._initializeBuilder(this);
  }

  GdeleteAppletReqBuilder get _$this {
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
  void replace(GdeleteAppletReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdeleteAppletReq;
  }

  @override
  void update(void Function(GdeleteAppletReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdeleteAppletReq build() => _build();

  _$GdeleteAppletReq _build() {
    _$GdeleteAppletReq _$result;
    try {
      _$result = _$v ??
          new _$GdeleteAppletReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GdeleteAppletReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'GdeleteAppletReq', 'executeOnListen'),
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
            r'GdeleteAppletReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GBaseAppletProviderReq extends GBaseAppletProviderReq {
  @override
  final _i3.GBaseAppletProviderVars vars;
  @override
  final _i7.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GBaseAppletProviderReq(
          [void Function(GBaseAppletProviderReqBuilder)? updates]) =>
      (new GBaseAppletProviderReqBuilder()..update(updates))._build();

  _$GBaseAppletProviderReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GBaseAppletProviderReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GBaseAppletProviderReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GBaseAppletProviderReq', 'idFields');
  }

  @override
  GBaseAppletProviderReq rebuild(
          void Function(GBaseAppletProviderReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBaseAppletProviderReqBuilder toBuilder() =>
      new GBaseAppletProviderReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBaseAppletProviderReq &&
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
    return (newBuiltValueToStringHelper(r'GBaseAppletProviderReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GBaseAppletProviderReqBuilder
    implements Builder<GBaseAppletProviderReq, GBaseAppletProviderReqBuilder> {
  _$GBaseAppletProviderReq? _$v;

  _i3.GBaseAppletProviderVarsBuilder? _vars;
  _i3.GBaseAppletProviderVarsBuilder get vars =>
      _$this._vars ??= new _i3.GBaseAppletProviderVarsBuilder();
  set vars(_i3.GBaseAppletProviderVarsBuilder? vars) => _$this._vars = vars;

  _i7.DocumentNode? _document;
  _i7.DocumentNode? get document => _$this._document;
  set document(_i7.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GBaseAppletProviderReqBuilder() {
    GBaseAppletProviderReq._initializeBuilder(this);
  }

  GBaseAppletProviderReqBuilder get _$this {
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
  void replace(GBaseAppletProviderReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBaseAppletProviderReq;
  }

  @override
  void update(void Function(GBaseAppletProviderReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBaseAppletProviderReq build() => _build();

  _$GBaseAppletProviderReq _build() {
    _$GBaseAppletProviderReq _$result;
    try {
      _$result = _$v ??
          new _$GBaseAppletProviderReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GBaseAppletProviderReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GBaseAppletProviderReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GBaseAppletProviderReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GBaseAppletNodeReq extends GBaseAppletNodeReq {
  @override
  final _i3.GBaseAppletNodeVars vars;
  @override
  final _i7.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GBaseAppletNodeReq(
          [void Function(GBaseAppletNodeReqBuilder)? updates]) =>
      (new GBaseAppletNodeReqBuilder()..update(updates))._build();

  _$GBaseAppletNodeReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GBaseAppletNodeReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GBaseAppletNodeReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GBaseAppletNodeReq', 'idFields');
  }

  @override
  GBaseAppletNodeReq rebuild(
          void Function(GBaseAppletNodeReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBaseAppletNodeReqBuilder toBuilder() =>
      new GBaseAppletNodeReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBaseAppletNodeReq &&
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
    return (newBuiltValueToStringHelper(r'GBaseAppletNodeReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GBaseAppletNodeReqBuilder
    implements Builder<GBaseAppletNodeReq, GBaseAppletNodeReqBuilder> {
  _$GBaseAppletNodeReq? _$v;

  _i3.GBaseAppletNodeVarsBuilder? _vars;
  _i3.GBaseAppletNodeVarsBuilder get vars =>
      _$this._vars ??= new _i3.GBaseAppletNodeVarsBuilder();
  set vars(_i3.GBaseAppletNodeVarsBuilder? vars) => _$this._vars = vars;

  _i7.DocumentNode? _document;
  _i7.DocumentNode? get document => _$this._document;
  set document(_i7.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GBaseAppletNodeReqBuilder() {
    GBaseAppletNodeReq._initializeBuilder(this);
  }

  GBaseAppletNodeReqBuilder get _$this {
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
  void replace(GBaseAppletNodeReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBaseAppletNodeReq;
  }

  @override
  void update(void Function(GBaseAppletNodeReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBaseAppletNodeReq build() => _build();

  _$GBaseAppletNodeReq _build() {
    _$GBaseAppletNodeReq _$result;
    try {
      _$result = _$v ??
          new _$GBaseAppletNodeReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GBaseAppletNodeReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GBaseAppletNodeReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GBaseAppletNodeReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GExtendedAppletNodeReq extends GExtendedAppletNodeReq {
  @override
  final _i3.GExtendedAppletNodeVars vars;
  @override
  final _i7.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GExtendedAppletNodeReq(
          [void Function(GExtendedAppletNodeReqBuilder)? updates]) =>
      (new GExtendedAppletNodeReqBuilder()..update(updates))._build();

  _$GExtendedAppletNodeReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GExtendedAppletNodeReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GExtendedAppletNodeReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GExtendedAppletNodeReq', 'idFields');
  }

  @override
  GExtendedAppletNodeReq rebuild(
          void Function(GExtendedAppletNodeReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExtendedAppletNodeReqBuilder toBuilder() =>
      new GExtendedAppletNodeReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExtendedAppletNodeReq &&
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
    return (newBuiltValueToStringHelper(r'GExtendedAppletNodeReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GExtendedAppletNodeReqBuilder
    implements Builder<GExtendedAppletNodeReq, GExtendedAppletNodeReqBuilder> {
  _$GExtendedAppletNodeReq? _$v;

  _i3.GExtendedAppletNodeVarsBuilder? _vars;
  _i3.GExtendedAppletNodeVarsBuilder get vars =>
      _$this._vars ??= new _i3.GExtendedAppletNodeVarsBuilder();
  set vars(_i3.GExtendedAppletNodeVarsBuilder? vars) => _$this._vars = vars;

  _i7.DocumentNode? _document;
  _i7.DocumentNode? get document => _$this._document;
  set document(_i7.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GExtendedAppletNodeReqBuilder() {
    GExtendedAppletNodeReq._initializeBuilder(this);
  }

  GExtendedAppletNodeReqBuilder get _$this {
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
  void replace(GExtendedAppletNodeReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExtendedAppletNodeReq;
  }

  @override
  void update(void Function(GExtendedAppletNodeReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExtendedAppletNodeReq build() => _build();

  _$GExtendedAppletNodeReq _build() {
    _$GExtendedAppletNodeReq _$result;
    try {
      _$result = _$v ??
          new _$GExtendedAppletNodeReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GExtendedAppletNodeReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GExtendedAppletNodeReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GExtendedAppletNodeReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GBaseAppletReq extends GBaseAppletReq {
  @override
  final _i3.GBaseAppletVars vars;
  @override
  final _i7.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GBaseAppletReq([void Function(GBaseAppletReqBuilder)? updates]) =>
      (new GBaseAppletReqBuilder()..update(updates))._build();

  _$GBaseAppletReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GBaseAppletReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GBaseAppletReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GBaseAppletReq', 'idFields');
  }

  @override
  GBaseAppletReq rebuild(void Function(GBaseAppletReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBaseAppletReqBuilder toBuilder() =>
      new GBaseAppletReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBaseAppletReq &&
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
    return (newBuiltValueToStringHelper(r'GBaseAppletReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GBaseAppletReqBuilder
    implements Builder<GBaseAppletReq, GBaseAppletReqBuilder> {
  _$GBaseAppletReq? _$v;

  _i3.GBaseAppletVarsBuilder? _vars;
  _i3.GBaseAppletVarsBuilder get vars =>
      _$this._vars ??= new _i3.GBaseAppletVarsBuilder();
  set vars(_i3.GBaseAppletVarsBuilder? vars) => _$this._vars = vars;

  _i7.DocumentNode? _document;
  _i7.DocumentNode? get document => _$this._document;
  set document(_i7.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GBaseAppletReqBuilder() {
    GBaseAppletReq._initializeBuilder(this);
  }

  GBaseAppletReqBuilder get _$this {
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
  void replace(GBaseAppletReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBaseAppletReq;
  }

  @override
  void update(void Function(GBaseAppletReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBaseAppletReq build() => _build();

  _$GBaseAppletReq _build() {
    _$GBaseAppletReq _$result;
    try {
      _$result = _$v ??
          new _$GBaseAppletReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GBaseAppletReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GBaseAppletReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GBaseAppletReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAppletWithNodesReq extends GAppletWithNodesReq {
  @override
  final _i3.GAppletWithNodesVars vars;
  @override
  final _i7.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GAppletWithNodesReq(
          [void Function(GAppletWithNodesReqBuilder)? updates]) =>
      (new GAppletWithNodesReqBuilder()..update(updates))._build();

  _$GAppletWithNodesReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GAppletWithNodesReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GAppletWithNodesReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GAppletWithNodesReq', 'idFields');
  }

  @override
  GAppletWithNodesReq rebuild(
          void Function(GAppletWithNodesReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAppletWithNodesReqBuilder toBuilder() =>
      new GAppletWithNodesReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAppletWithNodesReq &&
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
    return (newBuiltValueToStringHelper(r'GAppletWithNodesReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GAppletWithNodesReqBuilder
    implements Builder<GAppletWithNodesReq, GAppletWithNodesReqBuilder> {
  _$GAppletWithNodesReq? _$v;

  _i3.GAppletWithNodesVarsBuilder? _vars;
  _i3.GAppletWithNodesVarsBuilder get vars =>
      _$this._vars ??= new _i3.GAppletWithNodesVarsBuilder();
  set vars(_i3.GAppletWithNodesVarsBuilder? vars) => _$this._vars = vars;

  _i7.DocumentNode? _document;
  _i7.DocumentNode? get document => _$this._document;
  set document(_i7.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GAppletWithNodesReqBuilder() {
    GAppletWithNodesReq._initializeBuilder(this);
  }

  GAppletWithNodesReqBuilder get _$this {
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
  void replace(GAppletWithNodesReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAppletWithNodesReq;
  }

  @override
  void update(void Function(GAppletWithNodesReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAppletWithNodesReq build() => _build();

  _$GAppletWithNodesReq _build() {
    _$GAppletWithNodesReq _$result;
    try {
      _$result = _$v ??
          new _$GAppletWithNodesReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GAppletWithNodesReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GAppletWithNodesReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAppletWithNodesReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
