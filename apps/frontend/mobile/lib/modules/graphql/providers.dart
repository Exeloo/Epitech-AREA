import 'package:mobile/modules/graphql/repository/auth_repository.dart';
import 'package:mobile/modules/graphql/repository/provider_repository.dart';
import 'package:mobile/modules/graphql/repository/user_repository.dart';
import 'package:provider/provider.dart';
import 'package:mobile/graphql/graphql_client.dart';
import 'package:provider/single_child_widget.dart';

class AppProvider {
  static List<SingleChildWidget> providers() {
    final client = GraphQlClient().client;

    return [
      Provider<AuthRepository>(
        create: (_) => AuthRepository(client: client),
      ),
      Provider<UserRepository>(
        create: (_) => UserRepository(client: client),
      ),
      Provider<ProviderRepository>(
        create: (_) => ProviderRepository(client: client),
      )
    ];
  }
}
