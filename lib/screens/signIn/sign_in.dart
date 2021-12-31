import 'package:flutter/material.dart';
import 'package:food_recipe_app/screens/signIn/components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = '/sign_in';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Sign In             ')),
      ),
      body: Body(),
    );
  }
}
