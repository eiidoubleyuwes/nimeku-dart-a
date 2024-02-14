import 'package:flutter/material.dart';
import 'package:myapp_flutter/configs/constants.dart';

class CustomTextWidget extends StatelessWidget {
  final String? hint;
  final IconData? icon;
  final bool? hideText;
  final bool ispassword;
  final TextEditingController? controller;
  const CustomTextWidget(
    String s, {
    super.key,
    required String label,
    this.hint,
    this.icon,
    this.hideText = false,
    this.ispassword = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: primaryColor, width: 2.0),
        ),
        hintText: hint,
        prefixIcon: Icon(icon),
        suffixIcon: ispassword? Icon(Icons.visibility): Container(height: 10,width: 10,),
      ),
      controller: TextEditingController(),
      obscureText: hideText!,
    );
  }
}
