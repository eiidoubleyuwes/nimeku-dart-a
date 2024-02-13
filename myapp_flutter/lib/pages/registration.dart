import 'package:flutter/material.dart';
import 'package:myapp_flutter/configs/constants.dart';
import 'package:myapp_flutter/views/customtexts.dart';

class RegistrationPage extends StatelessWidget {
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
            fontSize: 34.0,
            fontWeight: FontWeight.bold,
          )),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(100.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Created a widget for the text
                Image.asset(
                  "assets/images/mylogo.png",
                  height: 200,
                  width: 300,
                ),
                customText(
                  "Registration Screen",
                  label: 'Registration Page',
                  fontSize: FontSize(24.0),
                  fontWeight: FontWeight.bold,
                ),
                customText(
                  "Username",
                  label: 'Username',
                  fontSize: FontSize(18.0),
                ),
                CustomTextWidget(
                  "Username",
                  label: 'Username',
                  hint: "Phone number/Email",
                  icon: Icons.person,
                ),
                SizedBox(
                  height: 10.0,
                ),

                customText(
                  "Password",
                  label: 'Password',
                  fontSize: FontSize(18.0),
                ),
                CustomTextWidget(
                  "PASSWORD",
                  label: 'password',
                  hint: "Password",
                  icon: Icons.lock,
                  hideText: true,
                  ispassword: true,
                ),
                SizedBox(
                  height: 10.0,
                ),

                customText(
                  "Forgot password",
                  label: 'Forgot password?',
                  fontSize: FontSize(18.0),
                ),
                SizedBox(
                  height: 10.0,
                ),

                custombutton(usernameController: usernameController),
                 SizedBox(
                  height: 10.0,
                ),

                //Button to navigate to the registration page
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationPage()));
                  },
                  child: Text('Register for an account'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}