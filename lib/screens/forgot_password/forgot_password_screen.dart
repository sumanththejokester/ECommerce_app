import 'package:flutter/material.dart';
import 'package:food_recipe_app/screens/forgot_password/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = '/forgot_password';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Forgot Password         ')),),
        body: Body(),
    );
  }
}