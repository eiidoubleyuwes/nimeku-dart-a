import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp_flutter/configs/constants.dart';
import 'package:myapp_flutter/pages/registration.dart';
import 'package:myapp_flutter/views/custombutton.dart';
import 'package:myapp_flutter/views/customcontroller.dart';
import 'package:myapp_flutter/views/customtexts.dart';

const adminUsername = 'admin';
const adminPassword = 'admin';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
          title: Text('Formula Dart'),
          centerTitle: true,
          backgroundColor: primaryColor,
          foregroundColor: appWhiteColor,
        automaticallyImplyLeading: false,
          titleTextStyle: TextStyle(
            color: headercolor,
            fontSize: 34.0,
            fontWeight: FontWeight.bold,
          )),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Created a widget for the text
                Image.asset(
                  "assets/images/applogo.png",
                  height: 200,
                  width: 300,
                ),
                customText(
                  "Login Screen",
                  label: 'Login Page',
                  fontSize: FontSize(24.0),
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 10.0,
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
                  controller: usernameController,
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
                  controller: passwordController,
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

                custombutton(
                    label: 'Login',
                    labelColor: appWhiteColor,
                    action: () {
                      if (usernameController.text == adminUsername &&
                          passwordController.text == adminPassword) {
                        Get.toNamed("/home"); // Redirect to dashboard area
                      } else {
                        setState(() {
                          // Highlight text fields in red
                          usernameController.text = ""; // Clear username field
                          passwordController.text = ""; // Clear password field
                          usernameController.selection =
                              TextSelection.fromPosition(TextPosition(
                                  offset:
                                      0)); // Place cursor at the beginning of username field
                          passwordController.selection =
                              TextSelection.fromPosition(TextPosition(
                                  offset:
                                      0)); // Place cursor at the beginning of password field
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Invalid username or password"),
                            backgroundColor: primaryColor,
                          ),
                        );
                      }
                    }),

                SizedBox(
                  height: 10.0,
                ),

                //Button to navigate to the registration page
                custombutton(
                  label: 'Register',
                  action: () => Get.toNamed("/registration"),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
