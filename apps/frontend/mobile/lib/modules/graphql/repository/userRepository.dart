import 'package:ferry/ferry.dart';
import 'package:mobile/graphql/__generated__/user.req.gql.dart';
import 'package:mobile/graphql/__generated__/user.data.gql.dart';

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
