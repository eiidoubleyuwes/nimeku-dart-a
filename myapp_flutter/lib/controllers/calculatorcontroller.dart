import 'package:get/state_manager.dart';

class calculatorcontroller extends GetxController{
  var sum = 0.0.obs;
  updateSum(double newSum){
    sum.value = newSum;
  }

}