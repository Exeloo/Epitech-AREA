import 'dart:developer';

import 'package:ferry/ferry.dart';
import 'package:mobile/graphql/__generated__/provider.data.gql.dart';
import 'package:mobile/graphql/__generated__/provider.req.gql.dart';

class ProviderRepository {
  final Client client;

  ProviderRepository({required this.client});

  Future<GgetAllProvidersData?> getAllProviders() async {
    final getAllProvidersReq = GgetAllProvidersReq((b) => b);

    try {
      final response = await client.request(getAllProvidersReq).first;

      if (response.loading) {
        log('Loading...');
      } else if (response.hasErrors) {
        log('Errors: ${response.graphqlErrors}');
      } else {
        log('Response: ${response.data}');
      }

      return response.data;
    } catch (e) {
      log('Login error : $e');
      rethrow;
    }
  }

  Future<GgetProviderByIdData?> getProviderById({required int id}) async {
    final getProviderById = GgetProviderByIdReq((b) => b..vars.id = id);

    try {
      final response = await client.request(getProviderById).first;
      if (response.loading) {
        log('Loading...');
      } else if (response.hasErrors) {
        log('Errors: ${response.linkException}');
      } else {
        log('Response: ${response.data}');
      }

      return response.data;
    } catch (e) {
      log('Login error : $e');
      rethrow;
    }
  }
}
