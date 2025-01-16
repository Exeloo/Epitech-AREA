import 'package:aether/graphql/graphql_client.dart';
import 'package:aether/modules/graphql/repository/applet_repository.dart';
import 'package:aether/modules/graphql/repository/auth_repository.dart';
import 'package:aether/modules/graphql/repository/provider_repository.dart';
import 'package:aether/modules/graphql/repository/user_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
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
      ),
      Provider<AppletRepository>(
        create: (_) => AppletRepository(client: client),
      )
    ];
  }

  static void updateRepositories(BuildContext context, GraphQlClient newClient) {
    final client = newClient.client;

    Provider.of<AuthRepository>(context, listen: false).updateClient(client);
    Provider.of<UserRepository>(context, listen: false).updateClient(client);
    Provider.of<ProviderRepository>(context, listen: false).updateClient(client);
    Provider.of<AppletRepository>(context, listen: false).updateClient(client);
  }
}