import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:lab_flutter/configs/constants.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('My first app'),
      centerTitle: true,
      backgroundColor: primaryColor,
    ));
  }
}
