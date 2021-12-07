import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pocket_lencer/screens/home/home_screen.dart';

// ignore_for_file: avoid_print
// ignore_for_file: no_duplicate_case_values
// ignore_for_file: prefer_const_constructors
class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('This is route: ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();

      case HomeScreen.routeName:
        return HomeScreen.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(title: Text('Error')),
      ),
    );
  }
}
