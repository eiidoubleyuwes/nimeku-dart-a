import 'package:flutter/material.dart';
import 'package:myapp_flutter/configs/constants.dart';
import 'package:myapp_flutter/pages/dashboard.dart';
import 'package:myapp_flutter/views/customcontroller.dart';
import 'package:myapp_flutter/views/customtexts.dart';

class custombutton extends StatelessWidget {
  final VoidCallback action;
  final String label;
  final Color? labelColor;
  const custombutton({
    super.key,
    required this.label,
    required this.action, 
    this.labelColor,
    // ignore: non_constant_identifier_names
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: appWhiteColor,
        disabledForegroundColor: appWhiteColor,
        elevation: 5.0,
        shadowColor: appWhiteColor,
        padding: EdgeInsets.all(20.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onPressed: () {
        action();
      },
      child: customText(
        label,
        label: label,
      ),
    );
  }
}
