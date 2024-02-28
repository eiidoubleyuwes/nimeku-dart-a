import 'package:flutter/material.dart';
import 'package:myapp_flutter/configs/constants.dart';

class customText extends StatelessWidget {
  final String label;
  final FontWeight? fontWeight;
  final FontSize? fontSize;
  final TextEditingController? controller;
  final Color? color;
  customText(
    String s, {
    super.key,
    required this.label,
    this.fontWeight,
    this.fontSize, 
    this.controller,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(label,
        style: TextStyle(
          color: textcolorblack,
          fontSize: fontSize?.size,
          fontWeight: fontWeight,
        ));
  }
}

class FontSize {
  final double size;
  const FontSize(this.size);
}
