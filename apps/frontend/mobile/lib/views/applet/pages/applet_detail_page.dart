import 'package:flutter/material.dart';
import 'package:mobile/graphql/__generated__/applet.data.gql.dart';
import 'package:mobile/modules/graphql/repository/applet_repository.dart';
import 'package:mobile/graphql/graphql_client.dart';

class AppletDetailPage extends StatefulWidget {
  final GgetAllAppletsData_getAllApplets applet;

  const AppletDetailPage({super.key, required this.applet});

  @override
  _AppletDetailPageState createState() => _AppletDetailPageState();
}

class _AppletDetailPageState extends State<AppletDetailPage> {
  late AppletRepository appletRepository;
  late Future<GgetAppletByIdData_getAppletById?> appletFuture;
  List<GgetAppletNodeByIdData_getAppletNodeById> nodes = [];

  @override
  void initState() {
    super.initState();
    final client = GraphQlClient().client;
    appletRepository = AppletRepository(client: client);
    appletFuture = appletRepository.getAppletById(widget.applet.id);
    fetchNodes(widget.applet.id);
  }
  
  Future<void> fetchNodes(int nodeId) async {
    final node = await appletRepository.getAppletNodeById(nodeId);
    if (node != null) {
      setState(() {
        nodes.add(node);
      });
      fetchNodes(node.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.applet.name),
      ),
      body: FutureBuilder<GgetAppletByIdData_getAppletById?>(
        future: appletFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData) {
            return const Center(child: Text('No data found.'));
          }

          final applet = snapshot.data!;

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    applet.name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'ID: ${applet.id}',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    applet.description ?? 'No description available',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Trigger Nodes:',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ...nodes.map((node) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Node ID: ${node.id}',
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              'Action ID: ${node.actionId}',
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              'Action Type: ${node.actionType}',
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            // Add more fields as needed
                          ],
                        ),
                      )),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}