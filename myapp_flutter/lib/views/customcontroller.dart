import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget(String s, {
    super.key, required String label,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: TextEditingController(),
    );
  }
}