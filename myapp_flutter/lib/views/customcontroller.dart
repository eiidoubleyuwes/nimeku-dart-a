import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String? hint;
  final IconData? icon;
  const CustomTextWidget(
    String s, {
    super.key,
    required String label,
    this.hint,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: hint,
        prefixIcon: Icon(icon),
      ),
      controller: TextEditingController(),
    );
  }
}
