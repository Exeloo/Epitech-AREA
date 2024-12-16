import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:mobile/requests/__generated__/schema.schema.gql.dart'
    show
        GAppletSubscribeInput,
        GAuthPasswordInput,
        GAuthRefreshTokenInput,
        GDateTime,
        GJSON,
        GProviderCreateInput,
        GProviderVisibility,
        GUserCreateInput,
        GUserRegisterInput;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GAppletSubscribeInput,
  GAuthPasswordInput,
  GAuthRefreshTokenInput,
  GDateTime,
  GJSON,
  GProviderCreateInput,
  GProviderVisibility,
  GUserCreateInput,
  GUserRegisterInput,
])
final Serializers serializers = _serializersBuilder.build();
