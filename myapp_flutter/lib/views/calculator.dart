import 'package:flutter/material.dart';
import 'package:myapp_flutter/views/custombutton.dart';
import 'package:myapp_flutter/views/customtexts.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController number = TextEditingController();
  TextEditingController num = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: Column(children: [
      customText("number", controller: number, label: "Enter Number 1"),
      customText("number", controller: number, label: "Enter Number 2"),
      custombutton(label: "Sum", usernameController: num, ),
    ],));
  }
}