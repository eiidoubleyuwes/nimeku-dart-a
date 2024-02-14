import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:myapp_flutter/controllers/calculatorcontroller.dart';
import 'package:myapp_flutter/views/custombutton.dart';
import 'package:myapp_flutter/views/customcontroller.dart';
import 'package:myapp_flutter/views/customtexts.dart';


class Calculator extends StatelessWidget {
  TextEditingController number = TextEditingController();
  TextEditingController num = TextEditingController();
  calculatorcontroller calculatorController = Get.put(calculatorcontroller());
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
                double a = double.tryParse(number.text) ?? 0.0;
                double b = double.tryParse(num.text) ?? 0.0;

                double s = a + b;
                //Send the value to Sum in the other class
                calculatorController.updateSum(s);

                num.text = "";
                number.text = "";
              },
              child: Text('Calculate')),
           SizedBox(height: 20.0),

          Obx(()=> customText("sum", label: "Your sum: ${calculatorController.sum}")),
        ],
      ),
    ));
  }
}
