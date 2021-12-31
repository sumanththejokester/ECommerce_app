import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_recipe_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:food_recipe_app/screens/splash/components/body.dart';
import 'package:food_recipe_app/components/custom_svg_icon.dart';
import 'package:food_recipe_app/components/default_button.dart';
import 'package:food_recipe_app/components/form_error.dart';
import 'package:food_recipe_app/components/socal_card.dart';
import 'package:food_recipe_app/constants.dart';
import 'package:food_recipe_app/screens/signIn/components/sign_form.dart';
import 'package:food_recipe_app/sizeConfig.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign in with your email and password  \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard(
                      icon: "assets/icons/Google_logo.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/Facebook_logo.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/Twitter_logo.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NoAccountText extends StatelessWidget {
  const NoAccountText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
            onTap: () => Navigator.popAndPushNamed(
                context, ForgotPasswordScreen.routeName),
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
