import 'package:flutter/material.dart';
import 'package:mobile/views/mainPage/pages/mainNavigation.dart';
import 'package:mobile/views/auth/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainNavigationPage(),
    );
  }
}
