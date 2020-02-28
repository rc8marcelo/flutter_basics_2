import 'package:flutter/material.dart';
import 'package:session_02/screens/about_screen.dart';
import 'package:session_02/screens/home_screen.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
      case '/about':
        return MaterialPageRoute(
          builder: (_) => AboutScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(
              title: const Text('Screen Not Found'),
            ),
          ),
        );
    }
  }
}
