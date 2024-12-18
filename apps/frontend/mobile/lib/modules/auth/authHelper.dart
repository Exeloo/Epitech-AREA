import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mobile/graphql/__generated__/auth.data.gql.dart';

class AuthHelper {
  late dynamic response;
  final storage = const FlutterSecureStorage();
  
  

  Future<String?> getAuthToken(response) async {
    try {
      String? authToken = await storage.read(key: "auth_token");

      return authToken;
    } catch (e) {
      print("Failed to get token : $e");
    }
    return null;
  }

  Future<void> handleLogin(GloginData? loginReponse) async {
    if (response != null && response.login?.token != null) {
      try {
        await storage.write(key: "auth_token", value: response.login.token);
      } on Exception catch (e) {
        throw Exception("Failed to store token: ${e.toString()}");
      }
    } else {
      throw Exception("No token found in the response.");
    }
  }
}
