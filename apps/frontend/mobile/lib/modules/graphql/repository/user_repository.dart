import 'dart:developer';

import 'package:ferry/ferry.dart';
import 'package:mobile/graphql/__generated__/user.data.gql.dart';
import 'package:mobile/graphql/__generated__/user.req.gql.dart';

class UserRepository {
  final Client client;

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

  Future<GgetMeData?> getMe() async {
    final getMeReq = GgetMeReq();

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
}