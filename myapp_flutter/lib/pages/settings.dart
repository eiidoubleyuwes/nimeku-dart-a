import 'package:flutter/material.dart';
import 'package:myapp_flutter/configs/constants.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _darkModeEnabled = false;
  bool _notificationsEnabled = true;
  double _fontSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formula Dart'),
          centerTitle: true,
          backgroundColor: primaryColor,
          foregroundColor: appWhiteColor,
          titleTextStyle: TextStyle(
            color: headercolor,
            fontSize: 34.0,
            fontWeight: FontWeight.bold,
          )),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          SwitchListTile(
            title: Text('Dark Mode'),
            value: _darkModeEnabled,
            onChanged: (value) {
              setState(() {
                _darkModeEnabled = value;
              });
            },
          ),
          SwitchListTile(
            title: Text('Notifications'),
            value: _notificationsEnabled,
            onChanged: (value) {
              setState(() {
                _notificationsEnabled = value;
              });
            },
          ),
          Slider(
            value: _fontSize,
            min: 12.0,
            max: 24.0,
            divisions: 6,
            onChanged: (value) {
              setState(() {
                _fontSize = value;
              });
            },
            label: 'Font Size: $_fontSize',
          ),
        ],
      ),
    );
  }
}
