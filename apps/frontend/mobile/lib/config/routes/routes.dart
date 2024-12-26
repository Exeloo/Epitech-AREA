import 'package:flutter/material.dart';
import 'package:mobile/views/home/pages/home.dart';

class AppRoutes {
  static const String home = '/home';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      home: (context) => HomePage(),
    };
  }
}
