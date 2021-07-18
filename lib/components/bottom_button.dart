import 'package:flutter/material.dart';
import '../constant.dart';

class Bottombutton extends StatelessWidget {
  Bottombutton({@required this.onTap, @required this.buttonTitle});
  final Function onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: klargebuttonFile,
          ),
        ),
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        height: kbottomContainerHeight,
        color: kbottomContainerColor,
      ),
    );
  }
}
