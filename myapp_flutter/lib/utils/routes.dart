import 'package:get/get.dart';
import 'package:myapp_flutter/pages/calender.dart';
import 'package:myapp_flutter/pages/dashboard.dart';
import 'package:myapp_flutter/pages/login.dart';
import 'package:myapp_flutter/pages/registration.dart';

class Routes {
  static var routes = [
    GetPage(name: "/", page: () => Login()),// First screen is represented by the / route meaning the root of the app.
    GetPage(name: "/login", page: () => Login()),
    GetPage(name: "/registration", page: () => RegistrationPage()),
    GetPage(name: "/home", page: () => Dashboard()),
    GetPage(name: "/Calender", page: () => CalendarPage())
  ];
}
