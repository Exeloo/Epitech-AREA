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
  bool isLoading = true;
  String? errorMessage;

  Color? themeColor;

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
      setState(() {
        appletData = data;
        isLoading = false;

        if (data?.triggerNodes.isNotEmpty == true &&
            data!.triggerNodes.first.provider?.color != null) {
          themeColor = Color(
            int.parse('0xFF${data.triggerNodes.first.provider!.color.substring(1)}'),
          );
        } else {
          themeColor = Colors.deepPurple;
        }
      });
    } catch (error) {
      setState(() {
        errorMessage = error.toString();
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.applet.name),
        backgroundColor: themeColor ?? Colors.deepPurple,
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : errorMessage != null
              ? Center(child: Text('Error: $errorMessage'))
              : appletData == null
                  ? const Center(child: Text('No data found.'))
                  : Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            themeColor ?? Colors.deepPurple,
                            Colors.black,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: SingleChildScrollView(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 40,
                                        backgroundColor: Colors.white,
                                        child: Icon(Icons.bolt,
                                            size: 50, color: themeColor ?? Colors.deepPurple),
                                      ),
                                      const SizedBox(height: 16),
                                      Text(
                                        appletData!.name,
                                        style: const TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        appletData!.description ?? 'No description available',
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.white70,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 24),
                                  _buildSectionTitle('Triggers', Icons.flash_on),
                                  ...appletData!.triggerNodes.map(
                                    (node) => _buildNodeCard(node),
                                  ),
                                  const SizedBox(height: 24),
                                  _buildSectionTitle('Actions', Icons.run_circle),
                                  if (appletData!.triggerNodes.isNotEmpty)
                                    ...appletData!.triggerNodes
                                        .expand((node) => node.next)
                                        .map((actionNode) => _buildActionCard(
                                            actionNode, appletData!.triggerNodes.first.provider))
                                        .toList(),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
    );
  }

  Widget _buildSectionTitle(String title, IconData icon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.white),
        const SizedBox(width: 8),
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildNodeCard(GgetAppletByIdData_getAppletById_triggerNodes node) {
    final provider = node.provider;
    final providerColor = provider?.color != null
        ? Color(int.parse('0xFF${provider!.color.substring(1)}'))
        : Colors.grey;

    return Card(
      color: providerColor.withOpacity(0.7),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          '${node.actionType} - ${node.actionId}',
          style: const TextStyle(color: Colors.white),
        ),
        subtitle: provider != null
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Provider: ${provider.name}', style: const TextStyle(color: Colors.white)),
                  Text('Description: ${provider.description}', style: const TextStyle(color: Colors.white70)),
                ],
              )
            : const SizedBox.shrink(),
      ),
    );
  }

  Widget _buildActionCard(GgetAppletByIdData_getAppletById_triggerNodes_next actionNode,
      GgetAppletByIdData_getAppletById_triggerNodes_provider? provider) {
    final providerColor = provider?.color != null
        ? Color(int.parse('0xFF${provider!.color.substring(1)}'))
        : Colors.grey;

    return Card(
      color: providerColor.withOpacity(0.7),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          '${actionNode.actionType} - ${actionNode.actionId}',
          style: const TextStyle(color: Colors.white),
        ),
        subtitle: provider != null
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Provider: ${provider.name}', style: const TextStyle(color: Colors.white)),
                  Text('Description: ${provider.description}', style: const TextStyle(color: Colors.white70)),
                ],
              )
            : const SizedBox.shrink(),
      ),
    );
  }
}
