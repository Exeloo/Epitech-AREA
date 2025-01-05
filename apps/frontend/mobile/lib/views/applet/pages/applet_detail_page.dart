import 'package:flutter/material.dart';
import 'package:mobile/graphql/__generated__/applet.data.gql.dart';

class AppletDetailPage extends StatelessWidget {
  final GgetAllAppletsData_getAllApplets applet;

  const AppletDetailPage({super.key, required this.applet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(applet.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
              applet.description ?? 'No description available',
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}