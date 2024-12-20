import 'package:flutter/material.dart';
import 'package:mobile/views/auth/pages/login.dart';
import 'package:mobile/views/auth/pages/mainAuth.dart';
import 'package:mobile/views/mainPage/pages/mainNavigation.dart';
import 'package:mobile/modules/graphql/providers.dart';
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
  const MyApp({Key? key}) : super(key: key);

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainAuthPage(),
    );
  }
}
