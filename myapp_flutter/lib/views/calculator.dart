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
  double sum = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          customText(
            "number",
            label: "Enter Number 1",
            controller: number,
          ),
          SizedBox(height: 20.0),
          CustomTextWidget("Number 1", label: 'Number 1', controller: number),
          SizedBox(height: 20.0),
          customText(
            "number",
            label: "Enter Number 2",
            controller: num,
          ),
          SizedBox(height: 20.0),
          CustomTextWidget(
            "Number 2",
            label: 'Number 2',
            controller: num,
          ),
          SizedBox(height: 20.0),
          // custombutton(label: "Sum", usernameController: num, ),
          ElevatedButton(
              onPressed: () {
                number.clear();
                num.clear();
                double a = double.parse(number.text);
                double b = double.parse(num.text);
                
                setState(() {
                  sum = a + b;
                });
              },
              child: Text('Calculate')),
          SizedBox(height: 20.0),

          customText("sum", label: 'Your sum: $sum')
        ],
      ),
    ));
  }
}
