import 'package:flutter/material.dart';
import 'package:food_recipe_app/routes.dart';
import 'package:food_recipe_app/screens/splash/splash_screen.dart';

import 'theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter demo',
      theme: theme(),
      //home: Splashscreen(),
      initialRoute: Splashscreen.routeName,
      routes: routes,
    );
  }
}

