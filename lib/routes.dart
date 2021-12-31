import 'package:flutter/widgets.dart';
import 'package:food_recipe_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:food_recipe_app/screens/signIn/sign_in.dart';
import 'package:food_recipe_app/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes ={
  Splashscreen.routeName: (context)=>Splashscreen(),
  SignInScreen.routeName: (context)=>SignInScreen(),
  ForgotPasswordScreen.routeName: (context)=>ForgotPasswordScreen(),
};