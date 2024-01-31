import 'package:flutter/material.dart';
import 'package:lab_flutter/configs/constants.dart';

class customText extends StatelessWidget {
  final String label;
  customText(
    String s, {
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Text(label,
        style: TextStyle(
          color: textcolorblack,
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ));
  }
}
