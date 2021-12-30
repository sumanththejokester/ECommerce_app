import 'package:flutter/material.dart';
import '../constants.dart';
import '../sizeConfig.dart';

class defaultButton extends StatelessWidget {
  const defaultButton({
    Key? key, this.text, this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getproportionalScreenheight(105),
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        primary: Colors.purple[200],
        backgroundColor: kPrimaryColor,
        ),
        onPressed: press as void Function(),
        child: Text(
          text!,
          style: TextStyle(
            fontSize: getproportionalScreenwidth(10),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}