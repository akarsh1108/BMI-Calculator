import 'package:flutter/material.dart';
import '../constant.dart';

class symbolGender extends StatelessWidget {
  symbolGender({@required this.icon, @required this.gender});
  final IconData icon;
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          gender,
          style: klabelTextFile,
        ),
      ],
    );
  }
}
