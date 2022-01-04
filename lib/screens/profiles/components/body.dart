
import 'package:flutter/material.dart';
import 'package:food_recipe_app/screens/profiles/components/menu.dart';
import 'package:food_recipe_app/screens/profiles/components/myAccount.dart';
import 'package:food_recipe_app/screens/profiles/components/pic.dart';
import 'package:food_recipe_app/screens/splash/splash_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: "assets/icons/User_logo.svg",
            press: () => Navigator.pushNamed(context, MyAccountScreen.routeName),
          ),
          ProfileMenu(
            text: "Notifications",
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Settings",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Help Center",
            icon: "assets/icons/Question_mark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log_out.svg",
            press: () {
             Navigator.pushNamed(context, Splashscreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}