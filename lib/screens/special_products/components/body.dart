import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_recipe_app/screens/cart/components/cart_card.dart';
import 'package:food_recipe_app/sizeConfig.dart';
import 'package:food_recipe_app/screens/special_products/special_products.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
        itemCount: demoCarts2.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child:
              SingleChildScrollView(child: CartCard2(cart: demoCarts2[index])),
        ),
      ),
    );
  }
}
