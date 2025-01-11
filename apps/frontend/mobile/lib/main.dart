import 'package:aether/modules/graphql/providers.dart';
import 'package:aether/views/auth/pages/main_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: AppProvider.providers(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainAuthPage(),
    );
  }
}
