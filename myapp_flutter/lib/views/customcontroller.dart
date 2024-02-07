import 'package:flutter/material.dart';
import 'package:myapp_flutter/configs/constants.dart';

class CustomTextWidget extends StatelessWidget {
  final String? hint;
  final IconData? icon;
  final bool? hideText;
  const CustomTextWidget(
    String s, {
    super.key,
    required String label,
    this.hint,
    this.icon,
    this.hideText = false,
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
        suffixIcon: Icon(Icons.visibility_off),
      ),
      controller: TextEditingController(),
      obscureText: hideText!,
    );
  }
}
