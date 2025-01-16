import 'dart:developer';

import 'package:aether/graphql/__generated__/provider.data.gql.dart';
import 'package:aether/graphql/__generated__/provider.req.gql.dart';
import 'package:ferry/ferry.dart';

class ProviderRepository {
  late Client client;

  ProviderRepository({required this.client});

  void updateClient(Client newClient) {
    client = newClient;
  }

  Future<GgetAllProvidersData?> getAllProviders({
    FetchPolicy fetchPolicy = FetchPolicy.CacheAndNetwork,
  }) async {
    final getAllProvidersReq =
        GgetAllProvidersReq((b) => b..fetchPolicy = fetchPolicy);

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

  Future<GgetProviderByIdData?> getProviderById({
    required int id,
    FetchPolicy fetchPolicy = FetchPolicy.CacheAndNetwork,
  }) async {
    final getProviderById = GgetProviderByIdReq(
      (b) => b
        ..vars.id = id
        ..fetchPolicy = fetchPolicy,
    );

    try {
      final response = await client.request(getProviderById).first;

      if (response.loading) {
        log('Loading...');
      } else if (response.hasErrors) {
        log('Errors: ${response.graphqlErrors}');
      } else {
        log('Response: ${response.data}');
      }

      return response.data;
    } catch (e) {
      log('Error in getProviderById: $e');
      rethrow;
    }
  }

  Future<GgetProviderOAuthStateData?> getProviderOAuthState({
    required int id,
    FetchPolicy fetchPolicy = FetchPolicy.CacheAndNetwork,
  }) async {
    final getProviderById = GgetProviderOAuthStateReq(
      (b) => b
        ..vars.id = id
        ..fetchPolicy = fetchPolicy,
    );

    try {
      final response = await client.request(getProviderById).first;

      if (response.loading) {
        log('Loading...');
      } else if (response.hasErrors) {
        log('Errors: ${response.graphqlErrors}');
      } else {
        log('Response: ${response.data}');
      }

      return response.data;
    } catch (e) {
      log('Error in getProviderById: $e');
      rethrow;
    }
  }
}
