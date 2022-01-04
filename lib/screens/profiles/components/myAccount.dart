import 'package:flutter/material.dart';
import 'package:food_recipe_app/components/custom_svg_icon.dart';
import 'package:food_recipe_app/components/default_button.dart';
import 'package:food_recipe_app/components/form_error.dart';
import 'package:food_recipe_app/constants.dart';
import 'package:food_recipe_app/screens/complete_profile/components/complete_profile_form.dart';
import 'package:food_recipe_app/screens/profiles/profile.dart';
import 'package:food_recipe_app/sizeConfig.dart';

class MyAccountScreen extends StatelessWidget {
  static String routeName = "/myaccount";
  const MyAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "My Account",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(40),),
          buildFirstNameFormField(),
          SizedBox(height: getProportionateScreenHeight(40)),
          buildLastNameFormField(),
          SizedBox(height: getProportionateScreenHeight(40)),
          buildPhoneNumberFormField(),
          SizedBox(height: getProportionateScreenHeight(40)),
          buildAddressFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(50)),
          DefaultButton(
            text: "Save Info",
            press: () {
                Navigator.pushNamed(context, ProfileScreen.routeName);
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue,
      decoration: InputDecoration(
        labelText: "Address",
        hintText: address,
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:
            CustomSurffixIcon(svgIcon: "assets/icons/Location_point_logo.svg"),
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => phoneNumber = newValue,
      decoration: InputDecoration(
        labelText: "Phone Number",
        hintText: phoneNumber,
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Phone_logo.svg"),
      ),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue,
      onChanged: (value) => lastName = value,
      decoration: InputDecoration(
        labelText: "Last Name",
        hintText: lastName,
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User_logo.svg"),
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue,
      decoration: InputDecoration(
        labelText: "First Name",
        hintText: firstName,
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User_logo.svg"),
      ),
    );
  }
}
