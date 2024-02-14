import 'package:flutter/material.dart';
import 'package:myapp_flutter/configs/constants.dart';

class custombutton extends StatelessWidget {
  const custombutton({
    super.key,
     required this.usernameController, required String label, 
    // ignore: non_constant_identifier_names
  });

  final TextEditingController usernameController;

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
        print('Button clicked ${usernameController.text}');
      },
      child: Text('Sum'),
    );
  }
}
