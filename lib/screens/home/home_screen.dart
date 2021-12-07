import 'package:flutter/material.dart';
import 'package:pocket_lencer/widgets/widgets.dart';

// ignore_for_file: prefer_const_constructors
// ignore_for_file: sized_box_for_whitespace
// ignore_for_file: use_key_in_widget_constructors
class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Pocket Lencer'),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
