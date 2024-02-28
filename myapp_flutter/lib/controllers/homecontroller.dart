import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectedPage = 0.obs;
  updateSelectedPage(int index) {
    selectedPage.value = index;
  }
}
