import 'package:ferry/ferry.dart';
import 'package:mobile/graphql/__generated__/provider.req.gql.dart';
import 'package:mobile/graphql/__generated__/provider.data.gql.dart';

class ProviderRepository {
  final Client client;

  ProviderRepository({required this.client});

  Future<GgetAllProvidersData?> getAllProviders() async {
    final getAllProvidersReq = GgetAllProvidersReq((b) => b);

    try {
      final response = await client.request(getAllProvidersReq).first;

      if (response.loading) {
        print('Loading...');
      } else if (response.hasErrors) {
        print('Errors: ${response.graphqlErrors}');
      } else {
        print('Response: ${response.data}');
      }

      return response.data;
    } catch (e) {
      print('Login error : $e');
      rethrow;
    }
  }

  Future<GgetProviderByIdData?> getProviderById({required int Id}) async {
    final getProviderById = GgetProviderByIdReq((b) => b..vars.id = Id);

    try {
      final response = await client.request(getProviderById).first;

      if (response.loading) {
        print('Loading...');
      } else if (response.hasErrors) {
        print('Errors: ${response.graphqlErrors}');
      } else {
        print('Response: ${response.data}');
      }

      return response.data;
    } catch (e) {
      print('Login error : $e');
      rethrow;
    }
  }
}
