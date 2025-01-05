import 'dart:convert';
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
  GgetAppletByIdData_getAppletById? appletData;
  List<GgetAppletNodeByIdData_getAppletNodeById> nodes = [];
  bool isLoading = true;
  String? errorMessage;

  @override
  void initState() {
    super.initState();
    final client = GraphQlClient().client;
    appletRepository = AppletRepository(client: client);

    fetchAppletData();
  }

  Future<void> fetchAppletData() async {
    try {
      final data = await appletRepository.getAppletById(widget.applet.id);
      print('Fetched getAppletById: ${data?.toJson()}');
      setState(() {
        appletData = data;
        isLoading = false;
      });

      if (data != null) {
        for (var triggerNode in data.triggerNodes) {
          fetchNodes(triggerNode.id);
        }
      }
    } catch (error) {
      setState(() {
        errorMessage = error.toString();
        isLoading = false;
      });
    }
  }

  Future<void> fetchNodes(int nodeId) async {
    try {
      final node = await appletRepository.getAppletNodeById(nodeId);
      print('Fetched node: ${node?.toJson()}');
      if (node != null) {
        setState(() {
          nodes.add(node);
        });
        if (node.next.isNotEmpty) {
          for (var nextNode in node.next) {
            fetchNodes(nextNode.id);
          }
        }
      }
    } catch (error) {
      setState(() {
        errorMessage = error.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.applet.name),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : errorMessage != null
              ? Center(child: Text('Error: $errorMessage'))
              : appletData == null
                  ? const Center(child: Text('No data found.'))
                  : Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              jsonEncode(appletData!.toJson()),
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Fetched Nodes:',
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ...nodes.map((node) => Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Text(
                                    jsonEncode(node.toJson()),
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
    );
  }
}