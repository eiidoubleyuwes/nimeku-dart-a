import 'package:flutter/material.dart';
import 'package:myapp_flutter/views/custombutton.dart';
import 'package:myapp_flutter/views/customcontroller.dart';
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
    return  Scaffold(body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        customText("number", controller: number, label: "Enter Number 1"),
        SizedBox(height: 20.0),
        CustomTextWidget("Number 1", label: 'Number 1', controller: number ),
        SizedBox(height: 20.0),
        customText("number", controller: num, label: "Enter Number 2"),
        SizedBox(height: 20.0),
        CustomTextWidget("Number 2", label: 'Number 2' ,controller: num,),
        SizedBox(height: 20.0),
        // custombutton(label: "Sum", usernameController: num, ),
        ElevatedButton(onPressed: () {
          print('Button clicked');
        }, child: Text('Calculate')),
        SizedBox(height: 20.0),

        customText("sum", label: 'Your sum:')
        
      ],),
    ));
  }
}