import 'package:flutter/material.dart';
import 'package:myapp_flutter/configs/constants.dart';

class customText extends StatelessWidget {
  final FontWeight fontWeight;
  final String label;
  customText(
    String s, {
    super.key,
    required this.label,
    this.fontWeight = FontWeight.normal, required double fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(label,
        style: TextStyle(
          color: textcolorblack,
          fontSize: 18.0,
          fontWeight: fontWeight,
        ));
  }
}
