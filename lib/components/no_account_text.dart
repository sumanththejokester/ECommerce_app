import 'package:flutter/material.dart';
import 'package:food_recipe_app/constants.dart';
import 'package:food_recipe_app/screens/sign_up/sign_up.dart';
import 'package:food_recipe_app/sizeConfig.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.01),
        Text(
          "Don't have an account?",
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
            onTap: () => Navigator.pushNamed(
                context, SignUpScreen.routeName),
            child: Text(
              'Sign Up',
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(16),
                  color: kPrimaryColor),
            ))
      ],
    );
  }
}
