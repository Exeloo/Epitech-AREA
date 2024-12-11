import 'package:flutter/material.dart';
import 'package:mobile/widgets/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color(0xff1B1B1B),
      body: const SizedBox.expand(),
      bottomNavigationBar: const CustomNavigationBar(),
    ));
  }
}
