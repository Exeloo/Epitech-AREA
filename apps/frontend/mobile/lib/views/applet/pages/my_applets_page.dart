import 'package:flutter/material.dart';
import 'package:mobile/graphql/graphql_client.dart';
import 'package:mobile/graphql/__generated__/applet.data.gql.dart';
import 'package:mobile/views/home/widgets/applet_card.dart';
import 'package:mobile/modules/graphql/repository/applet_repository.dart';

class MyAppletsPage extends StatefulWidget {
  const MyAppletsPage({Key? key}) : super(key: key);

  @override
  _MyAppletsPageState createState() => _MyAppletsPageState();
}

class _MyAppletsPageState extends State<MyAppletsPage> {
  late AppletRepository appletRepository;
  late Future<List<GgetAllAppletsData_getAllApplets>?> appletsFuture;

  @override
  void initState() {
    super.initState();
    final client = GraphQlClient().client;
    appletRepository = AppletRepository(client: client);
    appletsFuture = appletRepository.getAllApplets();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Applets'),
      ),
      body: FutureBuilder<List<GgetAllAppletsData_getAllApplets>?>(
        future: appletsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No applets found.'));
          }

          final applets = snapshot.data!;

          return ListView.builder(
            itemCount: applets.length,
            itemBuilder: (context, index) {
              final applet = applets[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyCard(
                  backgroundColor: Colors.blue,
                  text: applet.name,
                ),
              );
            },
          );
        },
      ),
    );
  }
}