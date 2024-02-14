import 'package:flutter/material.dart';
import 'package:myapp_flutter/configs/constants.dart';

class custombutton extends StatelessWidget {
  final TextEditingController? controller;
  const custombutton({
    super.key,
    String? label,
    this.controller, 
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
        //Anonymous function ie function with no name
        print('Button clicked');
      },
      child: Text('Sum'),
    );
  }
}
