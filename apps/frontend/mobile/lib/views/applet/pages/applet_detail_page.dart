import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:mobile/graphql/__generated__/applet.data.gql.dart';
import 'package:mobile/modules/graphql/repository/applet_repository.dart';
import 'package:mobile/graphql/graphql_client.dart';

class AppletDetailPage extends StatefulWidget {
  final GgetAllAppletsData_getAllApplets applet;

  const AppletDetailPage({
    super.key,
    required this.applet,
  });

  @override
  _AppletDetailPageState createState() => _AppletDetailPageState();
}

class _AppletDetailPageState extends State<AppletDetailPage> {
  late AppletRepository appletRepository;
  GgetAppletByIdData_getAppletById? appletData;
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
      log('Fetched getAppletById: ${data?.toJson()}');
      setState(() {
        appletData = data;
        isLoading = false;
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
      ),
      body: Builder(
        builder: (context) {
          if (isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (errorMessage != null) {
            return Center(child: Text('Error: $errorMessage'));
          } else if (appletData == null) {
            return const Center(child: Text('No data found.'));
          }
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Text(
                jsonEncode(appletData!.toJson()),
                style: const TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          );
        },
      ),
    );
  }
}
