import 'package:flutter/material.dart';
import 'package:mobile/views/auth/pages/login.dart';
import 'package:mobile/views/auth/pages/main_auth.dart';
import 'package:mobile/views/home/pages/home.dart';
import 'package:mobile/views/mainPage/pages/main_navigation.dart';
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
    return MaterialApp(
      home: HomePage(),
    );
  }
}
