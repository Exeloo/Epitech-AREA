import 'package:aether/views/home/pages/home.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String home = '/home';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      home: (context) => const HomePage(),
    };
  }
}
