import 'dart:developer';

import 'package:aether/graphql/__generated__/user.data.gql.dart';
import 'package:aether/graphql/__generated__/user.req.gql.dart';
import 'package:ferry/ferry.dart';

class UserRepository {
  late Client client;

  void updateClient(Client newClient) {
    client = newClient;
  }

  UserRepository({required this.client});

  Future<GregisterData?> register({
    required String email,
    required String password,
    required String username,
    required String firstName,
    required String lastName,
  }) async {
    final registerReq = GregisterReq((b) => b
      ..vars.data.email = email
      ..vars.data.password = password
      ..vars.data.username = username
      ..vars.data.firstName = firstName
      ..vars.data.lastName = lastName);

    try {
      final response = await client.request(registerReq).first;

      if (response.loading) {
        log('Loading...');
      } else if (response.hasErrors) {
        log('Errors: ${response.graphqlErrors}');
      } else {
        log('Response: ${response.data}');
      }

      return response.data;
    } catch (e) {
      log('Register error: $e');
      rethrow;
    }
  }

  Future<GgetMeData?> getMe({
    FetchPolicy fetchPolicy = FetchPolicy.CacheAndNetwork,
  }) async {
    final getMeReq = GgetMeReq(
      (b) => b..fetchPolicy = fetchPolicy,
    );

    try {
      final response = await client.request(getMeReq).first;

      if (response.loading) {
        log('Loading...');
      } else if (response.hasErrors) {
        log('Errors: ${response.graphqlErrors}');
      } else {
        log('Response: ${response.data}');
      }

      return response.data;
    } catch (e) {
      log('GetMe error: $e');
      rethrow;
    }
  }

  Future<GupdateMeData?> updateUser({
    required String email,
    required String username,
    required String firstName,
    required String lastName,
    String? description,
    String? pronoun,
  }) async {
    final updateUserReq = GupdateMeReq((b) => b
      ..vars.data.email = email
      ..vars.data.username = username
      ..vars.data.firstName = firstName
      ..vars.data.lastName = lastName
      ..vars.data.description = description
      ..vars.data.pronoun = pronoun);

    try {
      final response = await client.request(updateUserReq).first;

      if (response.loading) {
        log('Loading...');
      } else if (response.hasErrors) {
        log('Errors: ${response.graphqlErrors}');
      } else {
        log('Response: ${response.data}');
      }

      return response.data;
    } catch (e) {
      log('UpdateUser error: $e');
      rethrow;
    }
  }
}
