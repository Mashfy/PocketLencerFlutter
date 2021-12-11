import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pocket_lencer/blocs/cart/cart_bloc.dart';
import 'package:pocket_lencer/blocs/wishlist/wishlist_bloc.dart';
import 'package:pocket_lencer/config/app_router.dart';
import 'package:pocket_lencer/screens/screens.dart';
import 'package:firebase_core/firebase_core.dart';

import 'config/theme.dart';

// ignore_for_file: prefer_const_constructors
// ignore_for_file: sized_box_for_whitespace
// ignore_for_file: use_key_in_widget_constructors
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CartBloc()..add(CartStarted())),
        BlocProvider(create: (_) => WishlistBloc()..add(StartWishlist())),
      ],
      child: MaterialApp(
        title: 'Zero to unicorn',
        theme: theme(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: SplashScreen.routeName,
      ),
    );
  }
}
