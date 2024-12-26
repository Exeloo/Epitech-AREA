// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetAllProvidersData> _$ggetAllProvidersDataSerializer =
    new _$GgetAllProvidersDataSerializer();
Serializer<GgetAllProvidersData_getAllProviders>
    _$ggetAllProvidersDataGetAllProvidersSerializer =
    new _$GgetAllProvidersData_getAllProvidersSerializer();
Serializer<GgetProviderByIdData> _$ggetProviderByIdDataSerializer =
    new _$GgetProviderByIdDataSerializer();
Serializer<GgetProviderByIdData_getProviderById>
    _$ggetProviderByIdDataGetProviderByIdSerializer =
    new _$GgetProviderByIdData_getProviderByIdSerializer();
Serializer<GgetProviderByIdData_getProviderById_manifest>
    _$ggetProviderByIdDataGetProviderByIdManifestSerializer =
    new _$GgetProviderByIdData_getProviderById_manifestSerializer();
Serializer<GgetProviderByIdData_getProviderById_manifest_actions>
    _$ggetProviderByIdDataGetProviderByIdManifestActionsSerializer =
    new _$GgetProviderByIdData_getProviderById_manifest_actionsSerializer();
Serializer<GgetProviderByIdData_getProviderById_manifest_triggers>
    _$ggetProviderByIdDataGetProviderByIdManifestTriggersSerializer =
    new _$GgetProviderByIdData_getProviderById_manifest_triggersSerializer();
Serializer<GProviderManifestActionData>
    _$gProviderManifestActionDataSerializer =
    new _$GProviderManifestActionDataSerializer();
Serializer<GProviderManifestTriggerData>
    _$gProviderManifestTriggerDataSerializer =
    new _$GProviderManifestTriggerDataSerializer();
Serializer<GBaseProviderData> _$gBaseProviderDataSerializer =
    new _$GBaseProviderDataSerializer();
Serializer<GProviderWithManifestData> _$gProviderWithManifestDataSerializer =
    new _$GProviderWithManifestDataSerializer();
Serializer<GProviderWithManifestData_manifest>
    _$gProviderWithManifestDataManifestSerializer =
    new _$GProviderWithManifestData_manifestSerializer();
Serializer<GProviderWithManifestData_manifest_actions>
    _$gProviderWithManifestDataManifestActionsSerializer =
    new _$GProviderWithManifestData_manifest_actionsSerializer();
Serializer<GProviderWithManifestData_manifest_triggers>
    _$gProviderWithManifestDataManifestTriggersSerializer =
    new _$GProviderWithManifestData_manifest_triggersSerializer();

class _$GgetAllProvidersDataSerializer
    implements StructuredSerializer<GgetAllProvidersData> {
  @override
  final Iterable<Type> types = const [
    GgetAllProvidersData,
    _$GgetAllProvidersData
  ];
  @override
  final String wireName = 'GgetAllProvidersData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetAllProvidersData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getAllProviders',
      serializers.serialize(object.getAllProviders,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GgetAllProvidersData_getAllProviders)])),
    ];

    return result;
  }

  @override
  GgetAllProvidersData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetAllProvidersDataBuilder();

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
        case 'getAllProviders':
          result.getAllProviders.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GgetAllProvidersData_getAllProviders)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetAllProvidersData_getAllProvidersSerializer
    implements StructuredSerializer<GgetAllProvidersData_getAllProviders> {
  @override
  final Iterable<Type> types = const [
    GgetAllProvidersData_getAllProviders,
    _$GgetAllProvidersData_getAllProviders
  ];
  @override
  final String wireName = 'GgetAllProvidersData_getAllProviders';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetAllProvidersData_getAllProviders object,
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
  GgetAllProvidersData_getAllProviders deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetAllProvidersData_getAllProvidersBuilder();

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

class _$GgetProviderByIdDataSerializer
    implements StructuredSerializer<GgetProviderByIdData> {
  @override
  final Iterable<Type> types = const [
    GgetProviderByIdData,
    _$GgetProviderByIdData
  ];
  @override
  final String wireName = 'GgetProviderByIdData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetProviderByIdData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getProviderById',
      serializers.serialize(object.getProviderById,
          specifiedType: const FullType(GgetProviderByIdData_getProviderById)),
    ];

    return result;
  }

  @override
  GgetProviderByIdData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetProviderByIdDataBuilder();

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
        case 'getProviderById':
          result.getProviderById.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GgetProviderByIdData_getProviderById))!
              as GgetProviderByIdData_getProviderById);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetProviderByIdData_getProviderByIdSerializer
    implements StructuredSerializer<GgetProviderByIdData_getProviderById> {
  @override
  final Iterable<Type> types = const [
    GgetProviderByIdData_getProviderById,
    _$GgetProviderByIdData_getProviderById
  ];
  @override
  final String wireName = 'GgetProviderByIdData_getProviderById';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetProviderByIdData_getProviderById object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'manifest',
      serializers.serialize(object.manifest,
          specifiedType:
              const FullType(GgetProviderByIdData_getProviderById_manifest)),
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
  GgetProviderByIdData_getProviderById deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetProviderByIdData_getProviderByIdBuilder();

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
        case 'manifest':
          result.manifest.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetProviderByIdData_getProviderById_manifest))!
              as GgetProviderByIdData_getProviderById_manifest);
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

class _$GgetProviderByIdData_getProviderById_manifestSerializer
    implements
        StructuredSerializer<GgetProviderByIdData_getProviderById_manifest> {
  @override
  final Iterable<Type> types = const [
    GgetProviderByIdData_getProviderById_manifest,
    _$GgetProviderByIdData_getProviderById_manifest
  ];
  @override
  final String wireName = 'GgetProviderByIdData_getProviderById_manifest';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetProviderByIdData_getProviderById_manifest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'actions',
      serializers.serialize(object.actions,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                GgetProviderByIdData_getProviderById_manifest_actions)
          ])),
      'triggers',
      serializers.serialize(object.triggers,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                GgetProviderByIdData_getProviderById_manifest_triggers)
          ])),
    ];

    return result;
  }

  @override
  GgetProviderByIdData_getProviderById_manifest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetProviderByIdData_getProviderById_manifestBuilder();

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
        case 'actions':
          result.actions.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GgetProviderByIdData_getProviderById_manifest_actions)
              ]))! as BuiltList<Object?>);
          break;
        case 'triggers':
          result.triggers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GgetProviderByIdData_getProviderById_manifest_triggers)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetProviderByIdData_getProviderById_manifest_actionsSerializer
    implements
        StructuredSerializer<
            GgetProviderByIdData_getProviderById_manifest_actions> {
  @override
  final Iterable<Type> types = const [
    GgetProviderByIdData_getProviderById_manifest_actions,
    _$GgetProviderByIdData_getProviderById_manifest_actions
  ];
  @override
  final String wireName =
      'GgetProviderByIdData_getProviderById_manifest_actions';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetProviderByIdData_getProviderById_manifest_actions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
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
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i2.GJSON)),
      'output',
      serializers.serialize(object.output,
          specifiedType: const FullType(_i2.GJSON)),
    ];

    return result;
  }

  @override
  GgetProviderByIdData_getProviderById_manifest_actions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetProviderByIdData_getProviderById_manifest_actionsBuilder();

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
              specifiedType: const FullType(String))! as String;
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
        case 'input':
          result.input.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GJSON))! as _i2.GJSON);
          break;
        case 'output':
          result.output.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GJSON))! as _i2.GJSON);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetProviderByIdData_getProviderById_manifest_triggersSerializer
    implements
        StructuredSerializer<
            GgetProviderByIdData_getProviderById_manifest_triggers> {
  @override
  final Iterable<Type> types = const [
    GgetProviderByIdData_getProviderById_manifest_triggers,
    _$GgetProviderByIdData_getProviderById_manifest_triggers
  ];
  @override
  final String wireName =
      'GgetProviderByIdData_getProviderById_manifest_triggers';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetProviderByIdData_getProviderById_manifest_triggers object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
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
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i2.GJSON)),
      'output',
      serializers.serialize(object.output,
          specifiedType: const FullType(_i2.GJSON)),
    ];

    return result;
  }

  @override
  GgetProviderByIdData_getProviderById_manifest_triggers deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetProviderByIdData_getProviderById_manifest_triggersBuilder();

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
              specifiedType: const FullType(String))! as String;
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
        case 'input':
          result.input.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GJSON))! as _i2.GJSON);
          break;
        case 'output':
          result.output.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GJSON))! as _i2.GJSON);
          break;
      }
    }

    return result.build();
  }
}

class _$GProviderManifestActionDataSerializer
    implements StructuredSerializer<GProviderManifestActionData> {
  @override
  final Iterable<Type> types = const [
    GProviderManifestActionData,
    _$GProviderManifestActionData
  ];
  @override
  final String wireName = 'GProviderManifestActionData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProviderManifestActionData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
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
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i2.GJSON)),
      'output',
      serializers.serialize(object.output,
          specifiedType: const FullType(_i2.GJSON)),
    ];

    return result;
  }

  @override
  GProviderManifestActionData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProviderManifestActionDataBuilder();

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
              specifiedType: const FullType(String))! as String;
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
        case 'input':
          result.input.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GJSON))! as _i2.GJSON);
          break;
        case 'output':
          result.output.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GJSON))! as _i2.GJSON);
          break;
      }
    }

    return result.build();
  }
}

class _$GProviderManifestTriggerDataSerializer
    implements StructuredSerializer<GProviderManifestTriggerData> {
  @override
  final Iterable<Type> types = const [
    GProviderManifestTriggerData,
    _$GProviderManifestTriggerData
  ];
  @override
  final String wireName = 'GProviderManifestTriggerData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProviderManifestTriggerData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
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
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i2.GJSON)),
      'output',
      serializers.serialize(object.output,
          specifiedType: const FullType(_i2.GJSON)),
    ];

    return result;
  }

  @override
  GProviderManifestTriggerData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProviderManifestTriggerDataBuilder();

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
              specifiedType: const FullType(String))! as String;
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
        case 'input':
          result.input.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GJSON))! as _i2.GJSON);
          break;
        case 'output':
          result.output.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GJSON))! as _i2.GJSON);
          break;
      }
    }

    return result.build();
  }
}

class _$GBaseProviderDataSerializer
    implements StructuredSerializer<GBaseProviderData> {
  @override
  final Iterable<Type> types = const [GBaseProviderData, _$GBaseProviderData];
  @override
  final String wireName = 'GBaseProviderData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GBaseProviderData object,
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
  GBaseProviderData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GBaseProviderDataBuilder();

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

class _$GProviderWithManifestDataSerializer
    implements StructuredSerializer<GProviderWithManifestData> {
  @override
  final Iterable<Type> types = const [
    GProviderWithManifestData,
    _$GProviderWithManifestData
  ];
  @override
  final String wireName = 'GProviderWithManifestData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProviderWithManifestData object,
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
      'manifest',
      serializers.serialize(object.manifest,
          specifiedType: const FullType(GProviderWithManifestData_manifest)),
    ];

    return result;
  }

  @override
  GProviderWithManifestData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProviderWithManifestDataBuilder();

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
        case 'manifest':
          result.manifest.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GProviderWithManifestData_manifest))!
              as GProviderWithManifestData_manifest);
          break;
      }
    }

    return result.build();
  }
}

class _$GProviderWithManifestData_manifestSerializer
    implements StructuredSerializer<GProviderWithManifestData_manifest> {
  @override
  final Iterable<Type> types = const [
    GProviderWithManifestData_manifest,
    _$GProviderWithManifestData_manifest
  ];
  @override
  final String wireName = 'GProviderWithManifestData_manifest';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProviderWithManifestData_manifest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'actions',
      serializers.serialize(object.actions,
          specifiedType: const FullType(BuiltList, const [
            const FullType(GProviderWithManifestData_manifest_actions)
          ])),
      'triggers',
      serializers.serialize(object.triggers,
          specifiedType: const FullType(BuiltList, const [
            const FullType(GProviderWithManifestData_manifest_triggers)
          ])),
    ];

    return result;
  }

  @override
  GProviderWithManifestData_manifest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProviderWithManifestData_manifestBuilder();

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
        case 'actions':
          result.actions.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GProviderWithManifestData_manifest_actions)
              ]))! as BuiltList<Object?>);
          break;
        case 'triggers':
          result.triggers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GProviderWithManifestData_manifest_triggers)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GProviderWithManifestData_manifest_actionsSerializer
    implements
        StructuredSerializer<GProviderWithManifestData_manifest_actions> {
  @override
  final Iterable<Type> types = const [
    GProviderWithManifestData_manifest_actions,
    _$GProviderWithManifestData_manifest_actions
  ];
  @override
  final String wireName = 'GProviderWithManifestData_manifest_actions';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GProviderWithManifestData_manifest_actions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
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
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i2.GJSON)),
      'output',
      serializers.serialize(object.output,
          specifiedType: const FullType(_i2.GJSON)),
    ];

    return result;
  }

  @override
  GProviderWithManifestData_manifest_actions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProviderWithManifestData_manifest_actionsBuilder();

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
              specifiedType: const FullType(String))! as String;
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
        case 'input':
          result.input.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GJSON))! as _i2.GJSON);
          break;
        case 'output':
          result.output.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GJSON))! as _i2.GJSON);
          break;
      }
    }

    return result.build();
  }
}

class _$GProviderWithManifestData_manifest_triggersSerializer
    implements
        StructuredSerializer<GProviderWithManifestData_manifest_triggers> {
  @override
  final Iterable<Type> types = const [
    GProviderWithManifestData_manifest_triggers,
    _$GProviderWithManifestData_manifest_triggers
  ];
  @override
  final String wireName = 'GProviderWithManifestData_manifest_triggers';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GProviderWithManifestData_manifest_triggers object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
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
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i2.GJSON)),
      'output',
      serializers.serialize(object.output,
          specifiedType: const FullType(_i2.GJSON)),
    ];

    return result;
  }

  @override
  GProviderWithManifestData_manifest_triggers deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProviderWithManifestData_manifest_triggersBuilder();

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
              specifiedType: const FullType(String))! as String;
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
        case 'input':
          result.input.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GJSON))! as _i2.GJSON);
          break;
        case 'output':
          result.output.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GJSON))! as _i2.GJSON);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetAllProvidersData extends GgetAllProvidersData {
  @override
  final String G__typename;
  @override
  final BuiltList<GgetAllProvidersData_getAllProviders> getAllProviders;

  factory _$GgetAllProvidersData(
          [void Function(GgetAllProvidersDataBuilder)? updates]) =>
      (new GgetAllProvidersDataBuilder()..update(updates))._build();

  _$GgetAllProvidersData._(
      {required this.G__typename, required this.getAllProviders})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetAllProvidersData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        getAllProviders, r'GgetAllProvidersData', 'getAllProviders');
  }

  @override
  GgetAllProvidersData rebuild(
          void Function(GgetAllProvidersDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAllProvidersDataBuilder toBuilder() =>
      new GgetAllProvidersDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetAllProvidersData &&
        G__typename == other.G__typename &&
        getAllProviders == other.getAllProviders;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getAllProviders.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetAllProvidersData')
          ..add('G__typename', G__typename)
          ..add('getAllProviders', getAllProviders))
        .toString();
  }
}

class GgetAllProvidersDataBuilder
    implements Builder<GgetAllProvidersData, GgetAllProvidersDataBuilder> {
  _$GgetAllProvidersData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GgetAllProvidersData_getAllProviders>? _getAllProviders;
  ListBuilder<GgetAllProvidersData_getAllProviders> get getAllProviders =>
      _$this._getAllProviders ??=
          new ListBuilder<GgetAllProvidersData_getAllProviders>();
  set getAllProviders(
          ListBuilder<GgetAllProvidersData_getAllProviders>? getAllProviders) =>
      _$this._getAllProviders = getAllProviders;

  GgetAllProvidersDataBuilder() {
    GgetAllProvidersData._initializeBuilder(this);
  }

  GgetAllProvidersDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getAllProviders = $v.getAllProviders.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetAllProvidersData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAllProvidersData;
  }

  @override
  void update(void Function(GgetAllProvidersDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAllProvidersData build() => _build();

  _$GgetAllProvidersData _build() {
    _$GgetAllProvidersData _$result;
    try {
      _$result = _$v ??
          new _$GgetAllProvidersData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetAllProvidersData', 'G__typename'),
              getAllProviders: getAllProviders.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getAllProviders';
        getAllProviders.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetAllProvidersData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetAllProvidersData_getAllProviders
    extends GgetAllProvidersData_getAllProviders {
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

  factory _$GgetAllProvidersData_getAllProviders(
          [void Function(GgetAllProvidersData_getAllProvidersBuilder)?
              updates]) =>
      (new GgetAllProvidersData_getAllProvidersBuilder()..update(updates))
          ._build();

  _$GgetAllProvidersData_getAllProviders._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.description,
      required this.img,
      required this.color,
      required this.visibility})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetAllProvidersData_getAllProviders', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GgetAllProvidersData_getAllProviders', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GgetAllProvidersData_getAllProviders', 'name');
    BuiltValueNullFieldError.checkNotNull(
        description, r'GgetAllProvidersData_getAllProviders', 'description');
    BuiltValueNullFieldError.checkNotNull(
        img, r'GgetAllProvidersData_getAllProviders', 'img');
    BuiltValueNullFieldError.checkNotNull(
        color, r'GgetAllProvidersData_getAllProviders', 'color');
    BuiltValueNullFieldError.checkNotNull(
        visibility, r'GgetAllProvidersData_getAllProviders', 'visibility');
  }

  @override
  GgetAllProvidersData_getAllProviders rebuild(
          void Function(GgetAllProvidersData_getAllProvidersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAllProvidersData_getAllProvidersBuilder toBuilder() =>
      new GgetAllProvidersData_getAllProvidersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetAllProvidersData_getAllProviders &&
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
    return (newBuiltValueToStringHelper(r'GgetAllProvidersData_getAllProviders')
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

class GgetAllProvidersData_getAllProvidersBuilder
    implements
        Builder<GgetAllProvidersData_getAllProviders,
            GgetAllProvidersData_getAllProvidersBuilder> {
  _$GgetAllProvidersData_getAllProviders? _$v;

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

  GgetAllProvidersData_getAllProvidersBuilder() {
    GgetAllProvidersData_getAllProviders._initializeBuilder(this);
  }

  GgetAllProvidersData_getAllProvidersBuilder get _$this {
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
  void replace(GgetAllProvidersData_getAllProviders other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAllProvidersData_getAllProviders;
  }

  @override
  void update(
      void Function(GgetAllProvidersData_getAllProvidersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAllProvidersData_getAllProviders build() => _build();

  _$GgetAllProvidersData_getAllProviders _build() {
    final _$result = _$v ??
        new _$GgetAllProvidersData_getAllProviders._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GgetAllProvidersData_getAllProviders', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GgetAllProvidersData_getAllProviders', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GgetAllProvidersData_getAllProviders', 'name'),
            description: BuiltValueNullFieldError.checkNotNull(description,
                r'GgetAllProvidersData_getAllProviders', 'description'),
            img: BuiltValueNullFieldError.checkNotNull(
                img, r'GgetAllProvidersData_getAllProviders', 'img'),
            color: BuiltValueNullFieldError.checkNotNull(
                color, r'GgetAllProvidersData_getAllProviders', 'color'),
            visibility: BuiltValueNullFieldError.checkNotNull(
                visibility, r'GgetAllProvidersData_getAllProviders', 'visibility'));
    replace(_$result);
    return _$result;
  }
}

class _$GgetProviderByIdData extends GgetProviderByIdData {
  @override
  final String G__typename;
  @override
  final GgetProviderByIdData_getProviderById getProviderById;

  factory _$GgetProviderByIdData(
          [void Function(GgetProviderByIdDataBuilder)? updates]) =>
      (new GgetProviderByIdDataBuilder()..update(updates))._build();

  _$GgetProviderByIdData._(
      {required this.G__typename, required this.getProviderById})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetProviderByIdData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        getProviderById, r'GgetProviderByIdData', 'getProviderById');
  }

  @override
  GgetProviderByIdData rebuild(
          void Function(GgetProviderByIdDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetProviderByIdDataBuilder toBuilder() =>
      new GgetProviderByIdDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetProviderByIdData &&
        G__typename == other.G__typename &&
        getProviderById == other.getProviderById;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getProviderById.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetProviderByIdData')
          ..add('G__typename', G__typename)
          ..add('getProviderById', getProviderById))
        .toString();
  }
}

class GgetProviderByIdDataBuilder
    implements Builder<GgetProviderByIdData, GgetProviderByIdDataBuilder> {
  _$GgetProviderByIdData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetProviderByIdData_getProviderByIdBuilder? _getProviderById;
  GgetProviderByIdData_getProviderByIdBuilder get getProviderById =>
      _$this._getProviderById ??=
          new GgetProviderByIdData_getProviderByIdBuilder();
  set getProviderById(
          GgetProviderByIdData_getProviderByIdBuilder? getProviderById) =>
      _$this._getProviderById = getProviderById;

  GgetProviderByIdDataBuilder() {
    GgetProviderByIdData._initializeBuilder(this);
  }

  GgetProviderByIdDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getProviderById = $v.getProviderById.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetProviderByIdData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetProviderByIdData;
  }

  @override
  void update(void Function(GgetProviderByIdDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetProviderByIdData build() => _build();

  _$GgetProviderByIdData _build() {
    _$GgetProviderByIdData _$result;
    try {
      _$result = _$v ??
          new _$GgetProviderByIdData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetProviderByIdData', 'G__typename'),
              getProviderById: getProviderById.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getProviderById';
        getProviderById.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetProviderByIdData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetProviderByIdData_getProviderById
    extends GgetProviderByIdData_getProviderById {
  @override
  final String G__typename;
  @override
  final GgetProviderByIdData_getProviderById_manifest manifest;
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

  factory _$GgetProviderByIdData_getProviderById(
          [void Function(GgetProviderByIdData_getProviderByIdBuilder)?
              updates]) =>
      (new GgetProviderByIdData_getProviderByIdBuilder()..update(updates))
          ._build();

  _$GgetProviderByIdData_getProviderById._(
      {required this.G__typename,
      required this.manifest,
      required this.id,
      required this.name,
      required this.description,
      required this.img,
      required this.color,
      required this.visibility})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetProviderByIdData_getProviderById', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        manifest, r'GgetProviderByIdData_getProviderById', 'manifest');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GgetProviderByIdData_getProviderById', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GgetProviderByIdData_getProviderById', 'name');
    BuiltValueNullFieldError.checkNotNull(
        description, r'GgetProviderByIdData_getProviderById', 'description');
    BuiltValueNullFieldError.checkNotNull(
        img, r'GgetProviderByIdData_getProviderById', 'img');
    BuiltValueNullFieldError.checkNotNull(
        color, r'GgetProviderByIdData_getProviderById', 'color');
    BuiltValueNullFieldError.checkNotNull(
        visibility, r'GgetProviderByIdData_getProviderById', 'visibility');
  }

  @override
  GgetProviderByIdData_getProviderById rebuild(
          void Function(GgetProviderByIdData_getProviderByIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetProviderByIdData_getProviderByIdBuilder toBuilder() =>
      new GgetProviderByIdData_getProviderByIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetProviderByIdData_getProviderById &&
        G__typename == other.G__typename &&
        manifest == other.manifest &&
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
    _$hash = $jc(_$hash, manifest.hashCode);
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
    return (newBuiltValueToStringHelper(r'GgetProviderByIdData_getProviderById')
          ..add('G__typename', G__typename)
          ..add('manifest', manifest)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('img', img)
          ..add('color', color)
          ..add('visibility', visibility))
        .toString();
  }
}

class GgetProviderByIdData_getProviderByIdBuilder
    implements
        Builder<GgetProviderByIdData_getProviderById,
            GgetProviderByIdData_getProviderByIdBuilder> {
  _$GgetProviderByIdData_getProviderById? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetProviderByIdData_getProviderById_manifestBuilder? _manifest;
  GgetProviderByIdData_getProviderById_manifestBuilder get manifest =>
      _$this._manifest ??=
          new GgetProviderByIdData_getProviderById_manifestBuilder();
  set manifest(
          GgetProviderByIdData_getProviderById_manifestBuilder? manifest) =>
      _$this._manifest = manifest;

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

  GgetProviderByIdData_getProviderByIdBuilder() {
    GgetProviderByIdData_getProviderById._initializeBuilder(this);
  }

  GgetProviderByIdData_getProviderByIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _manifest = $v.manifest.toBuilder();
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
  void replace(GgetProviderByIdData_getProviderById other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetProviderByIdData_getProviderById;
  }

  @override
  void update(
      void Function(GgetProviderByIdData_getProviderByIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetProviderByIdData_getProviderById build() => _build();

  _$GgetProviderByIdData_getProviderById _build() {
    _$GgetProviderByIdData_getProviderById _$result;
    try {
      _$result = _$v ??
          new _$GgetProviderByIdData_getProviderById._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetProviderByIdData_getProviderById', 'G__typename'),
              manifest: manifest.build(),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GgetProviderByIdData_getProviderById', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GgetProviderByIdData_getProviderById', 'name'),
              description: BuiltValueNullFieldError.checkNotNull(description,
                  r'GgetProviderByIdData_getProviderById', 'description'),
              img: BuiltValueNullFieldError.checkNotNull(
                  img, r'GgetProviderByIdData_getProviderById', 'img'),
              color: BuiltValueNullFieldError.checkNotNull(
                  color, r'GgetProviderByIdData_getProviderById', 'color'),
              visibility: BuiltValueNullFieldError.checkNotNull(
                  visibility, r'GgetProviderByIdData_getProviderById', 'visibility'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'manifest';
        manifest.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetProviderByIdData_getProviderById',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetProviderByIdData_getProviderById_manifest
    extends GgetProviderByIdData_getProviderById_manifest {
  @override
  final String G__typename;
  @override
  final BuiltList<GgetProviderByIdData_getProviderById_manifest_actions>
      actions;
  @override
  final BuiltList<GgetProviderByIdData_getProviderById_manifest_triggers>
      triggers;

  factory _$GgetProviderByIdData_getProviderById_manifest(
          [void Function(GgetProviderByIdData_getProviderById_manifestBuilder)?
              updates]) =>
      (new GgetProviderByIdData_getProviderById_manifestBuilder()
            ..update(updates))
          ._build();

  _$GgetProviderByIdData_getProviderById_manifest._(
      {required this.G__typename,
      required this.actions,
      required this.triggers})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetProviderByIdData_getProviderById_manifest', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        actions, r'GgetProviderByIdData_getProviderById_manifest', 'actions');
    BuiltValueNullFieldError.checkNotNull(
        triggers, r'GgetProviderByIdData_getProviderById_manifest', 'triggers');
  }

  @override
  GgetProviderByIdData_getProviderById_manifest rebuild(
          void Function(GgetProviderByIdData_getProviderById_manifestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetProviderByIdData_getProviderById_manifestBuilder toBuilder() =>
      new GgetProviderByIdData_getProviderById_manifestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetProviderByIdData_getProviderById_manifest &&
        G__typename == other.G__typename &&
        actions == other.actions &&
        triggers == other.triggers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, actions.hashCode);
    _$hash = $jc(_$hash, triggers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetProviderByIdData_getProviderById_manifest')
          ..add('G__typename', G__typename)
          ..add('actions', actions)
          ..add('triggers', triggers))
        .toString();
  }
}

class GgetProviderByIdData_getProviderById_manifestBuilder
    implements
        Builder<GgetProviderByIdData_getProviderById_manifest,
            GgetProviderByIdData_getProviderById_manifestBuilder> {
  _$GgetProviderByIdData_getProviderById_manifest? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GgetProviderByIdData_getProviderById_manifest_actions>? _actions;
  ListBuilder<GgetProviderByIdData_getProviderById_manifest_actions>
      get actions => _$this._actions ??= new ListBuilder<
          GgetProviderByIdData_getProviderById_manifest_actions>();
  set actions(
          ListBuilder<GgetProviderByIdData_getProviderById_manifest_actions>?
              actions) =>
      _$this._actions = actions;

  ListBuilder<GgetProviderByIdData_getProviderById_manifest_triggers>?
      _triggers;
  ListBuilder<GgetProviderByIdData_getProviderById_manifest_triggers>
      get triggers => _$this._triggers ??= new ListBuilder<
          GgetProviderByIdData_getProviderById_manifest_triggers>();
  set triggers(
          ListBuilder<GgetProviderByIdData_getProviderById_manifest_triggers>?
              triggers) =>
      _$this._triggers = triggers;

  GgetProviderByIdData_getProviderById_manifestBuilder() {
    GgetProviderByIdData_getProviderById_manifest._initializeBuilder(this);
  }

  GgetProviderByIdData_getProviderById_manifestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _actions = $v.actions.toBuilder();
      _triggers = $v.triggers.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetProviderByIdData_getProviderById_manifest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetProviderByIdData_getProviderById_manifest;
  }

  @override
  void update(
      void Function(GgetProviderByIdData_getProviderById_manifestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetProviderByIdData_getProviderById_manifest build() => _build();

  _$GgetProviderByIdData_getProviderById_manifest _build() {
    _$GgetProviderByIdData_getProviderById_manifest _$result;
    try {
      _$result = _$v ??
          new _$GgetProviderByIdData_getProviderById_manifest._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetProviderByIdData_getProviderById_manifest',
                  'G__typename'),
              actions: actions.build(),
              triggers: triggers.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'actions';
        actions.build();
        _$failedField = 'triggers';
        triggers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetProviderByIdData_getProviderById_manifest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetProviderByIdData_getProviderById_manifest_actions
    extends GgetProviderByIdData_getProviderById_manifest_actions {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String img;
  @override
  final String color;
  @override
  final _i2.GJSON input;
  @override
  final _i2.GJSON output;

  factory _$GgetProviderByIdData_getProviderById_manifest_actions(
          [void Function(
                  GgetProviderByIdData_getProviderById_manifest_actionsBuilder)?
              updates]) =>
      (new GgetProviderByIdData_getProviderById_manifest_actionsBuilder()
            ..update(updates))
          ._build();

  _$GgetProviderByIdData_getProviderById_manifest_actions._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.description,
      required this.img,
      required this.color,
      required this.input,
      required this.output})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetProviderByIdData_getProviderById_manifest_actions',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GgetProviderByIdData_getProviderById_manifest_actions', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GgetProviderByIdData_getProviderById_manifest_actions', 'name');
    BuiltValueNullFieldError.checkNotNull(
        description,
        r'GgetProviderByIdData_getProviderById_manifest_actions',
        'description');
    BuiltValueNullFieldError.checkNotNull(
        img, r'GgetProviderByIdData_getProviderById_manifest_actions', 'img');
    BuiltValueNullFieldError.checkNotNull(color,
        r'GgetProviderByIdData_getProviderById_manifest_actions', 'color');
    BuiltValueNullFieldError.checkNotNull(input,
        r'GgetProviderByIdData_getProviderById_manifest_actions', 'input');
    BuiltValueNullFieldError.checkNotNull(output,
        r'GgetProviderByIdData_getProviderById_manifest_actions', 'output');
  }

  @override
  GgetProviderByIdData_getProviderById_manifest_actions rebuild(
          void Function(
                  GgetProviderByIdData_getProviderById_manifest_actionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetProviderByIdData_getProviderById_manifest_actionsBuilder toBuilder() =>
      new GgetProviderByIdData_getProviderById_manifest_actionsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetProviderByIdData_getProviderById_manifest_actions &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        img == other.img &&
        color == other.color &&
        input == other.input &&
        output == other.output;
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
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jc(_$hash, output.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetProviderByIdData_getProviderById_manifest_actions')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('img', img)
          ..add('color', color)
          ..add('input', input)
          ..add('output', output))
        .toString();
  }
}

class GgetProviderByIdData_getProviderById_manifest_actionsBuilder
    implements
        Builder<GgetProviderByIdData_getProviderById_manifest_actions,
            GgetProviderByIdData_getProviderById_manifest_actionsBuilder> {
  _$GgetProviderByIdData_getProviderById_manifest_actions? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

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

  _i2.GJSONBuilder? _input;
  _i2.GJSONBuilder get input => _$this._input ??= new _i2.GJSONBuilder();
  set input(_i2.GJSONBuilder? input) => _$this._input = input;

  _i2.GJSONBuilder? _output;
  _i2.GJSONBuilder get output => _$this._output ??= new _i2.GJSONBuilder();
  set output(_i2.GJSONBuilder? output) => _$this._output = output;

  GgetProviderByIdData_getProviderById_manifest_actionsBuilder() {
    GgetProviderByIdData_getProviderById_manifest_actions._initializeBuilder(
        this);
  }

  GgetProviderByIdData_getProviderById_manifest_actionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _img = $v.img;
      _color = $v.color;
      _input = $v.input.toBuilder();
      _output = $v.output.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetProviderByIdData_getProviderById_manifest_actions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetProviderByIdData_getProviderById_manifest_actions;
  }

  @override
  void update(
      void Function(
              GgetProviderByIdData_getProviderById_manifest_actionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetProviderByIdData_getProviderById_manifest_actions build() => _build();

  _$GgetProviderByIdData_getProviderById_manifest_actions _build() {
    _$GgetProviderByIdData_getProviderById_manifest_actions _$result;
    try {
      _$result = _$v ??
          new _$GgetProviderByIdData_getProviderById_manifest_actions._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetProviderByIdData_getProviderById_manifest_actions',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GgetProviderByIdData_getProviderById_manifest_actions', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GgetProviderByIdData_getProviderById_manifest_actions', 'name'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description,
                  r'GgetProviderByIdData_getProviderById_manifest_actions',
                  'description'),
              img: BuiltValueNullFieldError.checkNotNull(
                  img, r'GgetProviderByIdData_getProviderById_manifest_actions', 'img'),
              color: BuiltValueNullFieldError.checkNotNull(
                  color, r'GgetProviderByIdData_getProviderById_manifest_actions', 'color'),
              input: input.build(),
              output: output.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
        _$failedField = 'output';
        output.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetProviderByIdData_getProviderById_manifest_actions',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetProviderByIdData_getProviderById_manifest_triggers
    extends GgetProviderByIdData_getProviderById_manifest_triggers {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String img;
  @override
  final String color;
  @override
  final _i2.GJSON input;
  @override
  final _i2.GJSON output;

  factory _$GgetProviderByIdData_getProviderById_manifest_triggers(
          [void Function(
                  GgetProviderByIdData_getProviderById_manifest_triggersBuilder)?
              updates]) =>
      (new GgetProviderByIdData_getProviderById_manifest_triggersBuilder()
            ..update(updates))
          ._build();

  _$GgetProviderByIdData_getProviderById_manifest_triggers._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.description,
      required this.img,
      required this.color,
      required this.input,
      required this.output})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetProviderByIdData_getProviderById_manifest_triggers',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GgetProviderByIdData_getProviderById_manifest_triggers', 'id');
    BuiltValueNullFieldError.checkNotNull(name,
        r'GgetProviderByIdData_getProviderById_manifest_triggers', 'name');
    BuiltValueNullFieldError.checkNotNull(
        description,
        r'GgetProviderByIdData_getProviderById_manifest_triggers',
        'description');
    BuiltValueNullFieldError.checkNotNull(
        img, r'GgetProviderByIdData_getProviderById_manifest_triggers', 'img');
    BuiltValueNullFieldError.checkNotNull(color,
        r'GgetProviderByIdData_getProviderById_manifest_triggers', 'color');
    BuiltValueNullFieldError.checkNotNull(input,
        r'GgetProviderByIdData_getProviderById_manifest_triggers', 'input');
    BuiltValueNullFieldError.checkNotNull(output,
        r'GgetProviderByIdData_getProviderById_manifest_triggers', 'output');
  }

  @override
  GgetProviderByIdData_getProviderById_manifest_triggers rebuild(
          void Function(
                  GgetProviderByIdData_getProviderById_manifest_triggersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetProviderByIdData_getProviderById_manifest_triggersBuilder toBuilder() =>
      new GgetProviderByIdData_getProviderById_manifest_triggersBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetProviderByIdData_getProviderById_manifest_triggers &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        img == other.img &&
        color == other.color &&
        input == other.input &&
        output == other.output;
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
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jc(_$hash, output.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetProviderByIdData_getProviderById_manifest_triggers')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('img', img)
          ..add('color', color)
          ..add('input', input)
          ..add('output', output))
        .toString();
  }
}

class GgetProviderByIdData_getProviderById_manifest_triggersBuilder
    implements
        Builder<GgetProviderByIdData_getProviderById_manifest_triggers,
            GgetProviderByIdData_getProviderById_manifest_triggersBuilder> {
  _$GgetProviderByIdData_getProviderById_manifest_triggers? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

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

  _i2.GJSONBuilder? _input;
  _i2.GJSONBuilder get input => _$this._input ??= new _i2.GJSONBuilder();
  set input(_i2.GJSONBuilder? input) => _$this._input = input;

  _i2.GJSONBuilder? _output;
  _i2.GJSONBuilder get output => _$this._output ??= new _i2.GJSONBuilder();
  set output(_i2.GJSONBuilder? output) => _$this._output = output;

  GgetProviderByIdData_getProviderById_manifest_triggersBuilder() {
    GgetProviderByIdData_getProviderById_manifest_triggers._initializeBuilder(
        this);
  }

  GgetProviderByIdData_getProviderById_manifest_triggersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _img = $v.img;
      _color = $v.color;
      _input = $v.input.toBuilder();
      _output = $v.output.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetProviderByIdData_getProviderById_manifest_triggers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetProviderByIdData_getProviderById_manifest_triggers;
  }

  @override
  void update(
      void Function(
              GgetProviderByIdData_getProviderById_manifest_triggersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetProviderByIdData_getProviderById_manifest_triggers build() => _build();

  _$GgetProviderByIdData_getProviderById_manifest_triggers _build() {
    _$GgetProviderByIdData_getProviderById_manifest_triggers _$result;
    try {
      _$result = _$v ??
          new _$GgetProviderByIdData_getProviderById_manifest_triggers._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetProviderByIdData_getProviderById_manifest_triggers',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GgetProviderByIdData_getProviderById_manifest_triggers', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GgetProviderByIdData_getProviderById_manifest_triggers', 'name'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description,
                  r'GgetProviderByIdData_getProviderById_manifest_triggers',
                  'description'),
              img: BuiltValueNullFieldError.checkNotNull(
                  img, r'GgetProviderByIdData_getProviderById_manifest_triggers', 'img'),
              color: BuiltValueNullFieldError.checkNotNull(
                  color, r'GgetProviderByIdData_getProviderById_manifest_triggers', 'color'),
              input: input.build(),
              output: output.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
        _$failedField = 'output';
        output.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetProviderByIdData_getProviderById_manifest_triggers',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GProviderManifestActionData extends GProviderManifestActionData {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String img;
  @override
  final String color;
  @override
  final _i2.GJSON input;
  @override
  final _i2.GJSON output;

  factory _$GProviderManifestActionData(
          [void Function(GProviderManifestActionDataBuilder)? updates]) =>
      (new GProviderManifestActionDataBuilder()..update(updates))._build();

  _$GProviderManifestActionData._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.description,
      required this.img,
      required this.color,
      required this.input,
      required this.output})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GProviderManifestActionData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GProviderManifestActionData', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GProviderManifestActionData', 'name');
    BuiltValueNullFieldError.checkNotNull(
        description, r'GProviderManifestActionData', 'description');
    BuiltValueNullFieldError.checkNotNull(
        img, r'GProviderManifestActionData', 'img');
    BuiltValueNullFieldError.checkNotNull(
        color, r'GProviderManifestActionData', 'color');
    BuiltValueNullFieldError.checkNotNull(
        input, r'GProviderManifestActionData', 'input');
    BuiltValueNullFieldError.checkNotNull(
        output, r'GProviderManifestActionData', 'output');
  }

  @override
  GProviderManifestActionData rebuild(
          void Function(GProviderManifestActionDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProviderManifestActionDataBuilder toBuilder() =>
      new GProviderManifestActionDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProviderManifestActionData &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        img == other.img &&
        color == other.color &&
        input == other.input &&
        output == other.output;
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
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jc(_$hash, output.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GProviderManifestActionData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('img', img)
          ..add('color', color)
          ..add('input', input)
          ..add('output', output))
        .toString();
  }
}

class GProviderManifestActionDataBuilder
    implements
        Builder<GProviderManifestActionData,
            GProviderManifestActionDataBuilder> {
  _$GProviderManifestActionData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

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

  _i2.GJSONBuilder? _input;
  _i2.GJSONBuilder get input => _$this._input ??= new _i2.GJSONBuilder();
  set input(_i2.GJSONBuilder? input) => _$this._input = input;

  _i2.GJSONBuilder? _output;
  _i2.GJSONBuilder get output => _$this._output ??= new _i2.GJSONBuilder();
  set output(_i2.GJSONBuilder? output) => _$this._output = output;

  GProviderManifestActionDataBuilder() {
    GProviderManifestActionData._initializeBuilder(this);
  }

  GProviderManifestActionDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _img = $v.img;
      _color = $v.color;
      _input = $v.input.toBuilder();
      _output = $v.output.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProviderManifestActionData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProviderManifestActionData;
  }

  @override
  void update(void Function(GProviderManifestActionDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GProviderManifestActionData build() => _build();

  _$GProviderManifestActionData _build() {
    _$GProviderManifestActionData _$result;
    try {
      _$result = _$v ??
          new _$GProviderManifestActionData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GProviderManifestActionData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GProviderManifestActionData', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GProviderManifestActionData', 'name'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, r'GProviderManifestActionData', 'description'),
              img: BuiltValueNullFieldError.checkNotNull(
                  img, r'GProviderManifestActionData', 'img'),
              color: BuiltValueNullFieldError.checkNotNull(
                  color, r'GProviderManifestActionData', 'color'),
              input: input.build(),
              output: output.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
        _$failedField = 'output';
        output.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GProviderManifestActionData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GProviderManifestTriggerData extends GProviderManifestTriggerData {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String img;
  @override
  final String color;
  @override
  final _i2.GJSON input;
  @override
  final _i2.GJSON output;

  factory _$GProviderManifestTriggerData(
          [void Function(GProviderManifestTriggerDataBuilder)? updates]) =>
      (new GProviderManifestTriggerDataBuilder()..update(updates))._build();

  _$GProviderManifestTriggerData._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.description,
      required this.img,
      required this.color,
      required this.input,
      required this.output})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GProviderManifestTriggerData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GProviderManifestTriggerData', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GProviderManifestTriggerData', 'name');
    BuiltValueNullFieldError.checkNotNull(
        description, r'GProviderManifestTriggerData', 'description');
    BuiltValueNullFieldError.checkNotNull(
        img, r'GProviderManifestTriggerData', 'img');
    BuiltValueNullFieldError.checkNotNull(
        color, r'GProviderManifestTriggerData', 'color');
    BuiltValueNullFieldError.checkNotNull(
        input, r'GProviderManifestTriggerData', 'input');
    BuiltValueNullFieldError.checkNotNull(
        output, r'GProviderManifestTriggerData', 'output');
  }

  @override
  GProviderManifestTriggerData rebuild(
          void Function(GProviderManifestTriggerDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProviderManifestTriggerDataBuilder toBuilder() =>
      new GProviderManifestTriggerDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProviderManifestTriggerData &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        img == other.img &&
        color == other.color &&
        input == other.input &&
        output == other.output;
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
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jc(_$hash, output.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GProviderManifestTriggerData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('img', img)
          ..add('color', color)
          ..add('input', input)
          ..add('output', output))
        .toString();
  }
}

class GProviderManifestTriggerDataBuilder
    implements
        Builder<GProviderManifestTriggerData,
            GProviderManifestTriggerDataBuilder> {
  _$GProviderManifestTriggerData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

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

  _i2.GJSONBuilder? _input;
  _i2.GJSONBuilder get input => _$this._input ??= new _i2.GJSONBuilder();
  set input(_i2.GJSONBuilder? input) => _$this._input = input;

  _i2.GJSONBuilder? _output;
  _i2.GJSONBuilder get output => _$this._output ??= new _i2.GJSONBuilder();
  set output(_i2.GJSONBuilder? output) => _$this._output = output;

  GProviderManifestTriggerDataBuilder() {
    GProviderManifestTriggerData._initializeBuilder(this);
  }

  GProviderManifestTriggerDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _img = $v.img;
      _color = $v.color;
      _input = $v.input.toBuilder();
      _output = $v.output.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProviderManifestTriggerData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProviderManifestTriggerData;
  }

  @override
  void update(void Function(GProviderManifestTriggerDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GProviderManifestTriggerData build() => _build();

  _$GProviderManifestTriggerData _build() {
    _$GProviderManifestTriggerData _$result;
    try {
      _$result = _$v ??
          new _$GProviderManifestTriggerData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GProviderManifestTriggerData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GProviderManifestTriggerData', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GProviderManifestTriggerData', 'name'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, r'GProviderManifestTriggerData', 'description'),
              img: BuiltValueNullFieldError.checkNotNull(
                  img, r'GProviderManifestTriggerData', 'img'),
              color: BuiltValueNullFieldError.checkNotNull(
                  color, r'GProviderManifestTriggerData', 'color'),
              input: input.build(),
              output: output.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
        _$failedField = 'output';
        output.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GProviderManifestTriggerData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GBaseProviderData extends GBaseProviderData {
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

  factory _$GBaseProviderData(
          [void Function(GBaseProviderDataBuilder)? updates]) =>
      (new GBaseProviderDataBuilder()..update(updates))._build();

  _$GBaseProviderData._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.description,
      required this.img,
      required this.color,
      required this.visibility})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GBaseProviderData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GBaseProviderData', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'GBaseProviderData', 'name');
    BuiltValueNullFieldError.checkNotNull(
        description, r'GBaseProviderData', 'description');
    BuiltValueNullFieldError.checkNotNull(img, r'GBaseProviderData', 'img');
    BuiltValueNullFieldError.checkNotNull(color, r'GBaseProviderData', 'color');
    BuiltValueNullFieldError.checkNotNull(
        visibility, r'GBaseProviderData', 'visibility');
  }

  @override
  GBaseProviderData rebuild(void Function(GBaseProviderDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBaseProviderDataBuilder toBuilder() =>
      new GBaseProviderDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBaseProviderData &&
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
    return (newBuiltValueToStringHelper(r'GBaseProviderData')
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

class GBaseProviderDataBuilder
    implements Builder<GBaseProviderData, GBaseProviderDataBuilder> {
  _$GBaseProviderData? _$v;

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

  GBaseProviderDataBuilder() {
    GBaseProviderData._initializeBuilder(this);
  }

  GBaseProviderDataBuilder get _$this {
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
  void replace(GBaseProviderData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBaseProviderData;
  }

  @override
  void update(void Function(GBaseProviderDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBaseProviderData build() => _build();

  _$GBaseProviderData _build() {
    final _$result = _$v ??
        new _$GBaseProviderData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GBaseProviderData', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GBaseProviderData', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GBaseProviderData', 'name'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'GBaseProviderData', 'description'),
            img: BuiltValueNullFieldError.checkNotNull(
                img, r'GBaseProviderData', 'img'),
            color: BuiltValueNullFieldError.checkNotNull(
                color, r'GBaseProviderData', 'color'),
            visibility: BuiltValueNullFieldError.checkNotNull(
                visibility, r'GBaseProviderData', 'visibility'));
    replace(_$result);
    return _$result;
  }
}

class _$GProviderWithManifestData extends GProviderWithManifestData {
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
  @override
  final GProviderWithManifestData_manifest manifest;

  factory _$GProviderWithManifestData(
          [void Function(GProviderWithManifestDataBuilder)? updates]) =>
      (new GProviderWithManifestDataBuilder()..update(updates))._build();

  _$GProviderWithManifestData._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.description,
      required this.img,
      required this.color,
      required this.visibility,
      required this.manifest})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GProviderWithManifestData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GProviderWithManifestData', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GProviderWithManifestData', 'name');
    BuiltValueNullFieldError.checkNotNull(
        description, r'GProviderWithManifestData', 'description');
    BuiltValueNullFieldError.checkNotNull(
        img, r'GProviderWithManifestData', 'img');
    BuiltValueNullFieldError.checkNotNull(
        color, r'GProviderWithManifestData', 'color');
    BuiltValueNullFieldError.checkNotNull(
        visibility, r'GProviderWithManifestData', 'visibility');
    BuiltValueNullFieldError.checkNotNull(
        manifest, r'GProviderWithManifestData', 'manifest');
  }

  @override
  GProviderWithManifestData rebuild(
          void Function(GProviderWithManifestDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProviderWithManifestDataBuilder toBuilder() =>
      new GProviderWithManifestDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProviderWithManifestData &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        img == other.img &&
        color == other.color &&
        visibility == other.visibility &&
        manifest == other.manifest;
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
    _$hash = $jc(_$hash, manifest.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GProviderWithManifestData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('img', img)
          ..add('color', color)
          ..add('visibility', visibility)
          ..add('manifest', manifest))
        .toString();
  }
}

class GProviderWithManifestDataBuilder
    implements
        Builder<GProviderWithManifestData, GProviderWithManifestDataBuilder> {
  _$GProviderWithManifestData? _$v;

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

  GProviderWithManifestData_manifestBuilder? _manifest;
  GProviderWithManifestData_manifestBuilder get manifest =>
      _$this._manifest ??= new GProviderWithManifestData_manifestBuilder();
  set manifest(GProviderWithManifestData_manifestBuilder? manifest) =>
      _$this._manifest = manifest;

  GProviderWithManifestDataBuilder() {
    GProviderWithManifestData._initializeBuilder(this);
  }

  GProviderWithManifestDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _img = $v.img;
      _color = $v.color;
      _visibility = $v.visibility;
      _manifest = $v.manifest.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProviderWithManifestData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProviderWithManifestData;
  }

  @override
  void update(void Function(GProviderWithManifestDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GProviderWithManifestData build() => _build();

  _$GProviderWithManifestData _build() {
    _$GProviderWithManifestData _$result;
    try {
      _$result = _$v ??
          new _$GProviderWithManifestData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GProviderWithManifestData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GProviderWithManifestData', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GProviderWithManifestData', 'name'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, r'GProviderWithManifestData', 'description'),
              img: BuiltValueNullFieldError.checkNotNull(
                  img, r'GProviderWithManifestData', 'img'),
              color: BuiltValueNullFieldError.checkNotNull(
                  color, r'GProviderWithManifestData', 'color'),
              visibility: BuiltValueNullFieldError.checkNotNull(
                  visibility, r'GProviderWithManifestData', 'visibility'),
              manifest: manifest.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'manifest';
        manifest.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GProviderWithManifestData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GProviderWithManifestData_manifest
    extends GProviderWithManifestData_manifest {
  @override
  final String G__typename;
  @override
  final BuiltList<GProviderWithManifestData_manifest_actions> actions;
  @override
  final BuiltList<GProviderWithManifestData_manifest_triggers> triggers;

  factory _$GProviderWithManifestData_manifest(
          [void Function(GProviderWithManifestData_manifestBuilder)?
              updates]) =>
      (new GProviderWithManifestData_manifestBuilder()..update(updates))
          ._build();

  _$GProviderWithManifestData_manifest._(
      {required this.G__typename,
      required this.actions,
      required this.triggers})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GProviderWithManifestData_manifest', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        actions, r'GProviderWithManifestData_manifest', 'actions');
    BuiltValueNullFieldError.checkNotNull(
        triggers, r'GProviderWithManifestData_manifest', 'triggers');
  }

  @override
  GProviderWithManifestData_manifest rebuild(
          void Function(GProviderWithManifestData_manifestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProviderWithManifestData_manifestBuilder toBuilder() =>
      new GProviderWithManifestData_manifestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProviderWithManifestData_manifest &&
        G__typename == other.G__typename &&
        actions == other.actions &&
        triggers == other.triggers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, actions.hashCode);
    _$hash = $jc(_$hash, triggers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GProviderWithManifestData_manifest')
          ..add('G__typename', G__typename)
          ..add('actions', actions)
          ..add('triggers', triggers))
        .toString();
  }
}

class GProviderWithManifestData_manifestBuilder
    implements
        Builder<GProviderWithManifestData_manifest,
            GProviderWithManifestData_manifestBuilder> {
  _$GProviderWithManifestData_manifest? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GProviderWithManifestData_manifest_actions>? _actions;
  ListBuilder<GProviderWithManifestData_manifest_actions> get actions =>
      _$this._actions ??=
          new ListBuilder<GProviderWithManifestData_manifest_actions>();
  set actions(
          ListBuilder<GProviderWithManifestData_manifest_actions>? actions) =>
      _$this._actions = actions;

  ListBuilder<GProviderWithManifestData_manifest_triggers>? _triggers;
  ListBuilder<GProviderWithManifestData_manifest_triggers> get triggers =>
      _$this._triggers ??=
          new ListBuilder<GProviderWithManifestData_manifest_triggers>();
  set triggers(
          ListBuilder<GProviderWithManifestData_manifest_triggers>? triggers) =>
      _$this._triggers = triggers;

  GProviderWithManifestData_manifestBuilder() {
    GProviderWithManifestData_manifest._initializeBuilder(this);
  }

  GProviderWithManifestData_manifestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _actions = $v.actions.toBuilder();
      _triggers = $v.triggers.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProviderWithManifestData_manifest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProviderWithManifestData_manifest;
  }

  @override
  void update(
      void Function(GProviderWithManifestData_manifestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GProviderWithManifestData_manifest build() => _build();

  _$GProviderWithManifestData_manifest _build() {
    _$GProviderWithManifestData_manifest _$result;
    try {
      _$result = _$v ??
          new _$GProviderWithManifestData_manifest._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GProviderWithManifestData_manifest', 'G__typename'),
              actions: actions.build(),
              triggers: triggers.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'actions';
        actions.build();
        _$failedField = 'triggers';
        triggers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GProviderWithManifestData_manifest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GProviderWithManifestData_manifest_actions
    extends GProviderWithManifestData_manifest_actions {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String img;
  @override
  final String color;
  @override
  final _i2.GJSON input;
  @override
  final _i2.GJSON output;

  factory _$GProviderWithManifestData_manifest_actions(
          [void Function(GProviderWithManifestData_manifest_actionsBuilder)?
              updates]) =>
      (new GProviderWithManifestData_manifest_actionsBuilder()..update(updates))
          ._build();

  _$GProviderWithManifestData_manifest_actions._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.description,
      required this.img,
      required this.color,
      required this.input,
      required this.output})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GProviderWithManifestData_manifest_actions', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GProviderWithManifestData_manifest_actions', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GProviderWithManifestData_manifest_actions', 'name');
    BuiltValueNullFieldError.checkNotNull(description,
        r'GProviderWithManifestData_manifest_actions', 'description');
    BuiltValueNullFieldError.checkNotNull(
        img, r'GProviderWithManifestData_manifest_actions', 'img');
    BuiltValueNullFieldError.checkNotNull(
        color, r'GProviderWithManifestData_manifest_actions', 'color');
    BuiltValueNullFieldError.checkNotNull(
        input, r'GProviderWithManifestData_manifest_actions', 'input');
    BuiltValueNullFieldError.checkNotNull(
        output, r'GProviderWithManifestData_manifest_actions', 'output');
  }

  @override
  GProviderWithManifestData_manifest_actions rebuild(
          void Function(GProviderWithManifestData_manifest_actionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProviderWithManifestData_manifest_actionsBuilder toBuilder() =>
      new GProviderWithManifestData_manifest_actionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProviderWithManifestData_manifest_actions &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        img == other.img &&
        color == other.color &&
        input == other.input &&
        output == other.output;
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
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jc(_$hash, output.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GProviderWithManifestData_manifest_actions')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('img', img)
          ..add('color', color)
          ..add('input', input)
          ..add('output', output))
        .toString();
  }
}

class GProviderWithManifestData_manifest_actionsBuilder
    implements
        Builder<GProviderWithManifestData_manifest_actions,
            GProviderWithManifestData_manifest_actionsBuilder> {
  _$GProviderWithManifestData_manifest_actions? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

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

  _i2.GJSONBuilder? _input;
  _i2.GJSONBuilder get input => _$this._input ??= new _i2.GJSONBuilder();
  set input(_i2.GJSONBuilder? input) => _$this._input = input;

  _i2.GJSONBuilder? _output;
  _i2.GJSONBuilder get output => _$this._output ??= new _i2.GJSONBuilder();
  set output(_i2.GJSONBuilder? output) => _$this._output = output;

  GProviderWithManifestData_manifest_actionsBuilder() {
    GProviderWithManifestData_manifest_actions._initializeBuilder(this);
  }

  GProviderWithManifestData_manifest_actionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _img = $v.img;
      _color = $v.color;
      _input = $v.input.toBuilder();
      _output = $v.output.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProviderWithManifestData_manifest_actions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProviderWithManifestData_manifest_actions;
  }

  @override
  void update(
      void Function(GProviderWithManifestData_manifest_actionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GProviderWithManifestData_manifest_actions build() => _build();

  _$GProviderWithManifestData_manifest_actions _build() {
    _$GProviderWithManifestData_manifest_actions _$result;
    try {
      _$result = _$v ??
          new _$GProviderWithManifestData_manifest_actions._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GProviderWithManifestData_manifest_actions', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GProviderWithManifestData_manifest_actions', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GProviderWithManifestData_manifest_actions', 'name'),
              description: BuiltValueNullFieldError.checkNotNull(description,
                  r'GProviderWithManifestData_manifest_actions', 'description'),
              img: BuiltValueNullFieldError.checkNotNull(
                  img, r'GProviderWithManifestData_manifest_actions', 'img'),
              color: BuiltValueNullFieldError.checkNotNull(
                  color, r'GProviderWithManifestData_manifest_actions', 'color'),
              input: input.build(),
              output: output.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
        _$failedField = 'output';
        output.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GProviderWithManifestData_manifest_actions',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GProviderWithManifestData_manifest_triggers
    extends GProviderWithManifestData_manifest_triggers {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String img;
  @override
  final String color;
  @override
  final _i2.GJSON input;
  @override
  final _i2.GJSON output;

  factory _$GProviderWithManifestData_manifest_triggers(
          [void Function(GProviderWithManifestData_manifest_triggersBuilder)?
              updates]) =>
      (new GProviderWithManifestData_manifest_triggersBuilder()
            ..update(updates))
          ._build();

  _$GProviderWithManifestData_manifest_triggers._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.description,
      required this.img,
      required this.color,
      required this.input,
      required this.output})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GProviderWithManifestData_manifest_triggers', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GProviderWithManifestData_manifest_triggers', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GProviderWithManifestData_manifest_triggers', 'name');
    BuiltValueNullFieldError.checkNotNull(description,
        r'GProviderWithManifestData_manifest_triggers', 'description');
    BuiltValueNullFieldError.checkNotNull(
        img, r'GProviderWithManifestData_manifest_triggers', 'img');
    BuiltValueNullFieldError.checkNotNull(
        color, r'GProviderWithManifestData_manifest_triggers', 'color');
    BuiltValueNullFieldError.checkNotNull(
        input, r'GProviderWithManifestData_manifest_triggers', 'input');
    BuiltValueNullFieldError.checkNotNull(
        output, r'GProviderWithManifestData_manifest_triggers', 'output');
  }

  @override
  GProviderWithManifestData_manifest_triggers rebuild(
          void Function(GProviderWithManifestData_manifest_triggersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProviderWithManifestData_manifest_triggersBuilder toBuilder() =>
      new GProviderWithManifestData_manifest_triggersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProviderWithManifestData_manifest_triggers &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        img == other.img &&
        color == other.color &&
        input == other.input &&
        output == other.output;
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
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jc(_$hash, output.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GProviderWithManifestData_manifest_triggers')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('img', img)
          ..add('color', color)
          ..add('input', input)
          ..add('output', output))
        .toString();
  }
}

class GProviderWithManifestData_manifest_triggersBuilder
    implements
        Builder<GProviderWithManifestData_manifest_triggers,
            GProviderWithManifestData_manifest_triggersBuilder> {
  _$GProviderWithManifestData_manifest_triggers? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

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

  _i2.GJSONBuilder? _input;
  _i2.GJSONBuilder get input => _$this._input ??= new _i2.GJSONBuilder();
  set input(_i2.GJSONBuilder? input) => _$this._input = input;

  _i2.GJSONBuilder? _output;
  _i2.GJSONBuilder get output => _$this._output ??= new _i2.GJSONBuilder();
  set output(_i2.GJSONBuilder? output) => _$this._output = output;

  GProviderWithManifestData_manifest_triggersBuilder() {
    GProviderWithManifestData_manifest_triggers._initializeBuilder(this);
  }

  GProviderWithManifestData_manifest_triggersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _img = $v.img;
      _color = $v.color;
      _input = $v.input.toBuilder();
      _output = $v.output.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProviderWithManifestData_manifest_triggers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProviderWithManifestData_manifest_triggers;
  }

  @override
  void update(
      void Function(GProviderWithManifestData_manifest_triggersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GProviderWithManifestData_manifest_triggers build() => _build();

  _$GProviderWithManifestData_manifest_triggers _build() {
    _$GProviderWithManifestData_manifest_triggers _$result;
    try {
      _$result = _$v ??
          new _$GProviderWithManifestData_manifest_triggers._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GProviderWithManifestData_manifest_triggers',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GProviderWithManifestData_manifest_triggers', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GProviderWithManifestData_manifest_triggers', 'name'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description,
                  r'GProviderWithManifestData_manifest_triggers',
                  'description'),
              img: BuiltValueNullFieldError.checkNotNull(
                  img, r'GProviderWithManifestData_manifest_triggers', 'img'),
              color: BuiltValueNullFieldError.checkNotNull(
                  color, r'GProviderWithManifestData_manifest_triggers', 'color'),
              input: input.build(),
              output: output.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
        _$failedField = 'output';
        output.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GProviderWithManifestData_manifest_triggers',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
