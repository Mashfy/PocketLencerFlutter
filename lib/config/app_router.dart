import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pocket_lencer/models/category_model.dart';
import 'package:pocket_lencer/models/models.dart';
import 'package:pocket_lencer/screens/home/home_screen.dart';
import 'package:pocket_lencer/screens/screens.dart';

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
      case SplashScreen.routeName:
        return SplashScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case ProductScreen.routeName:
        return ProductScreen.route(product: settings.arguments as Product);
      case WishListScreen.routeName:
        return WishListScreen.route();
      case CatalogScreen.routeName:
        return CatalogScreen.route(category: settings.arguments as Category);

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
