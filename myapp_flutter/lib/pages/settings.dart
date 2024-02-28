import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp_flutter/configs/constants.dart';
import 'package:myapp_flutter/views/custombutton.dart';
import 'package:myapp_flutter/views/customtexts.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _darkModeEnabled = false;
  bool _notificationsEnabled = true;

  final damn = const Color(0xFFEC0023); // F1 Red

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(16.0),
      itemCount: 3, // Assuming only two SwitchListTile items
      itemBuilder: (context, index) {
        switch (index) {
          case 0:
            return SwitchListTile(
              title: customText(
                "Dark Mode", // Changed "Dark Mode" to "Dark Mode
                label: 'Dark Mode',
                fontWeight: FontWeight.bold,
                color: damn,
              ),
              value: _darkModeEnabled,
              onChanged: (value) {
                setState(() {
                  _darkModeEnabled = value;
                });
              },
            );
          case 1:
            return SwitchListTile(
              title: customText(
                "Notifications", // Changed "Notifications" to "Notifications
                label: 'Notifications',
                fontWeight: FontWeight.bold,
                color: damn,
              ),
              value: _notificationsEnabled,
              onChanged: (value) {
                setState(() {
                  _notificationsEnabled = value;
                });
              },
            );
          //Custom button to route back to the login page once clicked
          case 2:
            return custombutton(
                label: 'Log out', 
                labelColor: appWhiteColor,
                action: () => Get.toNamed("/login"));
          default:
            return const SizedBox(); // Handle potential out-of-bounds index
        }
      },
    );
  }
}
