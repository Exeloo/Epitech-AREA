// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applet.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetAllAppletsData> _$ggetAllAppletsDataSerializer =
    new _$GgetAllAppletsDataSerializer();
Serializer<GgetAllAppletsData_getAllApplets>
    _$ggetAllAppletsDataGetAllAppletsSerializer =
    new _$GgetAllAppletsData_getAllAppletsSerializer();
Serializer<GgetAppletByIdData> _$ggetAppletByIdDataSerializer =
    new _$GgetAppletByIdDataSerializer();
Serializer<GgetAppletByIdData_getAppletById>
    _$ggetAppletByIdDataGetAppletByIdSerializer =
    new _$GgetAppletByIdData_getAppletByIdSerializer();
Serializer<GgetAppletByIdData_getAppletById_triggerNodes>
    _$ggetAppletByIdDataGetAppletByIdTriggerNodesSerializer =
    new _$GgetAppletByIdData_getAppletById_triggerNodesSerializer();
Serializer<GgetAppletByIdData_getAppletById_triggerNodes_provider>
    _$ggetAppletByIdDataGetAppletByIdTriggerNodesProviderSerializer =
    new _$GgetAppletByIdData_getAppletById_triggerNodes_providerSerializer();
Serializer<GgetAppletByIdData_getAppletById_triggerNodes_previous>
    _$ggetAppletByIdDataGetAppletByIdTriggerNodesPreviousSerializer =
    new _$GgetAppletByIdData_getAppletById_triggerNodes_previousSerializer();
Serializer<GgetAppletByIdData_getAppletById_triggerNodes_next>
    _$ggetAppletByIdDataGetAppletByIdTriggerNodesNextSerializer =
    new _$GgetAppletByIdData_getAppletById_triggerNodes_nextSerializer();
Serializer<GgetAppletNodeByIdData> _$ggetAppletNodeByIdDataSerializer =
    new _$GgetAppletNodeByIdDataSerializer();
Serializer<GgetAppletNodeByIdData_getAppletNodeById>
    _$ggetAppletNodeByIdDataGetAppletNodeByIdSerializer =
    new _$GgetAppletNodeByIdData_getAppletNodeByIdSerializer();
Serializer<GgetAppletNodeByIdData_getAppletNodeById_provider>
    _$ggetAppletNodeByIdDataGetAppletNodeByIdProviderSerializer =
    new _$GgetAppletNodeByIdData_getAppletNodeById_providerSerializer();
Serializer<GgetAppletNodeByIdData_getAppletNodeById_previous>
    _$ggetAppletNodeByIdDataGetAppletNodeByIdPreviousSerializer =
    new _$GgetAppletNodeByIdData_getAppletNodeById_previousSerializer();
Serializer<GgetAppletNodeByIdData_getAppletNodeById_next>
    _$ggetAppletNodeByIdDataGetAppletNodeByIdNextSerializer =
    new _$GgetAppletNodeByIdData_getAppletNodeById_nextSerializer();
Serializer<GcreateAppletData> _$gcreateAppletDataSerializer =
    new _$GcreateAppletDataSerializer();
Serializer<GcreateAppletData_createApplet>
    _$gcreateAppletDataCreateAppletSerializer =
    new _$GcreateAppletData_createAppletSerializer();
Serializer<GBaseAppletProviderData> _$gBaseAppletProviderDataSerializer =
    new _$GBaseAppletProviderDataSerializer();
Serializer<GBaseAppletNodeData> _$gBaseAppletNodeDataSerializer =
    new _$GBaseAppletNodeDataSerializer();
Serializer<GExtendedAppletNodeData> _$gExtendedAppletNodeDataSerializer =
    new _$GExtendedAppletNodeDataSerializer();
Serializer<GExtendedAppletNodeData_provider>
    _$gExtendedAppletNodeDataProviderSerializer =
    new _$GExtendedAppletNodeData_providerSerializer();
Serializer<GExtendedAppletNodeData_previous>
    _$gExtendedAppletNodeDataPreviousSerializer =
    new _$GExtendedAppletNodeData_previousSerializer();
Serializer<GExtendedAppletNodeData_next>
    _$gExtendedAppletNodeDataNextSerializer =
    new _$GExtendedAppletNodeData_nextSerializer();
Serializer<GBaseAppletData> _$gBaseAppletDataSerializer =
    new _$GBaseAppletDataSerializer();
Serializer<GAppletWithNodesData> _$gAppletWithNodesDataSerializer =
    new _$GAppletWithNodesDataSerializer();
Serializer<GAppletWithNodesData_triggerNodes>
    _$gAppletWithNodesDataTriggerNodesSerializer =
    new _$GAppletWithNodesData_triggerNodesSerializer();
Serializer<GAppletWithNodesData_triggerNodes_provider>
    _$gAppletWithNodesDataTriggerNodesProviderSerializer =
    new _$GAppletWithNodesData_triggerNodes_providerSerializer();
Serializer<GAppletWithNodesData_triggerNodes_previous>
    _$gAppletWithNodesDataTriggerNodesPreviousSerializer =
    new _$GAppletWithNodesData_triggerNodes_previousSerializer();
Serializer<GAppletWithNodesData_triggerNodes_next>
    _$gAppletWithNodesDataTriggerNodesNextSerializer =
    new _$GAppletWithNodesData_triggerNodes_nextSerializer();

class _$GgetAllAppletsDataSerializer
    implements StructuredSerializer<GgetAllAppletsData> {
  @override
  final Iterable<Type> types = const [GgetAllAppletsData, _$GgetAllAppletsData];
  @override
  final String wireName = 'GgetAllAppletsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetAllAppletsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getAllApplets',
      serializers.serialize(object.getAllApplets,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GgetAllAppletsData_getAllApplets)])),
    ];

    return result;
  }

  @override
  GgetAllAppletsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetAllAppletsDataBuilder();

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
        case 'getAllApplets':
          result.getAllApplets.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GgetAllAppletsData_getAllApplets)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetAllAppletsData_getAllAppletsSerializer
    implements StructuredSerializer<GgetAllAppletsData_getAllApplets> {
  @override
  final Iterable<Type> types = const [
    GgetAllAppletsData_getAllApplets,
    _$GgetAllAppletsData_getAllApplets
  ];
  @override
  final String wireName = 'GgetAllAppletsData_getAllApplets';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetAllAppletsData_getAllApplets object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
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
  GgetAllAppletsData_getAllApplets deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetAllAppletsData_getAllAppletsBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
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

class _$GgetAppletByIdDataSerializer
    implements StructuredSerializer<GgetAppletByIdData> {
  @override
  final Iterable<Type> types = const [GgetAppletByIdData, _$GgetAppletByIdData];
  @override
  final String wireName = 'GgetAppletByIdData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetAppletByIdData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getAppletById',
      serializers.serialize(object.getAppletById,
          specifiedType: const FullType(GgetAppletByIdData_getAppletById)),
    ];

    return result;
  }

  @override
  GgetAppletByIdData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetAppletByIdDataBuilder();

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
        case 'getAppletById':
          result.getAppletById.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GgetAppletByIdData_getAppletById))!
              as GgetAppletByIdData_getAppletById);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetAppletByIdData_getAppletByIdSerializer
    implements StructuredSerializer<GgetAppletByIdData_getAppletById> {
  @override
  final Iterable<Type> types = const [
    GgetAppletByIdData_getAppletById,
    _$GgetAppletByIdData_getAppletById
  ];
  @override
  final String wireName = 'GgetAppletByIdData_getAppletById';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetAppletByIdData_getAppletById object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'triggerNodes',
      serializers.serialize(object.triggerNodes,
          specifiedType: const FullType(BuiltList, const [
            const FullType(GgetAppletByIdData_getAppletById_triggerNodes)
          ])),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
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
  GgetAppletByIdData_getAppletById deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetAppletByIdData_getAppletByIdBuilder();

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
        case 'triggerNodes':
          result.triggerNodes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GgetAppletByIdData_getAppletById_triggerNodes)
              ]))! as BuiltList<Object?>);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
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

class _$GgetAppletByIdData_getAppletById_triggerNodesSerializer
    implements
        StructuredSerializer<GgetAppletByIdData_getAppletById_triggerNodes> {
  @override
  final Iterable<Type> types = const [
    GgetAppletByIdData_getAppletById_triggerNodes,
    _$GgetAppletByIdData_getAppletById_triggerNodes
  ];
  @override
  final String wireName = 'GgetAppletByIdData_getAppletById_triggerNodes';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetAppletByIdData_getAppletById_triggerNodes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i2.GJSON)),
      'provider',
      serializers.serialize(object.provider,
          specifiedType: const FullType(
              GgetAppletByIdData_getAppletById_triggerNodes_provider)),
      'previous',
      serializers.serialize(object.previous,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                GgetAppletByIdData_getAppletById_triggerNodes_previous)
          ])),
      'next',
      serializers.serialize(object.next,
          specifiedType: const FullType(BuiltList, const [
            const FullType(GgetAppletByIdData_getAppletById_triggerNodes_next)
          ])),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'actionId',
      serializers.serialize(object.actionId,
          specifiedType: const FullType(String)),
      'actionType',
      serializers.serialize(object.actionType,
          specifiedType: const FullType(_i2.GAppletNodeType)),
    ];

    return result;
  }

  @override
  GgetAppletByIdData_getAppletById_triggerNodes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetAppletByIdData_getAppletById_triggerNodesBuilder();

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
        case 'input':
          result.input.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GJSON))! as _i2.GJSON);
          break;
        case 'provider':
          result.provider.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetAppletByIdData_getAppletById_triggerNodes_provider))!
              as GgetAppletByIdData_getAppletById_triggerNodes_provider);
          break;
        case 'previous':
          result.previous.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GgetAppletByIdData_getAppletById_triggerNodes_previous)
              ]))! as BuiltList<Object?>);
          break;
        case 'next':
          result.next.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GgetAppletByIdData_getAppletById_triggerNodes_next)
              ]))! as BuiltList<Object?>);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'actionId':
          result.actionId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'actionType':
          result.actionType = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GAppletNodeType))!
              as _i2.GAppletNodeType;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetAppletByIdData_getAppletById_triggerNodes_providerSerializer
    implements
        StructuredSerializer<
            GgetAppletByIdData_getAppletById_triggerNodes_provider> {
  @override
  final Iterable<Type> types = const [
    GgetAppletByIdData_getAppletById_triggerNodes_provider,
    _$GgetAppletByIdData_getAppletById_triggerNodes_provider
  ];
  @override
  final String wireName =
      'GgetAppletByIdData_getAppletById_triggerNodes_provider';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetAppletByIdData_getAppletById_triggerNodes_provider object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'img',
      serializers.serialize(object.img, specifiedType: const FullType(String)),
      'color',
      serializers.serialize(object.color,
          specifiedType: const FullType(String)),
      'visibility',
      serializers.serialize(object.visibility,
          specifiedType: const FullType(_i2.GProviderVisibility)),
    ];

    return result;
  }

  @override
  GgetAppletByIdData_getAppletById_triggerNodes_provider deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetAppletByIdData_getAppletById_triggerNodes_providerBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'img':
          result.img = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GProviderVisibility))!
              as _i2.GProviderVisibility;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetAppletByIdData_getAppletById_triggerNodes_previousSerializer
    implements
        StructuredSerializer<
            GgetAppletByIdData_getAppletById_triggerNodes_previous> {
  @override
  final Iterable<Type> types = const [
    GgetAppletByIdData_getAppletById_triggerNodes_previous,
    _$GgetAppletByIdData_getAppletById_triggerNodes_previous
  ];
  @override
  final String wireName =
      'GgetAppletByIdData_getAppletById_triggerNodes_previous';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetAppletByIdData_getAppletById_triggerNodes_previous object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'actionId',
      serializers.serialize(object.actionId,
          specifiedType: const FullType(String)),
      'actionType',
      serializers.serialize(object.actionType,
          specifiedType: const FullType(_i2.GAppletNodeType)),
    ];

    return result;
  }

  @override
  GgetAppletByIdData_getAppletById_triggerNodes_previous deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetAppletByIdData_getAppletById_triggerNodes_previousBuilder();

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
        case 'actionId':
          result.actionId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'actionType':
          result.actionType = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GAppletNodeType))!
              as _i2.GAppletNodeType;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetAppletByIdData_getAppletById_triggerNodes_nextSerializer
    implements
        StructuredSerializer<
            GgetAppletByIdData_getAppletById_triggerNodes_next> {
  @override
  final Iterable<Type> types = const [
    GgetAppletByIdData_getAppletById_triggerNodes_next,
    _$GgetAppletByIdData_getAppletById_triggerNodes_next
  ];
  @override
  final String wireName = 'GgetAppletByIdData_getAppletById_triggerNodes_next';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetAppletByIdData_getAppletById_triggerNodes_next object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'actionId',
      serializers.serialize(object.actionId,
          specifiedType: const FullType(String)),
      'actionType',
      serializers.serialize(object.actionType,
          specifiedType: const FullType(_i2.GAppletNodeType)),
    ];

    return result;
  }

  @override
  GgetAppletByIdData_getAppletById_triggerNodes_next deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetAppletByIdData_getAppletById_triggerNodes_nextBuilder();

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
        case 'actionId':
          result.actionId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'actionType':
          result.actionType = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GAppletNodeType))!
              as _i2.GAppletNodeType;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetAppletNodeByIdDataSerializer
    implements StructuredSerializer<GgetAppletNodeByIdData> {
  @override
  final Iterable<Type> types = const [
    GgetAppletNodeByIdData,
    _$GgetAppletNodeByIdData
  ];
  @override
  final String wireName = 'GgetAppletNodeByIdData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetAppletNodeByIdData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getAppletNodeById',
      serializers.serialize(object.getAppletNodeById,
          specifiedType:
              const FullType(GgetAppletNodeByIdData_getAppletNodeById)),
    ];

    return result;
  }

  @override
  GgetAppletNodeByIdData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetAppletNodeByIdDataBuilder();

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
        case 'getAppletNodeById':
          result.getAppletNodeById.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GgetAppletNodeByIdData_getAppletNodeById))!
              as GgetAppletNodeByIdData_getAppletNodeById);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetAppletNodeByIdData_getAppletNodeByIdSerializer
    implements StructuredSerializer<GgetAppletNodeByIdData_getAppletNodeById> {
  @override
  final Iterable<Type> types = const [
    GgetAppletNodeByIdData_getAppletNodeById,
    _$GgetAppletNodeByIdData_getAppletNodeById
  ];
  @override
  final String wireName = 'GgetAppletNodeByIdData_getAppletNodeById';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetAppletNodeByIdData_getAppletNodeById object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i2.GJSON)),
      'provider',
      serializers.serialize(object.provider,
          specifiedType: const FullType(
              GgetAppletNodeByIdData_getAppletNodeById_provider)),
      'previous',
      serializers.serialize(object.previous,
          specifiedType: const FullType(BuiltList, const [
            const FullType(GgetAppletNodeByIdData_getAppletNodeById_previous)
          ])),
      'next',
      serializers.serialize(object.next,
          specifiedType: const FullType(BuiltList, const [
            const FullType(GgetAppletNodeByIdData_getAppletNodeById_next)
          ])),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'actionId',
      serializers.serialize(object.actionId,
          specifiedType: const FullType(String)),
      'actionType',
      serializers.serialize(object.actionType,
          specifiedType: const FullType(_i2.GAppletNodeType)),
    ];

    return result;
  }

  @override
  GgetAppletNodeByIdData_getAppletNodeById deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetAppletNodeByIdData_getAppletNodeByIdBuilder();

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
        case 'input':
          result.input.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GJSON))! as _i2.GJSON);
          break;
        case 'provider':
          result.provider.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetAppletNodeByIdData_getAppletNodeById_provider))!
              as GgetAppletNodeByIdData_getAppletNodeById_provider);
          break;
        case 'previous':
          result.previous.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GgetAppletNodeByIdData_getAppletNodeById_previous)
              ]))! as BuiltList<Object?>);
          break;
        case 'next':
          result.next.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GgetAppletNodeByIdData_getAppletNodeById_next)
              ]))! as BuiltList<Object?>);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'actionId':
          result.actionId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'actionType':
          result.actionType = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GAppletNodeType))!
              as _i2.GAppletNodeType;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetAppletNodeByIdData_getAppletNodeById_providerSerializer
    implements
        StructuredSerializer<
            GgetAppletNodeByIdData_getAppletNodeById_provider> {
  @override
  final Iterable<Type> types = const [
    GgetAppletNodeByIdData_getAppletNodeById_provider,
    _$GgetAppletNodeByIdData_getAppletNodeById_provider
  ];
  @override
  final String wireName = 'GgetAppletNodeByIdData_getAppletNodeById_provider';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetAppletNodeByIdData_getAppletNodeById_provider object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'img',
      serializers.serialize(object.img, specifiedType: const FullType(String)),
      'color',
      serializers.serialize(object.color,
          specifiedType: const FullType(String)),
      'visibility',
      serializers.serialize(object.visibility,
          specifiedType: const FullType(_i2.GProviderVisibility)),
    ];

    return result;
  }

  @override
  GgetAppletNodeByIdData_getAppletNodeById_provider deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetAppletNodeByIdData_getAppletNodeById_providerBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'img':
          result.img = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GProviderVisibility))!
              as _i2.GProviderVisibility;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetAppletNodeByIdData_getAppletNodeById_previousSerializer
    implements
        StructuredSerializer<
            GgetAppletNodeByIdData_getAppletNodeById_previous> {
  @override
  final Iterable<Type> types = const [
    GgetAppletNodeByIdData_getAppletNodeById_previous,
    _$GgetAppletNodeByIdData_getAppletNodeById_previous
  ];
  @override
  final String wireName = 'GgetAppletNodeByIdData_getAppletNodeById_previous';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetAppletNodeByIdData_getAppletNodeById_previous object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'actionId',
      serializers.serialize(object.actionId,
          specifiedType: const FullType(String)),
      'actionType',
      serializers.serialize(object.actionType,
          specifiedType: const FullType(_i2.GAppletNodeType)),
    ];

    return result;
  }

  @override
  GgetAppletNodeByIdData_getAppletNodeById_previous deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetAppletNodeByIdData_getAppletNodeById_previousBuilder();

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
        case 'actionId':
          result.actionId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'actionType':
          result.actionType = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GAppletNodeType))!
              as _i2.GAppletNodeType;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetAppletNodeByIdData_getAppletNodeById_nextSerializer
    implements
        StructuredSerializer<GgetAppletNodeByIdData_getAppletNodeById_next> {
  @override
  final Iterable<Type> types = const [
    GgetAppletNodeByIdData_getAppletNodeById_next,
    _$GgetAppletNodeByIdData_getAppletNodeById_next
  ];
  @override
  final String wireName = 'GgetAppletNodeByIdData_getAppletNodeById_next';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetAppletNodeByIdData_getAppletNodeById_next object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'actionId',
      serializers.serialize(object.actionId,
          specifiedType: const FullType(String)),
      'actionType',
      serializers.serialize(object.actionType,
          specifiedType: const FullType(_i2.GAppletNodeType)),
    ];

    return result;
  }

  @override
  GgetAppletNodeByIdData_getAppletNodeById_next deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetAppletNodeByIdData_getAppletNodeById_nextBuilder();

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
        case 'actionId':
          result.actionId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'actionType':
          result.actionType = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GAppletNodeType))!
              as _i2.GAppletNodeType;
          break;
      }
    }

    return result.build();
  }
}

class _$GcreateAppletDataSerializer
    implements StructuredSerializer<GcreateAppletData> {
  @override
  final Iterable<Type> types = const [GcreateAppletData, _$GcreateAppletData];
  @override
  final String wireName = 'GcreateAppletData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GcreateAppletData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'createApplet',
      serializers.serialize(object.createApplet,
          specifiedType: const FullType(GcreateAppletData_createApplet)),
    ];

    return result;
  }

  @override
  GcreateAppletData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcreateAppletDataBuilder();

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
        case 'createApplet':
          result.createApplet.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GcreateAppletData_createApplet))!
              as GcreateAppletData_createApplet);
          break;
      }
    }

    return result.build();
  }
}

class _$GcreateAppletData_createAppletSerializer
    implements StructuredSerializer<GcreateAppletData_createApplet> {
  @override
  final Iterable<Type> types = const [
    GcreateAppletData_createApplet,
    _$GcreateAppletData_createApplet
  ];
  @override
  final String wireName = 'GcreateAppletData_createApplet';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GcreateAppletData_createApplet object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
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
  GcreateAppletData_createApplet deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcreateAppletData_createAppletBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
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

class _$GBaseAppletProviderDataSerializer
    implements StructuredSerializer<GBaseAppletProviderData> {
  @override
  final Iterable<Type> types = const [
    GBaseAppletProviderData,
    _$GBaseAppletProviderData
  ];
  @override
  final String wireName = 'GBaseAppletProviderData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GBaseAppletProviderData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'img',
      serializers.serialize(object.img, specifiedType: const FullType(String)),
      'color',
      serializers.serialize(object.color,
          specifiedType: const FullType(String)),
      'visibility',
      serializers.serialize(object.visibility,
          specifiedType: const FullType(_i2.GProviderVisibility)),
    ];

    return result;
  }

  @override
  GBaseAppletProviderData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GBaseAppletProviderDataBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'img':
          result.img = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GProviderVisibility))!
              as _i2.GProviderVisibility;
          break;
      }
    }

    return result.build();
  }
}

class _$GBaseAppletNodeDataSerializer
    implements StructuredSerializer<GBaseAppletNodeData> {
  @override
  final Iterable<Type> types = const [
    GBaseAppletNodeData,
    _$GBaseAppletNodeData
  ];
  @override
  final String wireName = 'GBaseAppletNodeData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GBaseAppletNodeData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'actionId',
      serializers.serialize(object.actionId,
          specifiedType: const FullType(String)),
      'actionType',
      serializers.serialize(object.actionType,
          specifiedType: const FullType(_i2.GAppletNodeType)),
    ];

    return result;
  }

  @override
  GBaseAppletNodeData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GBaseAppletNodeDataBuilder();

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
        case 'actionId':
          result.actionId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'actionType':
          result.actionType = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GAppletNodeType))!
              as _i2.GAppletNodeType;
          break;
      }
    }

    return result.build();
  }
}

class _$GExtendedAppletNodeDataSerializer
    implements StructuredSerializer<GExtendedAppletNodeData> {
  @override
  final Iterable<Type> types = const [
    GExtendedAppletNodeData,
    _$GExtendedAppletNodeData
  ];
  @override
  final String wireName = 'GExtendedAppletNodeData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GExtendedAppletNodeData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'actionId',
      serializers.serialize(object.actionId,
          specifiedType: const FullType(String)),
      'actionType',
      serializers.serialize(object.actionType,
          specifiedType: const FullType(_i2.GAppletNodeType)),
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i2.GJSON)),
      'provider',
      serializers.serialize(object.provider,
          specifiedType: const FullType(GExtendedAppletNodeData_provider)),
      'previous',
      serializers.serialize(object.previous,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GExtendedAppletNodeData_previous)])),
      'next',
      serializers.serialize(object.next,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GExtendedAppletNodeData_next)])),
    ];

    return result;
  }

  @override
  GExtendedAppletNodeData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GExtendedAppletNodeDataBuilder();

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
        case 'actionId':
          result.actionId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'actionType':
          result.actionType = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GAppletNodeType))!
              as _i2.GAppletNodeType;
          break;
        case 'input':
          result.input.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GJSON))! as _i2.GJSON);
          break;
        case 'provider':
          result.provider.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GExtendedAppletNodeData_provider))!
              as GExtendedAppletNodeData_provider);
          break;
        case 'previous':
          result.previous.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GExtendedAppletNodeData_previous)
              ]))! as BuiltList<Object?>);
          break;
        case 'next':
          result.next.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GExtendedAppletNodeData_next)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GExtendedAppletNodeData_providerSerializer
    implements StructuredSerializer<GExtendedAppletNodeData_provider> {
  @override
  final Iterable<Type> types = const [
    GExtendedAppletNodeData_provider,
    _$GExtendedAppletNodeData_provider
  ];
  @override
  final String wireName = 'GExtendedAppletNodeData_provider';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GExtendedAppletNodeData_provider object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'img',
      serializers.serialize(object.img, specifiedType: const FullType(String)),
      'color',
      serializers.serialize(object.color,
          specifiedType: const FullType(String)),
      'visibility',
      serializers.serialize(object.visibility,
          specifiedType: const FullType(_i2.GProviderVisibility)),
    ];

    return result;
  }

  @override
  GExtendedAppletNodeData_provider deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GExtendedAppletNodeData_providerBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'img':
          result.img = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GProviderVisibility))!
              as _i2.GProviderVisibility;
          break;
      }
    }

    return result.build();
  }
}

class _$GExtendedAppletNodeData_previousSerializer
    implements StructuredSerializer<GExtendedAppletNodeData_previous> {
  @override
  final Iterable<Type> types = const [
    GExtendedAppletNodeData_previous,
    _$GExtendedAppletNodeData_previous
  ];
  @override
  final String wireName = 'GExtendedAppletNodeData_previous';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GExtendedAppletNodeData_previous object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'actionId',
      serializers.serialize(object.actionId,
          specifiedType: const FullType(String)),
      'actionType',
      serializers.serialize(object.actionType,
          specifiedType: const FullType(_i2.GAppletNodeType)),
    ];

    return result;
  }

  @override
  GExtendedAppletNodeData_previous deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GExtendedAppletNodeData_previousBuilder();

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
        case 'actionId':
          result.actionId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'actionType':
          result.actionType = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GAppletNodeType))!
              as _i2.GAppletNodeType;
          break;
      }
    }

    return result.build();
  }
}

class _$GExtendedAppletNodeData_nextSerializer
    implements StructuredSerializer<GExtendedAppletNodeData_next> {
  @override
  final Iterable<Type> types = const [
    GExtendedAppletNodeData_next,
    _$GExtendedAppletNodeData_next
  ];
  @override
  final String wireName = 'GExtendedAppletNodeData_next';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GExtendedAppletNodeData_next object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'actionId',
      serializers.serialize(object.actionId,
          specifiedType: const FullType(String)),
      'actionType',
      serializers.serialize(object.actionType,
          specifiedType: const FullType(_i2.GAppletNodeType)),
    ];

    return result;
  }

  @override
  GExtendedAppletNodeData_next deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GExtendedAppletNodeData_nextBuilder();

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
        case 'actionId':
          result.actionId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'actionType':
          result.actionType = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GAppletNodeType))!
              as _i2.GAppletNodeType;
          break;
      }
    }

    return result.build();
  }
}

class _$GBaseAppletDataSerializer
    implements StructuredSerializer<GBaseAppletData> {
  @override
  final Iterable<Type> types = const [GBaseAppletData, _$GBaseAppletData];
  @override
  final String wireName = 'GBaseAppletData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GBaseAppletData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
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
  GBaseAppletData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GBaseAppletDataBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
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

class _$GAppletWithNodesDataSerializer
    implements StructuredSerializer<GAppletWithNodesData> {
  @override
  final Iterable<Type> types = const [
    GAppletWithNodesData,
    _$GAppletWithNodesData
  ];
  @override
  final String wireName = 'GAppletWithNodesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAppletWithNodesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'triggerNodes',
      serializers.serialize(object.triggerNodes,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GAppletWithNodesData_triggerNodes)])),
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
  GAppletWithNodesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAppletWithNodesDataBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'triggerNodes':
          result.triggerNodes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GAppletWithNodesData_triggerNodes)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GAppletWithNodesData_triggerNodesSerializer
    implements StructuredSerializer<GAppletWithNodesData_triggerNodes> {
  @override
  final Iterable<Type> types = const [
    GAppletWithNodesData_triggerNodes,
    _$GAppletWithNodesData_triggerNodes
  ];
  @override
  final String wireName = 'GAppletWithNodesData_triggerNodes';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAppletWithNodesData_triggerNodes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i2.GJSON)),
      'provider',
      serializers.serialize(object.provider,
          specifiedType:
              const FullType(GAppletWithNodesData_triggerNodes_provider)),
      'previous',
      serializers.serialize(object.previous,
          specifiedType: const FullType(BuiltList, const [
            const FullType(GAppletWithNodesData_triggerNodes_previous)
          ])),
      'next',
      serializers.serialize(object.next,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GAppletWithNodesData_triggerNodes_next)])),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'actionId',
      serializers.serialize(object.actionId,
          specifiedType: const FullType(String)),
      'actionType',
      serializers.serialize(object.actionType,
          specifiedType: const FullType(_i2.GAppletNodeType)),
    ];

    return result;
  }

  @override
  GAppletWithNodesData_triggerNodes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAppletWithNodesData_triggerNodesBuilder();

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
        case 'input':
          result.input.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GJSON))! as _i2.GJSON);
          break;
        case 'provider':
          result.provider.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GAppletWithNodesData_triggerNodes_provider))!
              as GAppletWithNodesData_triggerNodes_provider);
          break;
        case 'previous':
          result.previous.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GAppletWithNodesData_triggerNodes_previous)
              ]))! as BuiltList<Object?>);
          break;
        case 'next':
          result.next.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GAppletWithNodesData_triggerNodes_next)
              ]))! as BuiltList<Object?>);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'actionId':
          result.actionId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'actionType':
          result.actionType = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GAppletNodeType))!
              as _i2.GAppletNodeType;
          break;
      }
    }

    return result.build();
  }
}

class _$GAppletWithNodesData_triggerNodes_providerSerializer
    implements
        StructuredSerializer<GAppletWithNodesData_triggerNodes_provider> {
  @override
  final Iterable<Type> types = const [
    GAppletWithNodesData_triggerNodes_provider,
    _$GAppletWithNodesData_triggerNodes_provider
  ];
  @override
  final String wireName = 'GAppletWithNodesData_triggerNodes_provider';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GAppletWithNodesData_triggerNodes_provider object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'img',
      serializers.serialize(object.img, specifiedType: const FullType(String)),
      'color',
      serializers.serialize(object.color,
          specifiedType: const FullType(String)),
      'visibility',
      serializers.serialize(object.visibility,
          specifiedType: const FullType(_i2.GProviderVisibility)),
    ];

    return result;
  }

  @override
  GAppletWithNodesData_triggerNodes_provider deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAppletWithNodesData_triggerNodes_providerBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'img':
          result.img = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GProviderVisibility))!
              as _i2.GProviderVisibility;
          break;
      }
    }

    return result.build();
  }
}

class _$GAppletWithNodesData_triggerNodes_previousSerializer
    implements
        StructuredSerializer<GAppletWithNodesData_triggerNodes_previous> {
  @override
  final Iterable<Type> types = const [
    GAppletWithNodesData_triggerNodes_previous,
    _$GAppletWithNodesData_triggerNodes_previous
  ];
  @override
  final String wireName = 'GAppletWithNodesData_triggerNodes_previous';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GAppletWithNodesData_triggerNodes_previous object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'actionId',
      serializers.serialize(object.actionId,
          specifiedType: const FullType(String)),
      'actionType',
      serializers.serialize(object.actionType,
          specifiedType: const FullType(_i2.GAppletNodeType)),
    ];

    return result;
  }

  @override
  GAppletWithNodesData_triggerNodes_previous deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAppletWithNodesData_triggerNodes_previousBuilder();

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
        case 'actionId':
          result.actionId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'actionType':
          result.actionType = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GAppletNodeType))!
              as _i2.GAppletNodeType;
          break;
      }
    }

    return result.build();
  }
}

class _$GAppletWithNodesData_triggerNodes_nextSerializer
    implements StructuredSerializer<GAppletWithNodesData_triggerNodes_next> {
  @override
  final Iterable<Type> types = const [
    GAppletWithNodesData_triggerNodes_next,
    _$GAppletWithNodesData_triggerNodes_next
  ];
  @override
  final String wireName = 'GAppletWithNodesData_triggerNodes_next';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAppletWithNodesData_triggerNodes_next object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'actionId',
      serializers.serialize(object.actionId,
          specifiedType: const FullType(String)),
      'actionType',
      serializers.serialize(object.actionType,
          specifiedType: const FullType(_i2.GAppletNodeType)),
    ];

    return result;
  }

  @override
  GAppletWithNodesData_triggerNodes_next deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAppletWithNodesData_triggerNodes_nextBuilder();

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
        case 'actionId':
          result.actionId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'actionType':
          result.actionType = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GAppletNodeType))!
              as _i2.GAppletNodeType;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetAllAppletsData extends GgetAllAppletsData {
  @override
  final String G__typename;
  @override
  final BuiltList<GgetAllAppletsData_getAllApplets> getAllApplets;

  factory _$GgetAllAppletsData(
          [void Function(GgetAllAppletsDataBuilder)? updates]) =>
      (new GgetAllAppletsDataBuilder()..update(updates))._build();

  _$GgetAllAppletsData._(
      {required this.G__typename, required this.getAllApplets})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetAllAppletsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        getAllApplets, r'GgetAllAppletsData', 'getAllApplets');
  }

  @override
  GgetAllAppletsData rebuild(
          void Function(GgetAllAppletsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAllAppletsDataBuilder toBuilder() =>
      new GgetAllAppletsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetAllAppletsData &&
        G__typename == other.G__typename &&
        getAllApplets == other.getAllApplets;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getAllApplets.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetAllAppletsData')
          ..add('G__typename', G__typename)
          ..add('getAllApplets', getAllApplets))
        .toString();
  }
}

class GgetAllAppletsDataBuilder
    implements Builder<GgetAllAppletsData, GgetAllAppletsDataBuilder> {
  _$GgetAllAppletsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GgetAllAppletsData_getAllApplets>? _getAllApplets;
  ListBuilder<GgetAllAppletsData_getAllApplets> get getAllApplets =>
      _$this._getAllApplets ??=
          new ListBuilder<GgetAllAppletsData_getAllApplets>();
  set getAllApplets(
          ListBuilder<GgetAllAppletsData_getAllApplets>? getAllApplets) =>
      _$this._getAllApplets = getAllApplets;

  GgetAllAppletsDataBuilder() {
    GgetAllAppletsData._initializeBuilder(this);
  }

  GgetAllAppletsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getAllApplets = $v.getAllApplets.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetAllAppletsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAllAppletsData;
  }

  @override
  void update(void Function(GgetAllAppletsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAllAppletsData build() => _build();

  _$GgetAllAppletsData _build() {
    _$GgetAllAppletsData _$result;
    try {
      _$result = _$v ??
          new _$GgetAllAppletsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetAllAppletsData', 'G__typename'),
              getAllApplets: getAllApplets.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getAllApplets';
        getAllApplets.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetAllAppletsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetAllAppletsData_getAllApplets
    extends GgetAllAppletsData_getAllApplets {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;
  @override
  final String? description;

  factory _$GgetAllAppletsData_getAllApplets(
          [void Function(GgetAllAppletsData_getAllAppletsBuilder)? updates]) =>
      (new GgetAllAppletsData_getAllAppletsBuilder()..update(updates))._build();

  _$GgetAllAppletsData_getAllApplets._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetAllAppletsData_getAllApplets', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GgetAllAppletsData_getAllApplets', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GgetAllAppletsData_getAllApplets', 'name');
  }

  @override
  GgetAllAppletsData_getAllApplets rebuild(
          void Function(GgetAllAppletsData_getAllAppletsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAllAppletsData_getAllAppletsBuilder toBuilder() =>
      new GgetAllAppletsData_getAllAppletsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetAllAppletsData_getAllApplets &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetAllAppletsData_getAllApplets')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description))
        .toString();
  }
}

class GgetAllAppletsData_getAllAppletsBuilder
    implements
        Builder<GgetAllAppletsData_getAllApplets,
            GgetAllAppletsData_getAllAppletsBuilder> {
  _$GgetAllAppletsData_getAllApplets? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GgetAllAppletsData_getAllAppletsBuilder() {
    GgetAllAppletsData_getAllApplets._initializeBuilder(this);
  }

  GgetAllAppletsData_getAllAppletsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetAllAppletsData_getAllApplets other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAllAppletsData_getAllApplets;
  }

  @override
  void update(void Function(GgetAllAppletsData_getAllAppletsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAllAppletsData_getAllApplets build() => _build();

  _$GgetAllAppletsData_getAllApplets _build() {
    final _$result = _$v ??
        new _$GgetAllAppletsData_getAllApplets._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GgetAllAppletsData_getAllApplets', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GgetAllAppletsData_getAllApplets', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GgetAllAppletsData_getAllApplets', 'name'),
            description: description);
    replace(_$result);
    return _$result;
  }
}

class _$GgetAppletByIdData extends GgetAppletByIdData {
  @override
  final String G__typename;
  @override
  final GgetAppletByIdData_getAppletById getAppletById;

  factory _$GgetAppletByIdData(
          [void Function(GgetAppletByIdDataBuilder)? updates]) =>
      (new GgetAppletByIdDataBuilder()..update(updates))._build();

  _$GgetAppletByIdData._(
      {required this.G__typename, required this.getAppletById})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetAppletByIdData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        getAppletById, r'GgetAppletByIdData', 'getAppletById');
  }

  @override
  GgetAppletByIdData rebuild(
          void Function(GgetAppletByIdDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAppletByIdDataBuilder toBuilder() =>
      new GgetAppletByIdDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetAppletByIdData &&
        G__typename == other.G__typename &&
        getAppletById == other.getAppletById;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getAppletById.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetAppletByIdData')
          ..add('G__typename', G__typename)
          ..add('getAppletById', getAppletById))
        .toString();
  }
}

class GgetAppletByIdDataBuilder
    implements Builder<GgetAppletByIdData, GgetAppletByIdDataBuilder> {
  _$GgetAppletByIdData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetAppletByIdData_getAppletByIdBuilder? _getAppletById;
  GgetAppletByIdData_getAppletByIdBuilder get getAppletById =>
      _$this._getAppletById ??= new GgetAppletByIdData_getAppletByIdBuilder();
  set getAppletById(GgetAppletByIdData_getAppletByIdBuilder? getAppletById) =>
      _$this._getAppletById = getAppletById;

  GgetAppletByIdDataBuilder() {
    GgetAppletByIdData._initializeBuilder(this);
  }

  GgetAppletByIdDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getAppletById = $v.getAppletById.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetAppletByIdData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAppletByIdData;
  }

  @override
  void update(void Function(GgetAppletByIdDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAppletByIdData build() => _build();

  _$GgetAppletByIdData _build() {
    _$GgetAppletByIdData _$result;
    try {
      _$result = _$v ??
          new _$GgetAppletByIdData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetAppletByIdData', 'G__typename'),
              getAppletById: getAppletById.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getAppletById';
        getAppletById.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetAppletByIdData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetAppletByIdData_getAppletById
    extends GgetAppletByIdData_getAppletById {
  @override
  final String G__typename;
  @override
  final BuiltList<GgetAppletByIdData_getAppletById_triggerNodes> triggerNodes;
  @override
  final int id;
  @override
  final String name;
  @override
  final String? description;

  factory _$GgetAppletByIdData_getAppletById(
          [void Function(GgetAppletByIdData_getAppletByIdBuilder)? updates]) =>
      (new GgetAppletByIdData_getAppletByIdBuilder()..update(updates))._build();

  _$GgetAppletByIdData_getAppletById._(
      {required this.G__typename,
      required this.triggerNodes,
      required this.id,
      required this.name,
      this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetAppletByIdData_getAppletById', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        triggerNodes, r'GgetAppletByIdData_getAppletById', 'triggerNodes');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GgetAppletByIdData_getAppletById', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GgetAppletByIdData_getAppletById', 'name');
  }

  @override
  GgetAppletByIdData_getAppletById rebuild(
          void Function(GgetAppletByIdData_getAppletByIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAppletByIdData_getAppletByIdBuilder toBuilder() =>
      new GgetAppletByIdData_getAppletByIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetAppletByIdData_getAppletById &&
        G__typename == other.G__typename &&
        triggerNodes == other.triggerNodes &&
        id == other.id &&
        name == other.name &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, triggerNodes.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetAppletByIdData_getAppletById')
          ..add('G__typename', G__typename)
          ..add('triggerNodes', triggerNodes)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description))
        .toString();
  }
}

class GgetAppletByIdData_getAppletByIdBuilder
    implements
        Builder<GgetAppletByIdData_getAppletById,
            GgetAppletByIdData_getAppletByIdBuilder> {
  _$GgetAppletByIdData_getAppletById? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GgetAppletByIdData_getAppletById_triggerNodes>? _triggerNodes;
  ListBuilder<GgetAppletByIdData_getAppletById_triggerNodes> get triggerNodes =>
      _$this._triggerNodes ??=
          new ListBuilder<GgetAppletByIdData_getAppletById_triggerNodes>();
  set triggerNodes(
          ListBuilder<GgetAppletByIdData_getAppletById_triggerNodes>?
              triggerNodes) =>
      _$this._triggerNodes = triggerNodes;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GgetAppletByIdData_getAppletByIdBuilder() {
    GgetAppletByIdData_getAppletById._initializeBuilder(this);
  }

  GgetAppletByIdData_getAppletByIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _triggerNodes = $v.triggerNodes.toBuilder();
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetAppletByIdData_getAppletById other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAppletByIdData_getAppletById;
  }

  @override
  void update(void Function(GgetAppletByIdData_getAppletByIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAppletByIdData_getAppletById build() => _build();

  _$GgetAppletByIdData_getAppletById _build() {
    _$GgetAppletByIdData_getAppletById _$result;
    try {
      _$result = _$v ??
          new _$GgetAppletByIdData_getAppletById._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GgetAppletByIdData_getAppletById', 'G__typename'),
              triggerNodes: triggerNodes.build(),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GgetAppletByIdData_getAppletById', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GgetAppletByIdData_getAppletById', 'name'),
              description: description);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'triggerNodes';
        triggerNodes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetAppletByIdData_getAppletById', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetAppletByIdData_getAppletById_triggerNodes
    extends GgetAppletByIdData_getAppletById_triggerNodes {
  @override
  final String G__typename;
  @override
  final _i2.GJSON input;
  @override
  final GgetAppletByIdData_getAppletById_triggerNodes_provider provider;
  @override
  final BuiltList<GgetAppletByIdData_getAppletById_triggerNodes_previous>
      previous;
  @override
  final BuiltList<GgetAppletByIdData_getAppletById_triggerNodes_next> next;
  @override
  final int id;
  @override
  final String actionId;
  @override
  final _i2.GAppletNodeType actionType;

  factory _$GgetAppletByIdData_getAppletById_triggerNodes(
          [void Function(GgetAppletByIdData_getAppletById_triggerNodesBuilder)?
              updates]) =>
      (new GgetAppletByIdData_getAppletById_triggerNodesBuilder()
            ..update(updates))
          ._build();

  _$GgetAppletByIdData_getAppletById_triggerNodes._(
      {required this.G__typename,
      required this.input,
      required this.provider,
      required this.previous,
      required this.next,
      required this.id,
      required this.actionId,
      required this.actionType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetAppletByIdData_getAppletById_triggerNodes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        input, r'GgetAppletByIdData_getAppletById_triggerNodes', 'input');
    BuiltValueNullFieldError.checkNotNull(
        provider, r'GgetAppletByIdData_getAppletById_triggerNodes', 'provider');
    BuiltValueNullFieldError.checkNotNull(
        previous, r'GgetAppletByIdData_getAppletById_triggerNodes', 'previous');
    BuiltValueNullFieldError.checkNotNull(
        next, r'GgetAppletByIdData_getAppletById_triggerNodes', 'next');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GgetAppletByIdData_getAppletById_triggerNodes', 'id');
    BuiltValueNullFieldError.checkNotNull(
        actionId, r'GgetAppletByIdData_getAppletById_triggerNodes', 'actionId');
    BuiltValueNullFieldError.checkNotNull(actionType,
        r'GgetAppletByIdData_getAppletById_triggerNodes', 'actionType');
  }

  @override
  GgetAppletByIdData_getAppletById_triggerNodes rebuild(
          void Function(GgetAppletByIdData_getAppletById_triggerNodesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAppletByIdData_getAppletById_triggerNodesBuilder toBuilder() =>
      new GgetAppletByIdData_getAppletById_triggerNodesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetAppletByIdData_getAppletById_triggerNodes &&
        G__typename == other.G__typename &&
        input == other.input &&
        provider == other.provider &&
        previous == other.previous &&
        next == other.next &&
        id == other.id &&
        actionId == other.actionId &&
        actionType == other.actionType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jc(_$hash, previous.hashCode);
    _$hash = $jc(_$hash, next.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, actionId.hashCode);
    _$hash = $jc(_$hash, actionType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetAppletByIdData_getAppletById_triggerNodes')
          ..add('G__typename', G__typename)
          ..add('input', input)
          ..add('provider', provider)
          ..add('previous', previous)
          ..add('next', next)
          ..add('id', id)
          ..add('actionId', actionId)
          ..add('actionType', actionType))
        .toString();
  }
}

class GgetAppletByIdData_getAppletById_triggerNodesBuilder
    implements
        Builder<GgetAppletByIdData_getAppletById_triggerNodes,
            GgetAppletByIdData_getAppletById_triggerNodesBuilder> {
  _$GgetAppletByIdData_getAppletById_triggerNodes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GJSONBuilder? _input;
  _i2.GJSONBuilder get input => _$this._input ??= new _i2.GJSONBuilder();
  set input(_i2.GJSONBuilder? input) => _$this._input = input;

  GgetAppletByIdData_getAppletById_triggerNodes_providerBuilder? _provider;
  GgetAppletByIdData_getAppletById_triggerNodes_providerBuilder get provider =>
      _$this._provider ??=
          new GgetAppletByIdData_getAppletById_triggerNodes_providerBuilder();
  set provider(
          GgetAppletByIdData_getAppletById_triggerNodes_providerBuilder?
              provider) =>
      _$this._provider = provider;

  ListBuilder<GgetAppletByIdData_getAppletById_triggerNodes_previous>?
      _previous;
  ListBuilder<GgetAppletByIdData_getAppletById_triggerNodes_previous>
      get previous => _$this._previous ??= new ListBuilder<
          GgetAppletByIdData_getAppletById_triggerNodes_previous>();
  set previous(
          ListBuilder<GgetAppletByIdData_getAppletById_triggerNodes_previous>?
              previous) =>
      _$this._previous = previous;

  ListBuilder<GgetAppletByIdData_getAppletById_triggerNodes_next>? _next;
  ListBuilder<GgetAppletByIdData_getAppletById_triggerNodes_next> get next =>
      _$this._next ??=
          new ListBuilder<GgetAppletByIdData_getAppletById_triggerNodes_next>();
  set next(
          ListBuilder<GgetAppletByIdData_getAppletById_triggerNodes_next>?
              next) =>
      _$this._next = next;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _actionId;
  String? get actionId => _$this._actionId;
  set actionId(String? actionId) => _$this._actionId = actionId;

  _i2.GAppletNodeType? _actionType;
  _i2.GAppletNodeType? get actionType => _$this._actionType;
  set actionType(_i2.GAppletNodeType? actionType) =>
      _$this._actionType = actionType;

  GgetAppletByIdData_getAppletById_triggerNodesBuilder() {
    GgetAppletByIdData_getAppletById_triggerNodes._initializeBuilder(this);
  }

  GgetAppletByIdData_getAppletById_triggerNodesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _input = $v.input.toBuilder();
      _provider = $v.provider.toBuilder();
      _previous = $v.previous.toBuilder();
      _next = $v.next.toBuilder();
      _id = $v.id;
      _actionId = $v.actionId;
      _actionType = $v.actionType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetAppletByIdData_getAppletById_triggerNodes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAppletByIdData_getAppletById_triggerNodes;
  }

  @override
  void update(
      void Function(GgetAppletByIdData_getAppletById_triggerNodesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAppletByIdData_getAppletById_triggerNodes build() => _build();

  _$GgetAppletByIdData_getAppletById_triggerNodes _build() {
    _$GgetAppletByIdData_getAppletById_triggerNodes _$result;
    try {
      _$result = _$v ??
          new _$GgetAppletByIdData_getAppletById_triggerNodes._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetAppletByIdData_getAppletById_triggerNodes',
                  'G__typename'),
              input: input.build(),
              provider: provider.build(),
              previous: previous.build(),
              next: next.build(),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GgetAppletByIdData_getAppletById_triggerNodes', 'id'),
              actionId: BuiltValueNullFieldError.checkNotNull(actionId,
                  r'GgetAppletByIdData_getAppletById_triggerNodes', 'actionId'),
              actionType: BuiltValueNullFieldError.checkNotNull(
                  actionType,
                  r'GgetAppletByIdData_getAppletById_triggerNodes',
                  'actionType'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
        _$failedField = 'provider';
        provider.build();
        _$failedField = 'previous';
        previous.build();
        _$failedField = 'next';
        next.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetAppletByIdData_getAppletById_triggerNodes',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetAppletByIdData_getAppletById_triggerNodes_provider
    extends GgetAppletByIdData_getAppletById_triggerNodes_provider {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String img;
  @override
  final String color;
  @override
  final _i2.GProviderVisibility visibility;

  factory _$GgetAppletByIdData_getAppletById_triggerNodes_provider(
          [void Function(
                  GgetAppletByIdData_getAppletById_triggerNodes_providerBuilder)?
              updates]) =>
      (new GgetAppletByIdData_getAppletById_triggerNodes_providerBuilder()
            ..update(updates))
          ._build();

  _$GgetAppletByIdData_getAppletById_triggerNodes_provider._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.description,
      required this.img,
      required this.color,
      required this.visibility})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetAppletByIdData_getAppletById_triggerNodes_provider',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GgetAppletByIdData_getAppletById_triggerNodes_provider', 'id');
    BuiltValueNullFieldError.checkNotNull(name,
        r'GgetAppletByIdData_getAppletById_triggerNodes_provider', 'name');
    BuiltValueNullFieldError.checkNotNull(
        description,
        r'GgetAppletByIdData_getAppletById_triggerNodes_provider',
        'description');
    BuiltValueNullFieldError.checkNotNull(
        img, r'GgetAppletByIdData_getAppletById_triggerNodes_provider', 'img');
    BuiltValueNullFieldError.checkNotNull(color,
        r'GgetAppletByIdData_getAppletById_triggerNodes_provider', 'color');
    BuiltValueNullFieldError.checkNotNull(
        visibility,
        r'GgetAppletByIdData_getAppletById_triggerNodes_provider',
        'visibility');
  }

  @override
  GgetAppletByIdData_getAppletById_triggerNodes_provider rebuild(
          void Function(
                  GgetAppletByIdData_getAppletById_triggerNodes_providerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAppletByIdData_getAppletById_triggerNodes_providerBuilder toBuilder() =>
      new GgetAppletByIdData_getAppletById_triggerNodes_providerBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetAppletByIdData_getAppletById_triggerNodes_provider &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        img == other.img &&
        color == other.color &&
        visibility == other.visibility;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, img.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetAppletByIdData_getAppletById_triggerNodes_provider')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('img', img)
          ..add('color', color)
          ..add('visibility', visibility))
        .toString();
  }
}

class GgetAppletByIdData_getAppletById_triggerNodes_providerBuilder
    implements
        Builder<GgetAppletByIdData_getAppletById_triggerNodes_provider,
            GgetAppletByIdData_getAppletById_triggerNodes_providerBuilder> {
  _$GgetAppletByIdData_getAppletById_triggerNodes_provider? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _img;
  String? get img => _$this._img;
  set img(String? img) => _$this._img = img;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  _i2.GProviderVisibility? _visibility;
  _i2.GProviderVisibility? get visibility => _$this._visibility;
  set visibility(_i2.GProviderVisibility? visibility) =>
      _$this._visibility = visibility;

  GgetAppletByIdData_getAppletById_triggerNodes_providerBuilder() {
    GgetAppletByIdData_getAppletById_triggerNodes_provider._initializeBuilder(
        this);
  }

  GgetAppletByIdData_getAppletById_triggerNodes_providerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _img = $v.img;
      _color = $v.color;
      _visibility = $v.visibility;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetAppletByIdData_getAppletById_triggerNodes_provider other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAppletByIdData_getAppletById_triggerNodes_provider;
  }

  @override
  void update(
      void Function(
              GgetAppletByIdData_getAppletById_triggerNodes_providerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAppletByIdData_getAppletById_triggerNodes_provider build() => _build();

  _$GgetAppletByIdData_getAppletById_triggerNodes_provider _build() {
    final _$result = _$v ??
        new _$GgetAppletByIdData_getAppletById_triggerNodes_provider._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GgetAppletByIdData_getAppletById_triggerNodes_provider', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GgetAppletByIdData_getAppletById_triggerNodes_provider', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GgetAppletByIdData_getAppletById_triggerNodes_provider', 'name'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'GgetAppletByIdData_getAppletById_triggerNodes_provider', 'description'),
            img: BuiltValueNullFieldError.checkNotNull(
                img, r'GgetAppletByIdData_getAppletById_triggerNodes_provider', 'img'),
            color: BuiltValueNullFieldError.checkNotNull(
                color, r'GgetAppletByIdData_getAppletById_triggerNodes_provider', 'color'),
            visibility: BuiltValueNullFieldError.checkNotNull(
                visibility, r'GgetAppletByIdData_getAppletById_triggerNodes_provider', 'visibility'));
    replace(_$result);
    return _$result;
  }
}

class _$GgetAppletByIdData_getAppletById_triggerNodes_previous
    extends GgetAppletByIdData_getAppletById_triggerNodes_previous {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String actionId;
  @override
  final _i2.GAppletNodeType actionType;

  factory _$GgetAppletByIdData_getAppletById_triggerNodes_previous(
          [void Function(
                  GgetAppletByIdData_getAppletById_triggerNodes_previousBuilder)?
              updates]) =>
      (new GgetAppletByIdData_getAppletById_triggerNodes_previousBuilder()
            ..update(updates))
          ._build();

  _$GgetAppletByIdData_getAppletById_triggerNodes_previous._(
      {required this.G__typename,
      required this.id,
      required this.actionId,
      required this.actionType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetAppletByIdData_getAppletById_triggerNodes_previous',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GgetAppletByIdData_getAppletById_triggerNodes_previous', 'id');
    BuiltValueNullFieldError.checkNotNull(actionId,
        r'GgetAppletByIdData_getAppletById_triggerNodes_previous', 'actionId');
    BuiltValueNullFieldError.checkNotNull(
        actionType,
        r'GgetAppletByIdData_getAppletById_triggerNodes_previous',
        'actionType');
  }

  @override
  GgetAppletByIdData_getAppletById_triggerNodes_previous rebuild(
          void Function(
                  GgetAppletByIdData_getAppletById_triggerNodes_previousBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAppletByIdData_getAppletById_triggerNodes_previousBuilder toBuilder() =>
      new GgetAppletByIdData_getAppletById_triggerNodes_previousBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetAppletByIdData_getAppletById_triggerNodes_previous &&
        G__typename == other.G__typename &&
        id == other.id &&
        actionId == other.actionId &&
        actionType == other.actionType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, actionId.hashCode);
    _$hash = $jc(_$hash, actionType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetAppletByIdData_getAppletById_triggerNodes_previous')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('actionId', actionId)
          ..add('actionType', actionType))
        .toString();
  }
}

class GgetAppletByIdData_getAppletById_triggerNodes_previousBuilder
    implements
        Builder<GgetAppletByIdData_getAppletById_triggerNodes_previous,
            GgetAppletByIdData_getAppletById_triggerNodes_previousBuilder> {
  _$GgetAppletByIdData_getAppletById_triggerNodes_previous? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _actionId;
  String? get actionId => _$this._actionId;
  set actionId(String? actionId) => _$this._actionId = actionId;

  _i2.GAppletNodeType? _actionType;
  _i2.GAppletNodeType? get actionType => _$this._actionType;
  set actionType(_i2.GAppletNodeType? actionType) =>
      _$this._actionType = actionType;

  GgetAppletByIdData_getAppletById_triggerNodes_previousBuilder() {
    GgetAppletByIdData_getAppletById_triggerNodes_previous._initializeBuilder(
        this);
  }

  GgetAppletByIdData_getAppletById_triggerNodes_previousBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _actionId = $v.actionId;
      _actionType = $v.actionType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetAppletByIdData_getAppletById_triggerNodes_previous other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAppletByIdData_getAppletById_triggerNodes_previous;
  }

  @override
  void update(
      void Function(
              GgetAppletByIdData_getAppletById_triggerNodes_previousBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAppletByIdData_getAppletById_triggerNodes_previous build() => _build();

  _$GgetAppletByIdData_getAppletById_triggerNodes_previous _build() {
    final _$result = _$v ??
        new _$GgetAppletByIdData_getAppletById_triggerNodes_previous._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetAppletByIdData_getAppletById_triggerNodes_previous',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'GgetAppletByIdData_getAppletById_triggerNodes_previous',
                'id'),
            actionId: BuiltValueNullFieldError.checkNotNull(
                actionId,
                r'GgetAppletByIdData_getAppletById_triggerNodes_previous',
                'actionId'),
            actionType: BuiltValueNullFieldError.checkNotNull(
                actionType,
                r'GgetAppletByIdData_getAppletById_triggerNodes_previous',
                'actionType'));
    replace(_$result);
    return _$result;
  }
}

class _$GgetAppletByIdData_getAppletById_triggerNodes_next
    extends GgetAppletByIdData_getAppletById_triggerNodes_next {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String actionId;
  @override
  final _i2.GAppletNodeType actionType;

  factory _$GgetAppletByIdData_getAppletById_triggerNodes_next(
          [void Function(
                  GgetAppletByIdData_getAppletById_triggerNodes_nextBuilder)?
              updates]) =>
      (new GgetAppletByIdData_getAppletById_triggerNodes_nextBuilder()
            ..update(updates))
          ._build();

  _$GgetAppletByIdData_getAppletById_triggerNodes_next._(
      {required this.G__typename,
      required this.id,
      required this.actionId,
      required this.actionType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetAppletByIdData_getAppletById_triggerNodes_next', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GgetAppletByIdData_getAppletById_triggerNodes_next', 'id');
    BuiltValueNullFieldError.checkNotNull(actionId,
        r'GgetAppletByIdData_getAppletById_triggerNodes_next', 'actionId');
    BuiltValueNullFieldError.checkNotNull(actionType,
        r'GgetAppletByIdData_getAppletById_triggerNodes_next', 'actionType');
  }

  @override
  GgetAppletByIdData_getAppletById_triggerNodes_next rebuild(
          void Function(
                  GgetAppletByIdData_getAppletById_triggerNodes_nextBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAppletByIdData_getAppletById_triggerNodes_nextBuilder toBuilder() =>
      new GgetAppletByIdData_getAppletById_triggerNodes_nextBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetAppletByIdData_getAppletById_triggerNodes_next &&
        G__typename == other.G__typename &&
        id == other.id &&
        actionId == other.actionId &&
        actionType == other.actionType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, actionId.hashCode);
    _$hash = $jc(_$hash, actionType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetAppletByIdData_getAppletById_triggerNodes_next')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('actionId', actionId)
          ..add('actionType', actionType))
        .toString();
  }
}

class GgetAppletByIdData_getAppletById_triggerNodes_nextBuilder
    implements
        Builder<GgetAppletByIdData_getAppletById_triggerNodes_next,
            GgetAppletByIdData_getAppletById_triggerNodes_nextBuilder> {
  _$GgetAppletByIdData_getAppletById_triggerNodes_next? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _actionId;
  String? get actionId => _$this._actionId;
  set actionId(String? actionId) => _$this._actionId = actionId;

  _i2.GAppletNodeType? _actionType;
  _i2.GAppletNodeType? get actionType => _$this._actionType;
  set actionType(_i2.GAppletNodeType? actionType) =>
      _$this._actionType = actionType;

  GgetAppletByIdData_getAppletById_triggerNodes_nextBuilder() {
    GgetAppletByIdData_getAppletById_triggerNodes_next._initializeBuilder(this);
  }

  GgetAppletByIdData_getAppletById_triggerNodes_nextBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _actionId = $v.actionId;
      _actionType = $v.actionType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetAppletByIdData_getAppletById_triggerNodes_next other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAppletByIdData_getAppletById_triggerNodes_next;
  }

  @override
  void update(
      void Function(GgetAppletByIdData_getAppletById_triggerNodes_nextBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAppletByIdData_getAppletById_triggerNodes_next build() => _build();

  _$GgetAppletByIdData_getAppletById_triggerNodes_next _build() {
    final _$result = _$v ??
        new _$GgetAppletByIdData_getAppletById_triggerNodes_next._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetAppletByIdData_getAppletById_triggerNodes_next',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(id,
                r'GgetAppletByIdData_getAppletById_triggerNodes_next', 'id'),
            actionId: BuiltValueNullFieldError.checkNotNull(
                actionId,
                r'GgetAppletByIdData_getAppletById_triggerNodes_next',
                'actionId'),
            actionType: BuiltValueNullFieldError.checkNotNull(
                actionType,
                r'GgetAppletByIdData_getAppletById_triggerNodes_next',
                'actionType'));
    replace(_$result);
    return _$result;
  }
}

class _$GgetAppletNodeByIdData extends GgetAppletNodeByIdData {
  @override
  final String G__typename;
  @override
  final GgetAppletNodeByIdData_getAppletNodeById getAppletNodeById;

  factory _$GgetAppletNodeByIdData(
          [void Function(GgetAppletNodeByIdDataBuilder)? updates]) =>
      (new GgetAppletNodeByIdDataBuilder()..update(updates))._build();

  _$GgetAppletNodeByIdData._(
      {required this.G__typename, required this.getAppletNodeById})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetAppletNodeByIdData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        getAppletNodeById, r'GgetAppletNodeByIdData', 'getAppletNodeById');
  }

  @override
  GgetAppletNodeByIdData rebuild(
          void Function(GgetAppletNodeByIdDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAppletNodeByIdDataBuilder toBuilder() =>
      new GgetAppletNodeByIdDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetAppletNodeByIdData &&
        G__typename == other.G__typename &&
        getAppletNodeById == other.getAppletNodeById;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getAppletNodeById.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetAppletNodeByIdData')
          ..add('G__typename', G__typename)
          ..add('getAppletNodeById', getAppletNodeById))
        .toString();
  }
}

class GgetAppletNodeByIdDataBuilder
    implements Builder<GgetAppletNodeByIdData, GgetAppletNodeByIdDataBuilder> {
  _$GgetAppletNodeByIdData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetAppletNodeByIdData_getAppletNodeByIdBuilder? _getAppletNodeById;
  GgetAppletNodeByIdData_getAppletNodeByIdBuilder get getAppletNodeById =>
      _$this._getAppletNodeById ??=
          new GgetAppletNodeByIdData_getAppletNodeByIdBuilder();
  set getAppletNodeById(
          GgetAppletNodeByIdData_getAppletNodeByIdBuilder? getAppletNodeById) =>
      _$this._getAppletNodeById = getAppletNodeById;

  GgetAppletNodeByIdDataBuilder() {
    GgetAppletNodeByIdData._initializeBuilder(this);
  }

  GgetAppletNodeByIdDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getAppletNodeById = $v.getAppletNodeById.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetAppletNodeByIdData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAppletNodeByIdData;
  }

  @override
  void update(void Function(GgetAppletNodeByIdDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAppletNodeByIdData build() => _build();

  _$GgetAppletNodeByIdData _build() {
    _$GgetAppletNodeByIdData _$result;
    try {
      _$result = _$v ??
          new _$GgetAppletNodeByIdData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetAppletNodeByIdData', 'G__typename'),
              getAppletNodeById: getAppletNodeById.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getAppletNodeById';
        getAppletNodeById.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetAppletNodeByIdData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetAppletNodeByIdData_getAppletNodeById
    extends GgetAppletNodeByIdData_getAppletNodeById {
  @override
  final String G__typename;
  @override
  final _i2.GJSON input;
  @override
  final GgetAppletNodeByIdData_getAppletNodeById_provider provider;
  @override
  final BuiltList<GgetAppletNodeByIdData_getAppletNodeById_previous> previous;
  @override
  final BuiltList<GgetAppletNodeByIdData_getAppletNodeById_next> next;
  @override
  final int id;
  @override
  final String actionId;
  @override
  final _i2.GAppletNodeType actionType;

  factory _$GgetAppletNodeByIdData_getAppletNodeById(
          [void Function(GgetAppletNodeByIdData_getAppletNodeByIdBuilder)?
              updates]) =>
      (new GgetAppletNodeByIdData_getAppletNodeByIdBuilder()..update(updates))
          ._build();

  _$GgetAppletNodeByIdData_getAppletNodeById._(
      {required this.G__typename,
      required this.input,
      required this.provider,
      required this.previous,
      required this.next,
      required this.id,
      required this.actionId,
      required this.actionType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetAppletNodeByIdData_getAppletNodeById', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        input, r'GgetAppletNodeByIdData_getAppletNodeById', 'input');
    BuiltValueNullFieldError.checkNotNull(
        provider, r'GgetAppletNodeByIdData_getAppletNodeById', 'provider');
    BuiltValueNullFieldError.checkNotNull(
        previous, r'GgetAppletNodeByIdData_getAppletNodeById', 'previous');
    BuiltValueNullFieldError.checkNotNull(
        next, r'GgetAppletNodeByIdData_getAppletNodeById', 'next');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GgetAppletNodeByIdData_getAppletNodeById', 'id');
    BuiltValueNullFieldError.checkNotNull(
        actionId, r'GgetAppletNodeByIdData_getAppletNodeById', 'actionId');
    BuiltValueNullFieldError.checkNotNull(
        actionType, r'GgetAppletNodeByIdData_getAppletNodeById', 'actionType');
  }

  @override
  GgetAppletNodeByIdData_getAppletNodeById rebuild(
          void Function(GgetAppletNodeByIdData_getAppletNodeByIdBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAppletNodeByIdData_getAppletNodeByIdBuilder toBuilder() =>
      new GgetAppletNodeByIdData_getAppletNodeByIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetAppletNodeByIdData_getAppletNodeById &&
        G__typename == other.G__typename &&
        input == other.input &&
        provider == other.provider &&
        previous == other.previous &&
        next == other.next &&
        id == other.id &&
        actionId == other.actionId &&
        actionType == other.actionType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jc(_$hash, previous.hashCode);
    _$hash = $jc(_$hash, next.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, actionId.hashCode);
    _$hash = $jc(_$hash, actionType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetAppletNodeByIdData_getAppletNodeById')
          ..add('G__typename', G__typename)
          ..add('input', input)
          ..add('provider', provider)
          ..add('previous', previous)
          ..add('next', next)
          ..add('id', id)
          ..add('actionId', actionId)
          ..add('actionType', actionType))
        .toString();
  }
}

class GgetAppletNodeByIdData_getAppletNodeByIdBuilder
    implements
        Builder<GgetAppletNodeByIdData_getAppletNodeById,
            GgetAppletNodeByIdData_getAppletNodeByIdBuilder> {
  _$GgetAppletNodeByIdData_getAppletNodeById? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GJSONBuilder? _input;
  _i2.GJSONBuilder get input => _$this._input ??= new _i2.GJSONBuilder();
  set input(_i2.GJSONBuilder? input) => _$this._input = input;

  GgetAppletNodeByIdData_getAppletNodeById_providerBuilder? _provider;
  GgetAppletNodeByIdData_getAppletNodeById_providerBuilder get provider =>
      _$this._provider ??=
          new GgetAppletNodeByIdData_getAppletNodeById_providerBuilder();
  set provider(
          GgetAppletNodeByIdData_getAppletNodeById_providerBuilder? provider) =>
      _$this._provider = provider;

  ListBuilder<GgetAppletNodeByIdData_getAppletNodeById_previous>? _previous;
  ListBuilder<GgetAppletNodeByIdData_getAppletNodeById_previous> get previous =>
      _$this._previous ??=
          new ListBuilder<GgetAppletNodeByIdData_getAppletNodeById_previous>();
  set previous(
          ListBuilder<GgetAppletNodeByIdData_getAppletNodeById_previous>?
              previous) =>
      _$this._previous = previous;

  ListBuilder<GgetAppletNodeByIdData_getAppletNodeById_next>? _next;
  ListBuilder<GgetAppletNodeByIdData_getAppletNodeById_next> get next =>
      _$this._next ??=
          new ListBuilder<GgetAppletNodeByIdData_getAppletNodeById_next>();
  set next(ListBuilder<GgetAppletNodeByIdData_getAppletNodeById_next>? next) =>
      _$this._next = next;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _actionId;
  String? get actionId => _$this._actionId;
  set actionId(String? actionId) => _$this._actionId = actionId;

  _i2.GAppletNodeType? _actionType;
  _i2.GAppletNodeType? get actionType => _$this._actionType;
  set actionType(_i2.GAppletNodeType? actionType) =>
      _$this._actionType = actionType;

  GgetAppletNodeByIdData_getAppletNodeByIdBuilder() {
    GgetAppletNodeByIdData_getAppletNodeById._initializeBuilder(this);
  }

  GgetAppletNodeByIdData_getAppletNodeByIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _input = $v.input.toBuilder();
      _provider = $v.provider.toBuilder();
      _previous = $v.previous.toBuilder();
      _next = $v.next.toBuilder();
      _id = $v.id;
      _actionId = $v.actionId;
      _actionType = $v.actionType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetAppletNodeByIdData_getAppletNodeById other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAppletNodeByIdData_getAppletNodeById;
  }

  @override
  void update(
      void Function(GgetAppletNodeByIdData_getAppletNodeByIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAppletNodeByIdData_getAppletNodeById build() => _build();

  _$GgetAppletNodeByIdData_getAppletNodeById _build() {
    _$GgetAppletNodeByIdData_getAppletNodeById _$result;
    try {
      _$result = _$v ??
          new _$GgetAppletNodeByIdData_getAppletNodeById._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GgetAppletNodeByIdData_getAppletNodeById', 'G__typename'),
              input: input.build(),
              provider: provider.build(),
              previous: previous.build(),
              next: next.build(),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GgetAppletNodeByIdData_getAppletNodeById', 'id'),
              actionId: BuiltValueNullFieldError.checkNotNull(actionId,
                  r'GgetAppletNodeByIdData_getAppletNodeById', 'actionId'),
              actionType: BuiltValueNullFieldError.checkNotNull(actionType,
                  r'GgetAppletNodeByIdData_getAppletNodeById', 'actionType'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
        _$failedField = 'provider';
        provider.build();
        _$failedField = 'previous';
        previous.build();
        _$failedField = 'next';
        next.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetAppletNodeByIdData_getAppletNodeById',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetAppletNodeByIdData_getAppletNodeById_provider
    extends GgetAppletNodeByIdData_getAppletNodeById_provider {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String img;
  @override
  final String color;
  @override
  final _i2.GProviderVisibility visibility;

  factory _$GgetAppletNodeByIdData_getAppletNodeById_provider(
          [void Function(
                  GgetAppletNodeByIdData_getAppletNodeById_providerBuilder)?
              updates]) =>
      (new GgetAppletNodeByIdData_getAppletNodeById_providerBuilder()
            ..update(updates))
          ._build();

  _$GgetAppletNodeByIdData_getAppletNodeById_provider._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.description,
      required this.img,
      required this.color,
      required this.visibility})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetAppletNodeByIdData_getAppletNodeById_provider', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GgetAppletNodeByIdData_getAppletNodeById_provider', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GgetAppletNodeByIdData_getAppletNodeById_provider', 'name');
    BuiltValueNullFieldError.checkNotNull(description,
        r'GgetAppletNodeByIdData_getAppletNodeById_provider', 'description');
    BuiltValueNullFieldError.checkNotNull(
        img, r'GgetAppletNodeByIdData_getAppletNodeById_provider', 'img');
    BuiltValueNullFieldError.checkNotNull(
        color, r'GgetAppletNodeByIdData_getAppletNodeById_provider', 'color');
    BuiltValueNullFieldError.checkNotNull(visibility,
        r'GgetAppletNodeByIdData_getAppletNodeById_provider', 'visibility');
  }

  @override
  GgetAppletNodeByIdData_getAppletNodeById_provider rebuild(
          void Function(
                  GgetAppletNodeByIdData_getAppletNodeById_providerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAppletNodeByIdData_getAppletNodeById_providerBuilder toBuilder() =>
      new GgetAppletNodeByIdData_getAppletNodeById_providerBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetAppletNodeByIdData_getAppletNodeById_provider &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        img == other.img &&
        color == other.color &&
        visibility == other.visibility;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, img.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetAppletNodeByIdData_getAppletNodeById_provider')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('img', img)
          ..add('color', color)
          ..add('visibility', visibility))
        .toString();
  }
}

class GgetAppletNodeByIdData_getAppletNodeById_providerBuilder
    implements
        Builder<GgetAppletNodeByIdData_getAppletNodeById_provider,
            GgetAppletNodeByIdData_getAppletNodeById_providerBuilder> {
  _$GgetAppletNodeByIdData_getAppletNodeById_provider? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _img;
  String? get img => _$this._img;
  set img(String? img) => _$this._img = img;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  _i2.GProviderVisibility? _visibility;
  _i2.GProviderVisibility? get visibility => _$this._visibility;
  set visibility(_i2.GProviderVisibility? visibility) =>
      _$this._visibility = visibility;

  GgetAppletNodeByIdData_getAppletNodeById_providerBuilder() {
    GgetAppletNodeByIdData_getAppletNodeById_provider._initializeBuilder(this);
  }

  GgetAppletNodeByIdData_getAppletNodeById_providerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _img = $v.img;
      _color = $v.color;
      _visibility = $v.visibility;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetAppletNodeByIdData_getAppletNodeById_provider other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAppletNodeByIdData_getAppletNodeById_provider;
  }

  @override
  void update(
      void Function(GgetAppletNodeByIdData_getAppletNodeById_providerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAppletNodeByIdData_getAppletNodeById_provider build() => _build();

  _$GgetAppletNodeByIdData_getAppletNodeById_provider _build() {
    final _$result = _$v ??
        new _$GgetAppletNodeByIdData_getAppletNodeById_provider._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GgetAppletNodeByIdData_getAppletNodeById_provider', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GgetAppletNodeByIdData_getAppletNodeById_provider', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GgetAppletNodeByIdData_getAppletNodeById_provider', 'name'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'GgetAppletNodeByIdData_getAppletNodeById_provider', 'description'),
            img: BuiltValueNullFieldError.checkNotNull(
                img, r'GgetAppletNodeByIdData_getAppletNodeById_provider', 'img'),
            color: BuiltValueNullFieldError.checkNotNull(
                color, r'GgetAppletNodeByIdData_getAppletNodeById_provider', 'color'),
            visibility: BuiltValueNullFieldError.checkNotNull(
                visibility, r'GgetAppletNodeByIdData_getAppletNodeById_provider', 'visibility'));
    replace(_$result);
    return _$result;
  }
}

class _$GgetAppletNodeByIdData_getAppletNodeById_previous
    extends GgetAppletNodeByIdData_getAppletNodeById_previous {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String actionId;
  @override
  final _i2.GAppletNodeType actionType;

  factory _$GgetAppletNodeByIdData_getAppletNodeById_previous(
          [void Function(
                  GgetAppletNodeByIdData_getAppletNodeById_previousBuilder)?
              updates]) =>
      (new GgetAppletNodeByIdData_getAppletNodeById_previousBuilder()
            ..update(updates))
          ._build();

  _$GgetAppletNodeByIdData_getAppletNodeById_previous._(
      {required this.G__typename,
      required this.id,
      required this.actionId,
      required this.actionType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetAppletNodeByIdData_getAppletNodeById_previous', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GgetAppletNodeByIdData_getAppletNodeById_previous', 'id');
    BuiltValueNullFieldError.checkNotNull(actionId,
        r'GgetAppletNodeByIdData_getAppletNodeById_previous', 'actionId');
    BuiltValueNullFieldError.checkNotNull(actionType,
        r'GgetAppletNodeByIdData_getAppletNodeById_previous', 'actionType');
  }

  @override
  GgetAppletNodeByIdData_getAppletNodeById_previous rebuild(
          void Function(
                  GgetAppletNodeByIdData_getAppletNodeById_previousBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAppletNodeByIdData_getAppletNodeById_previousBuilder toBuilder() =>
      new GgetAppletNodeByIdData_getAppletNodeById_previousBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetAppletNodeByIdData_getAppletNodeById_previous &&
        G__typename == other.G__typename &&
        id == other.id &&
        actionId == other.actionId &&
        actionType == other.actionType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, actionId.hashCode);
    _$hash = $jc(_$hash, actionType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetAppletNodeByIdData_getAppletNodeById_previous')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('actionId', actionId)
          ..add('actionType', actionType))
        .toString();
  }
}

class GgetAppletNodeByIdData_getAppletNodeById_previousBuilder
    implements
        Builder<GgetAppletNodeByIdData_getAppletNodeById_previous,
            GgetAppletNodeByIdData_getAppletNodeById_previousBuilder> {
  _$GgetAppletNodeByIdData_getAppletNodeById_previous? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _actionId;
  String? get actionId => _$this._actionId;
  set actionId(String? actionId) => _$this._actionId = actionId;

  _i2.GAppletNodeType? _actionType;
  _i2.GAppletNodeType? get actionType => _$this._actionType;
  set actionType(_i2.GAppletNodeType? actionType) =>
      _$this._actionType = actionType;

  GgetAppletNodeByIdData_getAppletNodeById_previousBuilder() {
    GgetAppletNodeByIdData_getAppletNodeById_previous._initializeBuilder(this);
  }

  GgetAppletNodeByIdData_getAppletNodeById_previousBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _actionId = $v.actionId;
      _actionType = $v.actionType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetAppletNodeByIdData_getAppletNodeById_previous other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAppletNodeByIdData_getAppletNodeById_previous;
  }

  @override
  void update(
      void Function(GgetAppletNodeByIdData_getAppletNodeById_previousBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAppletNodeByIdData_getAppletNodeById_previous build() => _build();

  _$GgetAppletNodeByIdData_getAppletNodeById_previous _build() {
    final _$result = _$v ??
        new _$GgetAppletNodeByIdData_getAppletNodeById_previous._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetAppletNodeByIdData_getAppletNodeById_previous',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GgetAppletNodeByIdData_getAppletNodeById_previous', 'id'),
            actionId: BuiltValueNullFieldError.checkNotNull(
                actionId,
                r'GgetAppletNodeByIdData_getAppletNodeById_previous',
                'actionId'),
            actionType: BuiltValueNullFieldError.checkNotNull(
                actionType,
                r'GgetAppletNodeByIdData_getAppletNodeById_previous',
                'actionType'));
    replace(_$result);
    return _$result;
  }
}

class _$GgetAppletNodeByIdData_getAppletNodeById_next
    extends GgetAppletNodeByIdData_getAppletNodeById_next {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String actionId;
  @override
  final _i2.GAppletNodeType actionType;

  factory _$GgetAppletNodeByIdData_getAppletNodeById_next(
          [void Function(GgetAppletNodeByIdData_getAppletNodeById_nextBuilder)?
              updates]) =>
      (new GgetAppletNodeByIdData_getAppletNodeById_nextBuilder()
            ..update(updates))
          ._build();

  _$GgetAppletNodeByIdData_getAppletNodeById_next._(
      {required this.G__typename,
      required this.id,
      required this.actionId,
      required this.actionType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetAppletNodeByIdData_getAppletNodeById_next', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GgetAppletNodeByIdData_getAppletNodeById_next', 'id');
    BuiltValueNullFieldError.checkNotNull(
        actionId, r'GgetAppletNodeByIdData_getAppletNodeById_next', 'actionId');
    BuiltValueNullFieldError.checkNotNull(actionType,
        r'GgetAppletNodeByIdData_getAppletNodeById_next', 'actionType');
  }

  @override
  GgetAppletNodeByIdData_getAppletNodeById_next rebuild(
          void Function(GgetAppletNodeByIdData_getAppletNodeById_nextBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAppletNodeByIdData_getAppletNodeById_nextBuilder toBuilder() =>
      new GgetAppletNodeByIdData_getAppletNodeById_nextBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetAppletNodeByIdData_getAppletNodeById_next &&
        G__typename == other.G__typename &&
        id == other.id &&
        actionId == other.actionId &&
        actionType == other.actionType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, actionId.hashCode);
    _$hash = $jc(_$hash, actionType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetAppletNodeByIdData_getAppletNodeById_next')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('actionId', actionId)
          ..add('actionType', actionType))
        .toString();
  }
}

class GgetAppletNodeByIdData_getAppletNodeById_nextBuilder
    implements
        Builder<GgetAppletNodeByIdData_getAppletNodeById_next,
            GgetAppletNodeByIdData_getAppletNodeById_nextBuilder> {
  _$GgetAppletNodeByIdData_getAppletNodeById_next? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _actionId;
  String? get actionId => _$this._actionId;
  set actionId(String? actionId) => _$this._actionId = actionId;

  _i2.GAppletNodeType? _actionType;
  _i2.GAppletNodeType? get actionType => _$this._actionType;
  set actionType(_i2.GAppletNodeType? actionType) =>
      _$this._actionType = actionType;

  GgetAppletNodeByIdData_getAppletNodeById_nextBuilder() {
    GgetAppletNodeByIdData_getAppletNodeById_next._initializeBuilder(this);
  }

  GgetAppletNodeByIdData_getAppletNodeById_nextBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _actionId = $v.actionId;
      _actionType = $v.actionType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetAppletNodeByIdData_getAppletNodeById_next other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAppletNodeByIdData_getAppletNodeById_next;
  }

  @override
  void update(
      void Function(GgetAppletNodeByIdData_getAppletNodeById_nextBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAppletNodeByIdData_getAppletNodeById_next build() => _build();

  _$GgetAppletNodeByIdData_getAppletNodeById_next _build() {
    final _$result = _$v ??
        new _$GgetAppletNodeByIdData_getAppletNodeById_next._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetAppletNodeByIdData_getAppletNodeById_next',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GgetAppletNodeByIdData_getAppletNodeById_next', 'id'),
            actionId: BuiltValueNullFieldError.checkNotNull(actionId,
                r'GgetAppletNodeByIdData_getAppletNodeById_next', 'actionId'),
            actionType: BuiltValueNullFieldError.checkNotNull(
                actionType,
                r'GgetAppletNodeByIdData_getAppletNodeById_next',
                'actionType'));
    replace(_$result);
    return _$result;
  }
}

class _$GcreateAppletData extends GcreateAppletData {
  @override
  final String G__typename;
  @override
  final GcreateAppletData_createApplet createApplet;

  factory _$GcreateAppletData(
          [void Function(GcreateAppletDataBuilder)? updates]) =>
      (new GcreateAppletDataBuilder()..update(updates))._build();

  _$GcreateAppletData._({required this.G__typename, required this.createApplet})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GcreateAppletData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        createApplet, r'GcreateAppletData', 'createApplet');
  }

  @override
  GcreateAppletData rebuild(void Function(GcreateAppletDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcreateAppletDataBuilder toBuilder() =>
      new GcreateAppletDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcreateAppletData &&
        G__typename == other.G__typename &&
        createApplet == other.createApplet;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createApplet.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GcreateAppletData')
          ..add('G__typename', G__typename)
          ..add('createApplet', createApplet))
        .toString();
  }
}

class GcreateAppletDataBuilder
    implements Builder<GcreateAppletData, GcreateAppletDataBuilder> {
  _$GcreateAppletData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GcreateAppletData_createAppletBuilder? _createApplet;
  GcreateAppletData_createAppletBuilder get createApplet =>
      _$this._createApplet ??= new GcreateAppletData_createAppletBuilder();
  set createApplet(GcreateAppletData_createAppletBuilder? createApplet) =>
      _$this._createApplet = createApplet;

  GcreateAppletDataBuilder() {
    GcreateAppletData._initializeBuilder(this);
  }

  GcreateAppletDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createApplet = $v.createApplet.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcreateAppletData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcreateAppletData;
  }

  @override
  void update(void Function(GcreateAppletDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GcreateAppletData build() => _build();

  _$GcreateAppletData _build() {
    _$GcreateAppletData _$result;
    try {
      _$result = _$v ??
          new _$GcreateAppletData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GcreateAppletData', 'G__typename'),
              createApplet: createApplet.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createApplet';
        createApplet.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GcreateAppletData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GcreateAppletData_createApplet extends GcreateAppletData_createApplet {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;
  @override
  final String? description;

  factory _$GcreateAppletData_createApplet(
          [void Function(GcreateAppletData_createAppletBuilder)? updates]) =>
      (new GcreateAppletData_createAppletBuilder()..update(updates))._build();

  _$GcreateAppletData_createApplet._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GcreateAppletData_createApplet', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GcreateAppletData_createApplet', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GcreateAppletData_createApplet', 'name');
  }

  @override
  GcreateAppletData_createApplet rebuild(
          void Function(GcreateAppletData_createAppletBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcreateAppletData_createAppletBuilder toBuilder() =>
      new GcreateAppletData_createAppletBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcreateAppletData_createApplet &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GcreateAppletData_createApplet')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description))
        .toString();
  }
}

class GcreateAppletData_createAppletBuilder
    implements
        Builder<GcreateAppletData_createApplet,
            GcreateAppletData_createAppletBuilder> {
  _$GcreateAppletData_createApplet? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GcreateAppletData_createAppletBuilder() {
    GcreateAppletData_createApplet._initializeBuilder(this);
  }

  GcreateAppletData_createAppletBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcreateAppletData_createApplet other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcreateAppletData_createApplet;
  }

  @override
  void update(void Function(GcreateAppletData_createAppletBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GcreateAppletData_createApplet build() => _build();

  _$GcreateAppletData_createApplet _build() {
    final _$result = _$v ??
        new _$GcreateAppletData_createApplet._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GcreateAppletData_createApplet', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GcreateAppletData_createApplet', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GcreateAppletData_createApplet', 'name'),
            description: description);
    replace(_$result);
    return _$result;
  }
}

class _$GBaseAppletProviderData extends GBaseAppletProviderData {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String img;
  @override
  final String color;
  @override
  final _i2.GProviderVisibility visibility;

  factory _$GBaseAppletProviderData(
          [void Function(GBaseAppletProviderDataBuilder)? updates]) =>
      (new GBaseAppletProviderDataBuilder()..update(updates))._build();

  _$GBaseAppletProviderData._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.description,
      required this.img,
      required this.color,
      required this.visibility})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GBaseAppletProviderData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GBaseAppletProviderData', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GBaseAppletProviderData', 'name');
    BuiltValueNullFieldError.checkNotNull(
        description, r'GBaseAppletProviderData', 'description');
    BuiltValueNullFieldError.checkNotNull(
        img, r'GBaseAppletProviderData', 'img');
    BuiltValueNullFieldError.checkNotNull(
        color, r'GBaseAppletProviderData', 'color');
    BuiltValueNullFieldError.checkNotNull(
        visibility, r'GBaseAppletProviderData', 'visibility');
  }

  @override
  GBaseAppletProviderData rebuild(
          void Function(GBaseAppletProviderDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBaseAppletProviderDataBuilder toBuilder() =>
      new GBaseAppletProviderDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBaseAppletProviderData &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        img == other.img &&
        color == other.color &&
        visibility == other.visibility;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, img.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GBaseAppletProviderData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('img', img)
          ..add('color', color)
          ..add('visibility', visibility))
        .toString();
  }
}

class GBaseAppletProviderDataBuilder
    implements
        Builder<GBaseAppletProviderData, GBaseAppletProviderDataBuilder> {
  _$GBaseAppletProviderData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _img;
  String? get img => _$this._img;
  set img(String? img) => _$this._img = img;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  _i2.GProviderVisibility? _visibility;
  _i2.GProviderVisibility? get visibility => _$this._visibility;
  set visibility(_i2.GProviderVisibility? visibility) =>
      _$this._visibility = visibility;

  GBaseAppletProviderDataBuilder() {
    GBaseAppletProviderData._initializeBuilder(this);
  }

  GBaseAppletProviderDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _img = $v.img;
      _color = $v.color;
      _visibility = $v.visibility;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GBaseAppletProviderData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBaseAppletProviderData;
  }

  @override
  void update(void Function(GBaseAppletProviderDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBaseAppletProviderData build() => _build();

  _$GBaseAppletProviderData _build() {
    final _$result = _$v ??
        new _$GBaseAppletProviderData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GBaseAppletProviderData', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GBaseAppletProviderData', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GBaseAppletProviderData', 'name'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'GBaseAppletProviderData', 'description'),
            img: BuiltValueNullFieldError.checkNotNull(
                img, r'GBaseAppletProviderData', 'img'),
            color: BuiltValueNullFieldError.checkNotNull(
                color, r'GBaseAppletProviderData', 'color'),
            visibility: BuiltValueNullFieldError.checkNotNull(
                visibility, r'GBaseAppletProviderData', 'visibility'));
    replace(_$result);
    return _$result;
  }
}

class _$GBaseAppletNodeData extends GBaseAppletNodeData {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String actionId;
  @override
  final _i2.GAppletNodeType actionType;

  factory _$GBaseAppletNodeData(
          [void Function(GBaseAppletNodeDataBuilder)? updates]) =>
      (new GBaseAppletNodeDataBuilder()..update(updates))._build();

  _$GBaseAppletNodeData._(
      {required this.G__typename,
      required this.id,
      required this.actionId,
      required this.actionType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GBaseAppletNodeData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GBaseAppletNodeData', 'id');
    BuiltValueNullFieldError.checkNotNull(
        actionId, r'GBaseAppletNodeData', 'actionId');
    BuiltValueNullFieldError.checkNotNull(
        actionType, r'GBaseAppletNodeData', 'actionType');
  }

  @override
  GBaseAppletNodeData rebuild(
          void Function(GBaseAppletNodeDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBaseAppletNodeDataBuilder toBuilder() =>
      new GBaseAppletNodeDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBaseAppletNodeData &&
        G__typename == other.G__typename &&
        id == other.id &&
        actionId == other.actionId &&
        actionType == other.actionType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, actionId.hashCode);
    _$hash = $jc(_$hash, actionType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GBaseAppletNodeData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('actionId', actionId)
          ..add('actionType', actionType))
        .toString();
  }
}

class GBaseAppletNodeDataBuilder
    implements Builder<GBaseAppletNodeData, GBaseAppletNodeDataBuilder> {
  _$GBaseAppletNodeData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _actionId;
  String? get actionId => _$this._actionId;
  set actionId(String? actionId) => _$this._actionId = actionId;

  _i2.GAppletNodeType? _actionType;
  _i2.GAppletNodeType? get actionType => _$this._actionType;
  set actionType(_i2.GAppletNodeType? actionType) =>
      _$this._actionType = actionType;

  GBaseAppletNodeDataBuilder() {
    GBaseAppletNodeData._initializeBuilder(this);
  }

  GBaseAppletNodeDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _actionId = $v.actionId;
      _actionType = $v.actionType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GBaseAppletNodeData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBaseAppletNodeData;
  }

  @override
  void update(void Function(GBaseAppletNodeDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBaseAppletNodeData build() => _build();

  _$GBaseAppletNodeData _build() {
    final _$result = _$v ??
        new _$GBaseAppletNodeData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GBaseAppletNodeData', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GBaseAppletNodeData', 'id'),
            actionId: BuiltValueNullFieldError.checkNotNull(
                actionId, r'GBaseAppletNodeData', 'actionId'),
            actionType: BuiltValueNullFieldError.checkNotNull(
                actionType, r'GBaseAppletNodeData', 'actionType'));
    replace(_$result);
    return _$result;
  }
}

class _$GExtendedAppletNodeData extends GExtendedAppletNodeData {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String actionId;
  @override
  final _i2.GAppletNodeType actionType;
  @override
  final _i2.GJSON input;
  @override
  final GExtendedAppletNodeData_provider provider;
  @override
  final BuiltList<GExtendedAppletNodeData_previous> previous;
  @override
  final BuiltList<GExtendedAppletNodeData_next> next;

  factory _$GExtendedAppletNodeData(
          [void Function(GExtendedAppletNodeDataBuilder)? updates]) =>
      (new GExtendedAppletNodeDataBuilder()..update(updates))._build();

  _$GExtendedAppletNodeData._(
      {required this.G__typename,
      required this.id,
      required this.actionId,
      required this.actionType,
      required this.input,
      required this.provider,
      required this.previous,
      required this.next})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GExtendedAppletNodeData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GExtendedAppletNodeData', 'id');
    BuiltValueNullFieldError.checkNotNull(
        actionId, r'GExtendedAppletNodeData', 'actionId');
    BuiltValueNullFieldError.checkNotNull(
        actionType, r'GExtendedAppletNodeData', 'actionType');
    BuiltValueNullFieldError.checkNotNull(
        input, r'GExtendedAppletNodeData', 'input');
    BuiltValueNullFieldError.checkNotNull(
        provider, r'GExtendedAppletNodeData', 'provider');
    BuiltValueNullFieldError.checkNotNull(
        previous, r'GExtendedAppletNodeData', 'previous');
    BuiltValueNullFieldError.checkNotNull(
        next, r'GExtendedAppletNodeData', 'next');
  }

  @override
  GExtendedAppletNodeData rebuild(
          void Function(GExtendedAppletNodeDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExtendedAppletNodeDataBuilder toBuilder() =>
      new GExtendedAppletNodeDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExtendedAppletNodeData &&
        G__typename == other.G__typename &&
        id == other.id &&
        actionId == other.actionId &&
        actionType == other.actionType &&
        input == other.input &&
        provider == other.provider &&
        previous == other.previous &&
        next == other.next;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, actionId.hashCode);
    _$hash = $jc(_$hash, actionType.hashCode);
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jc(_$hash, previous.hashCode);
    _$hash = $jc(_$hash, next.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GExtendedAppletNodeData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('actionId', actionId)
          ..add('actionType', actionType)
          ..add('input', input)
          ..add('provider', provider)
          ..add('previous', previous)
          ..add('next', next))
        .toString();
  }
}

class GExtendedAppletNodeDataBuilder
    implements
        Builder<GExtendedAppletNodeData, GExtendedAppletNodeDataBuilder> {
  _$GExtendedAppletNodeData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _actionId;
  String? get actionId => _$this._actionId;
  set actionId(String? actionId) => _$this._actionId = actionId;

  _i2.GAppletNodeType? _actionType;
  _i2.GAppletNodeType? get actionType => _$this._actionType;
  set actionType(_i2.GAppletNodeType? actionType) =>
      _$this._actionType = actionType;

  _i2.GJSONBuilder? _input;
  _i2.GJSONBuilder get input => _$this._input ??= new _i2.GJSONBuilder();
  set input(_i2.GJSONBuilder? input) => _$this._input = input;

  GExtendedAppletNodeData_providerBuilder? _provider;
  GExtendedAppletNodeData_providerBuilder get provider =>
      _$this._provider ??= new GExtendedAppletNodeData_providerBuilder();
  set provider(GExtendedAppletNodeData_providerBuilder? provider) =>
      _$this._provider = provider;

  ListBuilder<GExtendedAppletNodeData_previous>? _previous;
  ListBuilder<GExtendedAppletNodeData_previous> get previous =>
      _$this._previous ??= new ListBuilder<GExtendedAppletNodeData_previous>();
  set previous(ListBuilder<GExtendedAppletNodeData_previous>? previous) =>
      _$this._previous = previous;

  ListBuilder<GExtendedAppletNodeData_next>? _next;
  ListBuilder<GExtendedAppletNodeData_next> get next =>
      _$this._next ??= new ListBuilder<GExtendedAppletNodeData_next>();
  set next(ListBuilder<GExtendedAppletNodeData_next>? next) =>
      _$this._next = next;

  GExtendedAppletNodeDataBuilder() {
    GExtendedAppletNodeData._initializeBuilder(this);
  }

  GExtendedAppletNodeDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _actionId = $v.actionId;
      _actionType = $v.actionType;
      _input = $v.input.toBuilder();
      _provider = $v.provider.toBuilder();
      _previous = $v.previous.toBuilder();
      _next = $v.next.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GExtendedAppletNodeData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExtendedAppletNodeData;
  }

  @override
  void update(void Function(GExtendedAppletNodeDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExtendedAppletNodeData build() => _build();

  _$GExtendedAppletNodeData _build() {
    _$GExtendedAppletNodeData _$result;
    try {
      _$result = _$v ??
          new _$GExtendedAppletNodeData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GExtendedAppletNodeData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GExtendedAppletNodeData', 'id'),
              actionId: BuiltValueNullFieldError.checkNotNull(
                  actionId, r'GExtendedAppletNodeData', 'actionId'),
              actionType: BuiltValueNullFieldError.checkNotNull(
                  actionType, r'GExtendedAppletNodeData', 'actionType'),
              input: input.build(),
              provider: provider.build(),
              previous: previous.build(),
              next: next.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
        _$failedField = 'provider';
        provider.build();
        _$failedField = 'previous';
        previous.build();
        _$failedField = 'next';
        next.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GExtendedAppletNodeData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GExtendedAppletNodeData_provider
    extends GExtendedAppletNodeData_provider {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String img;
  @override
  final String color;
  @override
  final _i2.GProviderVisibility visibility;

  factory _$GExtendedAppletNodeData_provider(
          [void Function(GExtendedAppletNodeData_providerBuilder)? updates]) =>
      (new GExtendedAppletNodeData_providerBuilder()..update(updates))._build();

  _$GExtendedAppletNodeData_provider._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.description,
      required this.img,
      required this.color,
      required this.visibility})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GExtendedAppletNodeData_provider', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GExtendedAppletNodeData_provider', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GExtendedAppletNodeData_provider', 'name');
    BuiltValueNullFieldError.checkNotNull(
        description, r'GExtendedAppletNodeData_provider', 'description');
    BuiltValueNullFieldError.checkNotNull(
        img, r'GExtendedAppletNodeData_provider', 'img');
    BuiltValueNullFieldError.checkNotNull(
        color, r'GExtendedAppletNodeData_provider', 'color');
    BuiltValueNullFieldError.checkNotNull(
        visibility, r'GExtendedAppletNodeData_provider', 'visibility');
  }

  @override
  GExtendedAppletNodeData_provider rebuild(
          void Function(GExtendedAppletNodeData_providerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExtendedAppletNodeData_providerBuilder toBuilder() =>
      new GExtendedAppletNodeData_providerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExtendedAppletNodeData_provider &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        img == other.img &&
        color == other.color &&
        visibility == other.visibility;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, img.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GExtendedAppletNodeData_provider')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('img', img)
          ..add('color', color)
          ..add('visibility', visibility))
        .toString();
  }
}

class GExtendedAppletNodeData_providerBuilder
    implements
        Builder<GExtendedAppletNodeData_provider,
            GExtendedAppletNodeData_providerBuilder> {
  _$GExtendedAppletNodeData_provider? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _img;
  String? get img => _$this._img;
  set img(String? img) => _$this._img = img;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  _i2.GProviderVisibility? _visibility;
  _i2.GProviderVisibility? get visibility => _$this._visibility;
  set visibility(_i2.GProviderVisibility? visibility) =>
      _$this._visibility = visibility;

  GExtendedAppletNodeData_providerBuilder() {
    GExtendedAppletNodeData_provider._initializeBuilder(this);
  }

  GExtendedAppletNodeData_providerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _img = $v.img;
      _color = $v.color;
      _visibility = $v.visibility;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GExtendedAppletNodeData_provider other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExtendedAppletNodeData_provider;
  }

  @override
  void update(void Function(GExtendedAppletNodeData_providerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExtendedAppletNodeData_provider build() => _build();

  _$GExtendedAppletNodeData_provider _build() {
    final _$result = _$v ??
        new _$GExtendedAppletNodeData_provider._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GExtendedAppletNodeData_provider', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GExtendedAppletNodeData_provider', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GExtendedAppletNodeData_provider', 'name'),
            description: BuiltValueNullFieldError.checkNotNull(description,
                r'GExtendedAppletNodeData_provider', 'description'),
            img: BuiltValueNullFieldError.checkNotNull(
                img, r'GExtendedAppletNodeData_provider', 'img'),
            color: BuiltValueNullFieldError.checkNotNull(
                color, r'GExtendedAppletNodeData_provider', 'color'),
            visibility: BuiltValueNullFieldError.checkNotNull(
                visibility, r'GExtendedAppletNodeData_provider', 'visibility'));
    replace(_$result);
    return _$result;
  }
}

class _$GExtendedAppletNodeData_previous
    extends GExtendedAppletNodeData_previous {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String actionId;
  @override
  final _i2.GAppletNodeType actionType;

  factory _$GExtendedAppletNodeData_previous(
          [void Function(GExtendedAppletNodeData_previousBuilder)? updates]) =>
      (new GExtendedAppletNodeData_previousBuilder()..update(updates))._build();

  _$GExtendedAppletNodeData_previous._(
      {required this.G__typename,
      required this.id,
      required this.actionId,
      required this.actionType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GExtendedAppletNodeData_previous', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GExtendedAppletNodeData_previous', 'id');
    BuiltValueNullFieldError.checkNotNull(
        actionId, r'GExtendedAppletNodeData_previous', 'actionId');
    BuiltValueNullFieldError.checkNotNull(
        actionType, r'GExtendedAppletNodeData_previous', 'actionType');
  }

  @override
  GExtendedAppletNodeData_previous rebuild(
          void Function(GExtendedAppletNodeData_previousBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExtendedAppletNodeData_previousBuilder toBuilder() =>
      new GExtendedAppletNodeData_previousBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExtendedAppletNodeData_previous &&
        G__typename == other.G__typename &&
        id == other.id &&
        actionId == other.actionId &&
        actionType == other.actionType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, actionId.hashCode);
    _$hash = $jc(_$hash, actionType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GExtendedAppletNodeData_previous')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('actionId', actionId)
          ..add('actionType', actionType))
        .toString();
  }
}

class GExtendedAppletNodeData_previousBuilder
    implements
        Builder<GExtendedAppletNodeData_previous,
            GExtendedAppletNodeData_previousBuilder> {
  _$GExtendedAppletNodeData_previous? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _actionId;
  String? get actionId => _$this._actionId;
  set actionId(String? actionId) => _$this._actionId = actionId;

  _i2.GAppletNodeType? _actionType;
  _i2.GAppletNodeType? get actionType => _$this._actionType;
  set actionType(_i2.GAppletNodeType? actionType) =>
      _$this._actionType = actionType;

  GExtendedAppletNodeData_previousBuilder() {
    GExtendedAppletNodeData_previous._initializeBuilder(this);
  }

  GExtendedAppletNodeData_previousBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _actionId = $v.actionId;
      _actionType = $v.actionType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GExtendedAppletNodeData_previous other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExtendedAppletNodeData_previous;
  }

  @override
  void update(void Function(GExtendedAppletNodeData_previousBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExtendedAppletNodeData_previous build() => _build();

  _$GExtendedAppletNodeData_previous _build() {
    final _$result = _$v ??
        new _$GExtendedAppletNodeData_previous._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GExtendedAppletNodeData_previous', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GExtendedAppletNodeData_previous', 'id'),
            actionId: BuiltValueNullFieldError.checkNotNull(
                actionId, r'GExtendedAppletNodeData_previous', 'actionId'),
            actionType: BuiltValueNullFieldError.checkNotNull(
                actionType, r'GExtendedAppletNodeData_previous', 'actionType'));
    replace(_$result);
    return _$result;
  }
}

class _$GExtendedAppletNodeData_next extends GExtendedAppletNodeData_next {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String actionId;
  @override
  final _i2.GAppletNodeType actionType;

  factory _$GExtendedAppletNodeData_next(
          [void Function(GExtendedAppletNodeData_nextBuilder)? updates]) =>
      (new GExtendedAppletNodeData_nextBuilder()..update(updates))._build();

  _$GExtendedAppletNodeData_next._(
      {required this.G__typename,
      required this.id,
      required this.actionId,
      required this.actionType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GExtendedAppletNodeData_next', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GExtendedAppletNodeData_next', 'id');
    BuiltValueNullFieldError.checkNotNull(
        actionId, r'GExtendedAppletNodeData_next', 'actionId');
    BuiltValueNullFieldError.checkNotNull(
        actionType, r'GExtendedAppletNodeData_next', 'actionType');
  }

  @override
  GExtendedAppletNodeData_next rebuild(
          void Function(GExtendedAppletNodeData_nextBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExtendedAppletNodeData_nextBuilder toBuilder() =>
      new GExtendedAppletNodeData_nextBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExtendedAppletNodeData_next &&
        G__typename == other.G__typename &&
        id == other.id &&
        actionId == other.actionId &&
        actionType == other.actionType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, actionId.hashCode);
    _$hash = $jc(_$hash, actionType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GExtendedAppletNodeData_next')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('actionId', actionId)
          ..add('actionType', actionType))
        .toString();
  }
}

class GExtendedAppletNodeData_nextBuilder
    implements
        Builder<GExtendedAppletNodeData_next,
            GExtendedAppletNodeData_nextBuilder> {
  _$GExtendedAppletNodeData_next? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _actionId;
  String? get actionId => _$this._actionId;
  set actionId(String? actionId) => _$this._actionId = actionId;

  _i2.GAppletNodeType? _actionType;
  _i2.GAppletNodeType? get actionType => _$this._actionType;
  set actionType(_i2.GAppletNodeType? actionType) =>
      _$this._actionType = actionType;

  GExtendedAppletNodeData_nextBuilder() {
    GExtendedAppletNodeData_next._initializeBuilder(this);
  }

  GExtendedAppletNodeData_nextBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _actionId = $v.actionId;
      _actionType = $v.actionType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GExtendedAppletNodeData_next other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExtendedAppletNodeData_next;
  }

  @override
  void update(void Function(GExtendedAppletNodeData_nextBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExtendedAppletNodeData_next build() => _build();

  _$GExtendedAppletNodeData_next _build() {
    final _$result = _$v ??
        new _$GExtendedAppletNodeData_next._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GExtendedAppletNodeData_next', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GExtendedAppletNodeData_next', 'id'),
            actionId: BuiltValueNullFieldError.checkNotNull(
                actionId, r'GExtendedAppletNodeData_next', 'actionId'),
            actionType: BuiltValueNullFieldError.checkNotNull(
                actionType, r'GExtendedAppletNodeData_next', 'actionType'));
    replace(_$result);
    return _$result;
  }
}

class _$GBaseAppletData extends GBaseAppletData {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;
  @override
  final String? description;

  factory _$GBaseAppletData([void Function(GBaseAppletDataBuilder)? updates]) =>
      (new GBaseAppletDataBuilder()..update(updates))._build();

  _$GBaseAppletData._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GBaseAppletData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GBaseAppletData', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'GBaseAppletData', 'name');
  }

  @override
  GBaseAppletData rebuild(void Function(GBaseAppletDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBaseAppletDataBuilder toBuilder() =>
      new GBaseAppletDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBaseAppletData &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GBaseAppletData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description))
        .toString();
  }
}

class GBaseAppletDataBuilder
    implements Builder<GBaseAppletData, GBaseAppletDataBuilder> {
  _$GBaseAppletData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GBaseAppletDataBuilder() {
    GBaseAppletData._initializeBuilder(this);
  }

  GBaseAppletDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GBaseAppletData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBaseAppletData;
  }

  @override
  void update(void Function(GBaseAppletDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBaseAppletData build() => _build();

  _$GBaseAppletData _build() {
    final _$result = _$v ??
        new _$GBaseAppletData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GBaseAppletData', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GBaseAppletData', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GBaseAppletData', 'name'),
            description: description);
    replace(_$result);
    return _$result;
  }
}

class _$GAppletWithNodesData extends GAppletWithNodesData {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final BuiltList<GAppletWithNodesData_triggerNodes> triggerNodes;

  factory _$GAppletWithNodesData(
          [void Function(GAppletWithNodesDataBuilder)? updates]) =>
      (new GAppletWithNodesDataBuilder()..update(updates))._build();

  _$GAppletWithNodesData._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.description,
      required this.triggerNodes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAppletWithNodesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GAppletWithNodesData', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GAppletWithNodesData', 'name');
    BuiltValueNullFieldError.checkNotNull(
        triggerNodes, r'GAppletWithNodesData', 'triggerNodes');
  }

  @override
  GAppletWithNodesData rebuild(
          void Function(GAppletWithNodesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAppletWithNodesDataBuilder toBuilder() =>
      new GAppletWithNodesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAppletWithNodesData &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        triggerNodes == other.triggerNodes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, triggerNodes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAppletWithNodesData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('triggerNodes', triggerNodes))
        .toString();
  }
}

class GAppletWithNodesDataBuilder
    implements Builder<GAppletWithNodesData, GAppletWithNodesDataBuilder> {
  _$GAppletWithNodesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<GAppletWithNodesData_triggerNodes>? _triggerNodes;
  ListBuilder<GAppletWithNodesData_triggerNodes> get triggerNodes =>
      _$this._triggerNodes ??=
          new ListBuilder<GAppletWithNodesData_triggerNodes>();
  set triggerNodes(
          ListBuilder<GAppletWithNodesData_triggerNodes>? triggerNodes) =>
      _$this._triggerNodes = triggerNodes;

  GAppletWithNodesDataBuilder() {
    GAppletWithNodesData._initializeBuilder(this);
  }

  GAppletWithNodesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _triggerNodes = $v.triggerNodes.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAppletWithNodesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAppletWithNodesData;
  }

  @override
  void update(void Function(GAppletWithNodesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAppletWithNodesData build() => _build();

  _$GAppletWithNodesData _build() {
    _$GAppletWithNodesData _$result;
    try {
      _$result = _$v ??
          new _$GAppletWithNodesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GAppletWithNodesData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GAppletWithNodesData', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GAppletWithNodesData', 'name'),
              description: description,
              triggerNodes: triggerNodes.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'triggerNodes';
        triggerNodes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAppletWithNodesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAppletWithNodesData_triggerNodes
    extends GAppletWithNodesData_triggerNodes {
  @override
  final String G__typename;
  @override
  final _i2.GJSON input;
  @override
  final GAppletWithNodesData_triggerNodes_provider provider;
  @override
  final BuiltList<GAppletWithNodesData_triggerNodes_previous> previous;
  @override
  final BuiltList<GAppletWithNodesData_triggerNodes_next> next;
  @override
  final int id;
  @override
  final String actionId;
  @override
  final _i2.GAppletNodeType actionType;

  factory _$GAppletWithNodesData_triggerNodes(
          [void Function(GAppletWithNodesData_triggerNodesBuilder)? updates]) =>
      (new GAppletWithNodesData_triggerNodesBuilder()..update(updates))
          ._build();

  _$GAppletWithNodesData_triggerNodes._(
      {required this.G__typename,
      required this.input,
      required this.provider,
      required this.previous,
      required this.next,
      required this.id,
      required this.actionId,
      required this.actionType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAppletWithNodesData_triggerNodes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        input, r'GAppletWithNodesData_triggerNodes', 'input');
    BuiltValueNullFieldError.checkNotNull(
        provider, r'GAppletWithNodesData_triggerNodes', 'provider');
    BuiltValueNullFieldError.checkNotNull(
        previous, r'GAppletWithNodesData_triggerNodes', 'previous');
    BuiltValueNullFieldError.checkNotNull(
        next, r'GAppletWithNodesData_triggerNodes', 'next');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GAppletWithNodesData_triggerNodes', 'id');
    BuiltValueNullFieldError.checkNotNull(
        actionId, r'GAppletWithNodesData_triggerNodes', 'actionId');
    BuiltValueNullFieldError.checkNotNull(
        actionType, r'GAppletWithNodesData_triggerNodes', 'actionType');
  }

  @override
  GAppletWithNodesData_triggerNodes rebuild(
          void Function(GAppletWithNodesData_triggerNodesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAppletWithNodesData_triggerNodesBuilder toBuilder() =>
      new GAppletWithNodesData_triggerNodesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAppletWithNodesData_triggerNodes &&
        G__typename == other.G__typename &&
        input == other.input &&
        provider == other.provider &&
        previous == other.previous &&
        next == other.next &&
        id == other.id &&
        actionId == other.actionId &&
        actionType == other.actionType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jc(_$hash, previous.hashCode);
    _$hash = $jc(_$hash, next.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, actionId.hashCode);
    _$hash = $jc(_$hash, actionType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAppletWithNodesData_triggerNodes')
          ..add('G__typename', G__typename)
          ..add('input', input)
          ..add('provider', provider)
          ..add('previous', previous)
          ..add('next', next)
          ..add('id', id)
          ..add('actionId', actionId)
          ..add('actionType', actionType))
        .toString();
  }
}

class GAppletWithNodesData_triggerNodesBuilder
    implements
        Builder<GAppletWithNodesData_triggerNodes,
            GAppletWithNodesData_triggerNodesBuilder> {
  _$GAppletWithNodesData_triggerNodes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GJSONBuilder? _input;
  _i2.GJSONBuilder get input => _$this._input ??= new _i2.GJSONBuilder();
  set input(_i2.GJSONBuilder? input) => _$this._input = input;

  GAppletWithNodesData_triggerNodes_providerBuilder? _provider;
  GAppletWithNodesData_triggerNodes_providerBuilder get provider =>
      _$this._provider ??=
          new GAppletWithNodesData_triggerNodes_providerBuilder();
  set provider(GAppletWithNodesData_triggerNodes_providerBuilder? provider) =>
      _$this._provider = provider;

  ListBuilder<GAppletWithNodesData_triggerNodes_previous>? _previous;
  ListBuilder<GAppletWithNodesData_triggerNodes_previous> get previous =>
      _$this._previous ??=
          new ListBuilder<GAppletWithNodesData_triggerNodes_previous>();
  set previous(
          ListBuilder<GAppletWithNodesData_triggerNodes_previous>? previous) =>
      _$this._previous = previous;

  ListBuilder<GAppletWithNodesData_triggerNodes_next>? _next;
  ListBuilder<GAppletWithNodesData_triggerNodes_next> get next =>
      _$this._next ??=
          new ListBuilder<GAppletWithNodesData_triggerNodes_next>();
  set next(ListBuilder<GAppletWithNodesData_triggerNodes_next>? next) =>
      _$this._next = next;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _actionId;
  String? get actionId => _$this._actionId;
  set actionId(String? actionId) => _$this._actionId = actionId;

  _i2.GAppletNodeType? _actionType;
  _i2.GAppletNodeType? get actionType => _$this._actionType;
  set actionType(_i2.GAppletNodeType? actionType) =>
      _$this._actionType = actionType;

  GAppletWithNodesData_triggerNodesBuilder() {
    GAppletWithNodesData_triggerNodes._initializeBuilder(this);
  }

  GAppletWithNodesData_triggerNodesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _input = $v.input.toBuilder();
      _provider = $v.provider.toBuilder();
      _previous = $v.previous.toBuilder();
      _next = $v.next.toBuilder();
      _id = $v.id;
      _actionId = $v.actionId;
      _actionType = $v.actionType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAppletWithNodesData_triggerNodes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAppletWithNodesData_triggerNodes;
  }

  @override
  void update(
      void Function(GAppletWithNodesData_triggerNodesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAppletWithNodesData_triggerNodes build() => _build();

  _$GAppletWithNodesData_triggerNodes _build() {
    _$GAppletWithNodesData_triggerNodes _$result;
    try {
      _$result = _$v ??
          new _$GAppletWithNodesData_triggerNodes._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GAppletWithNodesData_triggerNodes', 'G__typename'),
              input: input.build(),
              provider: provider.build(),
              previous: previous.build(),
              next: next.build(),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GAppletWithNodesData_triggerNodes', 'id'),
              actionId: BuiltValueNullFieldError.checkNotNull(
                  actionId, r'GAppletWithNodesData_triggerNodes', 'actionId'),
              actionType: BuiltValueNullFieldError.checkNotNull(actionType,
                  r'GAppletWithNodesData_triggerNodes', 'actionType'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
        _$failedField = 'provider';
        provider.build();
        _$failedField = 'previous';
        previous.build();
        _$failedField = 'next';
        next.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAppletWithNodesData_triggerNodes', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAppletWithNodesData_triggerNodes_provider
    extends GAppletWithNodesData_triggerNodes_provider {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String img;
  @override
  final String color;
  @override
  final _i2.GProviderVisibility visibility;

  factory _$GAppletWithNodesData_triggerNodes_provider(
          [void Function(GAppletWithNodesData_triggerNodes_providerBuilder)?
              updates]) =>
      (new GAppletWithNodesData_triggerNodes_providerBuilder()..update(updates))
          ._build();

  _$GAppletWithNodesData_triggerNodes_provider._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.description,
      required this.img,
      required this.color,
      required this.visibility})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GAppletWithNodesData_triggerNodes_provider', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GAppletWithNodesData_triggerNodes_provider', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GAppletWithNodesData_triggerNodes_provider', 'name');
    BuiltValueNullFieldError.checkNotNull(description,
        r'GAppletWithNodesData_triggerNodes_provider', 'description');
    BuiltValueNullFieldError.checkNotNull(
        img, r'GAppletWithNodesData_triggerNodes_provider', 'img');
    BuiltValueNullFieldError.checkNotNull(
        color, r'GAppletWithNodesData_triggerNodes_provider', 'color');
    BuiltValueNullFieldError.checkNotNull(visibility,
        r'GAppletWithNodesData_triggerNodes_provider', 'visibility');
  }

  @override
  GAppletWithNodesData_triggerNodes_provider rebuild(
          void Function(GAppletWithNodesData_triggerNodes_providerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAppletWithNodesData_triggerNodes_providerBuilder toBuilder() =>
      new GAppletWithNodesData_triggerNodes_providerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAppletWithNodesData_triggerNodes_provider &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        img == other.img &&
        color == other.color &&
        visibility == other.visibility;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, img.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GAppletWithNodesData_triggerNodes_provider')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('img', img)
          ..add('color', color)
          ..add('visibility', visibility))
        .toString();
  }
}

class GAppletWithNodesData_triggerNodes_providerBuilder
    implements
        Builder<GAppletWithNodesData_triggerNodes_provider,
            GAppletWithNodesData_triggerNodes_providerBuilder> {
  _$GAppletWithNodesData_triggerNodes_provider? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _img;
  String? get img => _$this._img;
  set img(String? img) => _$this._img = img;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  _i2.GProviderVisibility? _visibility;
  _i2.GProviderVisibility? get visibility => _$this._visibility;
  set visibility(_i2.GProviderVisibility? visibility) =>
      _$this._visibility = visibility;

  GAppletWithNodesData_triggerNodes_providerBuilder() {
    GAppletWithNodesData_triggerNodes_provider._initializeBuilder(this);
  }

  GAppletWithNodesData_triggerNodes_providerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _img = $v.img;
      _color = $v.color;
      _visibility = $v.visibility;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAppletWithNodesData_triggerNodes_provider other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAppletWithNodesData_triggerNodes_provider;
  }

  @override
  void update(
      void Function(GAppletWithNodesData_triggerNodes_providerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GAppletWithNodesData_triggerNodes_provider build() => _build();

  _$GAppletWithNodesData_triggerNodes_provider _build() {
    final _$result = _$v ??
        new _$GAppletWithNodesData_triggerNodes_provider._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GAppletWithNodesData_triggerNodes_provider', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GAppletWithNodesData_triggerNodes_provider', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GAppletWithNodesData_triggerNodes_provider', 'name'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'GAppletWithNodesData_triggerNodes_provider', 'description'),
            img: BuiltValueNullFieldError.checkNotNull(
                img, r'GAppletWithNodesData_triggerNodes_provider', 'img'),
            color: BuiltValueNullFieldError.checkNotNull(
                color, r'GAppletWithNodesData_triggerNodes_provider', 'color'),
            visibility: BuiltValueNullFieldError.checkNotNull(
                visibility, r'GAppletWithNodesData_triggerNodes_provider', 'visibility'));
    replace(_$result);
    return _$result;
  }
}

class _$GAppletWithNodesData_triggerNodes_previous
    extends GAppletWithNodesData_triggerNodes_previous {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String actionId;
  @override
  final _i2.GAppletNodeType actionType;

  factory _$GAppletWithNodesData_triggerNodes_previous(
          [void Function(GAppletWithNodesData_triggerNodes_previousBuilder)?
              updates]) =>
      (new GAppletWithNodesData_triggerNodes_previousBuilder()..update(updates))
          ._build();

  _$GAppletWithNodesData_triggerNodes_previous._(
      {required this.G__typename,
      required this.id,
      required this.actionId,
      required this.actionType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GAppletWithNodesData_triggerNodes_previous', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GAppletWithNodesData_triggerNodes_previous', 'id');
    BuiltValueNullFieldError.checkNotNull(
        actionId, r'GAppletWithNodesData_triggerNodes_previous', 'actionId');
    BuiltValueNullFieldError.checkNotNull(actionType,
        r'GAppletWithNodesData_triggerNodes_previous', 'actionType');
  }

  @override
  GAppletWithNodesData_triggerNodes_previous rebuild(
          void Function(GAppletWithNodesData_triggerNodes_previousBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAppletWithNodesData_triggerNodes_previousBuilder toBuilder() =>
      new GAppletWithNodesData_triggerNodes_previousBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAppletWithNodesData_triggerNodes_previous &&
        G__typename == other.G__typename &&
        id == other.id &&
        actionId == other.actionId &&
        actionType == other.actionType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, actionId.hashCode);
    _$hash = $jc(_$hash, actionType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GAppletWithNodesData_triggerNodes_previous')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('actionId', actionId)
          ..add('actionType', actionType))
        .toString();
  }
}

class GAppletWithNodesData_triggerNodes_previousBuilder
    implements
        Builder<GAppletWithNodesData_triggerNodes_previous,
            GAppletWithNodesData_triggerNodes_previousBuilder> {
  _$GAppletWithNodesData_triggerNodes_previous? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _actionId;
  String? get actionId => _$this._actionId;
  set actionId(String? actionId) => _$this._actionId = actionId;

  _i2.GAppletNodeType? _actionType;
  _i2.GAppletNodeType? get actionType => _$this._actionType;
  set actionType(_i2.GAppletNodeType? actionType) =>
      _$this._actionType = actionType;

  GAppletWithNodesData_triggerNodes_previousBuilder() {
    GAppletWithNodesData_triggerNodes_previous._initializeBuilder(this);
  }

  GAppletWithNodesData_triggerNodes_previousBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _actionId = $v.actionId;
      _actionType = $v.actionType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAppletWithNodesData_triggerNodes_previous other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAppletWithNodesData_triggerNodes_previous;
  }

  @override
  void update(
      void Function(GAppletWithNodesData_triggerNodes_previousBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GAppletWithNodesData_triggerNodes_previous build() => _build();

  _$GAppletWithNodesData_triggerNodes_previous _build() {
    final _$result = _$v ??
        new _$GAppletWithNodesData_triggerNodes_previous._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GAppletWithNodesData_triggerNodes_previous', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GAppletWithNodesData_triggerNodes_previous', 'id'),
            actionId: BuiltValueNullFieldError.checkNotNull(actionId,
                r'GAppletWithNodesData_triggerNodes_previous', 'actionId'),
            actionType: BuiltValueNullFieldError.checkNotNull(actionType,
                r'GAppletWithNodesData_triggerNodes_previous', 'actionType'));
    replace(_$result);
    return _$result;
  }
}

class _$GAppletWithNodesData_triggerNodes_next
    extends GAppletWithNodesData_triggerNodes_next {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String actionId;
  @override
  final _i2.GAppletNodeType actionType;

  factory _$GAppletWithNodesData_triggerNodes_next(
          [void Function(GAppletWithNodesData_triggerNodes_nextBuilder)?
              updates]) =>
      (new GAppletWithNodesData_triggerNodes_nextBuilder()..update(updates))
          ._build();

  _$GAppletWithNodesData_triggerNodes_next._(
      {required this.G__typename,
      required this.id,
      required this.actionId,
      required this.actionType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAppletWithNodesData_triggerNodes_next', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GAppletWithNodesData_triggerNodes_next', 'id');
    BuiltValueNullFieldError.checkNotNull(
        actionId, r'GAppletWithNodesData_triggerNodes_next', 'actionId');
    BuiltValueNullFieldError.checkNotNull(
        actionType, r'GAppletWithNodesData_triggerNodes_next', 'actionType');
  }

  @override
  GAppletWithNodesData_triggerNodes_next rebuild(
          void Function(GAppletWithNodesData_triggerNodes_nextBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAppletWithNodesData_triggerNodes_nextBuilder toBuilder() =>
      new GAppletWithNodesData_triggerNodes_nextBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAppletWithNodesData_triggerNodes_next &&
        G__typename == other.G__typename &&
        id == other.id &&
        actionId == other.actionId &&
        actionType == other.actionType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, actionId.hashCode);
    _$hash = $jc(_$hash, actionType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GAppletWithNodesData_triggerNodes_next')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('actionId', actionId)
          ..add('actionType', actionType))
        .toString();
  }
}

class GAppletWithNodesData_triggerNodes_nextBuilder
    implements
        Builder<GAppletWithNodesData_triggerNodes_next,
            GAppletWithNodesData_triggerNodes_nextBuilder> {
  _$GAppletWithNodesData_triggerNodes_next? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _actionId;
  String? get actionId => _$this._actionId;
  set actionId(String? actionId) => _$this._actionId = actionId;

  _i2.GAppletNodeType? _actionType;
  _i2.GAppletNodeType? get actionType => _$this._actionType;
  set actionType(_i2.GAppletNodeType? actionType) =>
      _$this._actionType = actionType;

  GAppletWithNodesData_triggerNodes_nextBuilder() {
    GAppletWithNodesData_triggerNodes_next._initializeBuilder(this);
  }

  GAppletWithNodesData_triggerNodes_nextBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _actionId = $v.actionId;
      _actionType = $v.actionType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAppletWithNodesData_triggerNodes_next other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAppletWithNodesData_triggerNodes_next;
  }

  @override
  void update(
      void Function(GAppletWithNodesData_triggerNodes_nextBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAppletWithNodesData_triggerNodes_next build() => _build();

  _$GAppletWithNodesData_triggerNodes_next _build() {
    final _$result = _$v ??
        new _$GAppletWithNodesData_triggerNodes_next._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GAppletWithNodesData_triggerNodes_next', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GAppletWithNodesData_triggerNodes_next', 'id'),
            actionId: BuiltValueNullFieldError.checkNotNull(actionId,
                r'GAppletWithNodesData_triggerNodes_next', 'actionId'),
            actionType: BuiltValueNullFieldError.checkNotNull(actionType,
                r'GAppletWithNodesData_triggerNodes_next', 'actionType'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
