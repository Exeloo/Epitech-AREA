import 'package:ferry/ferry.dart';
import 'package:mobile/graphql/__generated__/auth.req.gql.dart';
import 'package:mobile/graphql/__generated__/auth.data.gql.dart';

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