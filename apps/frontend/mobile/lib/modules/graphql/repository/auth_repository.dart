import 'dart:developer';

import 'package:aether/graphql/__generated__/auth.data.gql.dart';
import 'package:aether/graphql/__generated__/auth.req.gql.dart';
import 'package:ferry/ferry.dart';

class AuthRepository {
  final Client client;

  AuthRepository({required this.client});

  Future<GloginData?> login({
    required String email,
    required String password,
  }) async {
    final loginReq = GloginReq((b) => b
      ..vars.data.email = email
      ..vars.data.password = password);

    try {
      final response = await client.request(loginReq).first;

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
}
