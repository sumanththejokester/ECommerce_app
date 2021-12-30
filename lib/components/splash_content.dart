import 'package:flutter/material.dart';

import '../constants.dart';
import '../sizeConfig.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          'APP',
          style: TextStyle(
            fontSize: getproportionalScreenwidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(text!,textAlign: TextAlign.center,),
        Spacer(flex: 2),
        Image.asset(
          image!,
          height: getproportionalScreenheight(500),
          width: getproportionalScreenwidth(250),
        ),
      ],
    );
  }
}