import 'package:flutter/material.dart';
import 'package:food_recipe_app/components/product.dart';
import 'package:food_recipe_app/screens/special_products/components/body.dart';

class SpecialProducts extends StatelessWidget {
  static String routeName = "/splproducts";
  const SpecialProducts({ Key? key }) : super(key: key);

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
            "Special Products",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
class SplProducts{
  final Product2 product2;
  final int numOfItem;
  SplProducts({required this.product2, required this.numOfItem});
}
List<SplProducts> demoCarts2 = [
  SplProducts(product2: demoProducts2[0], numOfItem: 2),
  SplProducts(product2: demoProducts2[1], numOfItem: 1),
  SplProducts(product2: demoProducts2[2], numOfItem: 1),
  SplProducts(product2: demoProducts2[3], numOfItem: 1),
  SplProducts(product2: demoProducts2[4], numOfItem: 1),
  SplProducts(product2: demoProducts2[5], numOfItem: 1),
];