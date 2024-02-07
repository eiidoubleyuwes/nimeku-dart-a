import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:myapp_flutter/configs/constants.dart';
import 'package:myapp_flutter/views/customcontroller.dart';
import 'package:myapp_flutter/views/customtexts.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
  TextEditingController textController = TextEditingController();

    return Scaffold(
        appBar: AppBar(
      title: Text('App ya mine'),
      centerTitle: true,
      backgroundColor: primaryColor,
      foregroundColor: appWhiteColor,
      titleTextStyle: TextStyle(
          color: headercolor,
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
      )
    ),
    body: Padding(
      padding: const EdgeInsets.all(100.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Created a widget for the text
          customText("Login Screen", label: 'Login Page', fontSize: 34.0 ,fontWeight: FontWeight.bold,),
          SizedBox(
              height: 50.0,
            ),

          customText("Username", label: 'Username', fontSize: 18.0,),
          CustomTextWidget("Username", label: 'Username',),
          SizedBox(
              height: 10.0,
            ),

          customText("Password", label: 'Password', fontSize: 18.0,),
          CustomTextWidget(
              "PASSWORD",
              label: 'password',
            ),
          SizedBox(
              height: 10.0,
            ),

          customText("Forgot password", label: 'Forgot password?', fontSize: 18.0,),
          SizedBox(
              height: 10.0,
            ),

          ElevatedButton(
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
              print('Button clicked');
            }, child: Text('Login'),
          )
        ],
      ),
    ),
    );
  }
}



