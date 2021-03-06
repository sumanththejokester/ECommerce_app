import 'package:flutter/material.dart';
import 'package:food_recipe_app/screens/home/components/categories.dart';
import 'package:food_recipe_app/screens/home/components/discount_card.dart';
import 'package:food_recipe_app/screens/home/components/home_header.dart';
import 'package:food_recipe_app/screens/home/components/popular_product.dart';
import 'package:food_recipe_app/screens/home/components/special_offers.dart';
import 'package:food_recipe_app/sizeConfig.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            DiscountBanner(),
            Categories(),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}