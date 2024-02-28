import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp_flutter/configs/constants.dart';
import 'package:myapp_flutter/controllers/homecontroller.dart';
import 'package:myapp_flutter/pages/calender.dart';
import 'package:myapp_flutter/pages/news.dart';
import 'package:myapp_flutter/pages/settings.dart';

HomeController homeController = Get.put(HomeController());

var pages = [ 
  newsPage(),
  //Space for the calender view of all the races and track details
  CalendarPage(),
  //Text("Settings"),
  SettingsPage(),
];

class Dashboard extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
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
      body:  
         Obx(() => pages[homeController.selectedPage.value]) ,
          // F1 News Section
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: appWhiteColor,
        color: primaryColor,
        items: [
          Icon(Icons.home),
          Icon(Icons.calendar_month),
          Icon(Icons.settings),
        ],
        onTap: (index) {
          homeController.updateSelectedPage(index);
        },
      ),
    );
  }
}
