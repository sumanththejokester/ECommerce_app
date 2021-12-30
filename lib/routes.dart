import 'package:flutter/widgets.dart';
import 'package:food_recipe_app/screens/splash/signIn/sign_in.dart';
import 'package:food_recipe_app/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes ={
  Splashscreen.routeName: (context)=>Splashscreen(),
  SignInScreen.routeName: (context)=>SignInScreen(),
};