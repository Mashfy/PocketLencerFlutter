import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors
// ignore_for_file: sized_box_for_whitespace
class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      child: Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                icon: Icon(Icons.home, color: Colors.white)),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cart');
                },
                icon: Icon(Icons.shopping_cart, color: Colors.white)),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/user');
                },
                icon: Icon(Icons.person, color: Colors.white))
          ],
        ),
      ),
    );
  }
}
