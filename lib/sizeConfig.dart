import 'package:flutter/material.dart';

class sizeConfig{
  static late MediaQueryData _mediaQueryData;
  static late double screenwidth;
  static late double screenheight;
  static double? defaultsize;
  static Orientation? orientation;

  void init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    screenheight = _mediaQueryData.size.width;
    screenwidth = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

double getproportionalScreenheight(double inputheight){
  double screenheight = sizeConfig.screenheight;
  return (inputheight/812.0) * screenheight;
}
double getproportionalScreenwidth(double inputwidth){
  double screenwidth = sizeConfig.screenwidth;
  return (inputwidth/375.0) * screenwidth;
}