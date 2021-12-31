import 'package:flutter/material.dart';
import 'package:food_recipe_app/screens/otp/components/body.dart';
import 'package:food_recipe_app/sizeConfig.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verification"),
      ),
      body: Body(),
    );
  }
}