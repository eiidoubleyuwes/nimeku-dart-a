import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:myapp_flutter/utils/routes.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: "/", // Change the initial route to /login
    debugShowCheckedModeBanner: false,
    getPages: Routes.routes,  // Add the routes
  ));
}







