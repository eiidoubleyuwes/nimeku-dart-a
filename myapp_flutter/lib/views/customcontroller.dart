import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String? hint;
  const CustomTextWidget(
    String s, {
    super.key,
    required String label,
    this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: hint,
        prefixIcon: Icon(Icons.person),
      ),
      controller: TextEditingController(),
    );
  }
}
