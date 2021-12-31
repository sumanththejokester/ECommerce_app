import 'package:flutter/material.dart';
import 'package:food_recipe_app/screens/login_success/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName='/login_success';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Center(child: Text('Login Success        ')),
      ),
      body: Body(),
    );
  }
}