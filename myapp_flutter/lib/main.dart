import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:myapp_flutter/configs/constants.dart';
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
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //Created a widget for the text
        customText("Username", label: 'Username',),
        customText("Password", label: 'Password',),
        customText("Forgot password", label: 'Forgot password?')
      ],
    ),
    );
  }
}


  @override
  Widget build(BuildContext context) {
    return Text('Username', style: TextStyle(
      color: textcolorgrey,
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
    ));
  }

