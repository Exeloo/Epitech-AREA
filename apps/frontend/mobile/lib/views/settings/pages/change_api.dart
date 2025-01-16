import 'package:aether/config/api_config.dart'; // Pour la gestion de l'API
import 'package:aether/graphql/graphql_client.dart';
import 'package:flutter/material.dart';

import '../../../config/colors.dart';
import '../../../modules/graphql/providers.dart';
import '../../auth/pages/main_auth.dart';

class ChangeApiPage extends StatefulWidget {
  const ChangeApiPage({super.key});

  @override
  State<ChangeApiPage> createState() => _ChangeApiPageState();
}

class _ChangeApiPageState extends State<ChangeApiPage> {
  final TextEditingController _apiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _apiController,
              decoration: const InputDecoration(
                labelText: "New API URL",
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.textPrimary),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.textPrimary),
                ),
              ),
              style: const TextStyle(color: AppColors.textPrimary),
              ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final newApiUrl = _apiController.text;
                AppConfig.setApiUrl(newApiUrl);

                final newGraphQlClient = GraphQlClient();
                newGraphQlClient.refreshClient();

                AppProvider.updateRepositories(context, newGraphQlClient);

                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const MainAuthPage()),
                        (Route<dynamic> route) => false);
              },
              child: const Text("Save API URL"),
            ),
          ],
        ),
      ),
    );
  }
}