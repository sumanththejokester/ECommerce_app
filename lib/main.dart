import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_recipe_app/constants.dart';
import 'package:food_recipe_app/routes.dart';
import 'package:food_recipe_app/screens/splash/splash_screen.dart';

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

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Muli',
    appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
        iconTheme: IconThemeData(
            color: Colors
                .black), //(textTheme: TextTheme(headline6: TextStyle(color: Color(0xFF888888),fontSize: 18))),
        titleTextStyle: TextStyle(
          fontSize: 18,
          color: Color(0xFF888888),
        )),
    textTheme: TextTheme(
        bodyText1: TextStyle(color: kTextColor),
        bodyText2: TextStyle(color: kTextColor)),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
