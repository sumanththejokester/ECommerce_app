import 'package:flutter/material.dart';
import 'package:food_recipe_app/screens/splash/components/body.dart';
import 'package:food_recipe_app/sizeConfig.dart';

class Splashscreen extends StatelessWidget {
  static String routeName = '/spallash';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}