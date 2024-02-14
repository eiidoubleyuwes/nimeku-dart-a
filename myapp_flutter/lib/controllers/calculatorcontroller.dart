import 'package:get/state_manager.dart';

class calculatorcontroller extends GetxController{
  var sum = 0.0.obs;
  updateSum(double newSum){
    sum.value = newSum;
  }
  //To get the values of the individual numbers
  var number1 = 0.0.obs;
  var number2 = 0.0.obs;
  updateNumber1(double newNumber1){
    number1.value = newNumber1;
  }
  updateNumber2(double newNumber2) {
    number2.value = newNumber2;
  }
  //Session management for the name
  var name = "".obs;
  updateName(String newName){
    name.value = newName;
  }

}