import 'package:flutter/widgets.dart';
import 'package:food_recipe_app/screens/cart/cart.dart';
import 'package:food_recipe_app/screens/complete_profile/complete_profile.dart';
import 'package:food_recipe_app/screens/details/details.dart';
import 'package:food_recipe_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:food_recipe_app/screens/home/home.dart';
import 'package:food_recipe_app/screens/login_success/login_success.dart';
import 'package:food_recipe_app/screens/otp/otp.dart';
import 'package:food_recipe_app/screens/profiles/components/myAccount.dart';
import 'package:food_recipe_app/screens/profiles/profile.dart';
import 'package:food_recipe_app/screens/signIn/sign_in.dart';
import 'package:food_recipe_app/screens/sign_up/sign_up.dart';
import 'package:food_recipe_app/screens/special_products/special_products.dart';
import 'package:food_recipe_app/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  Splashscreen.routeName: (context) => Splashscreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  SpecialProducts.routeName: (context) => SpecialProducts(),
  MyAccountScreen.routeName: (context) =>MyAccountScreen(),
};
