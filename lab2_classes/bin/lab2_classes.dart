import 'package:lab2_classes/lab2_classes.dart' as lab2_classes;

void main() {
  Example ex = Example(1, 2);
  print(ex.a);
}

class Example {
  late int a;
  late int b;
  //First constructor example
  Example(int a, int b) {
    this.a = a;
    this.b = b;
  }
}
class Example2 {
  late int a;
  late int b;
  //Second constructor example
  Example2(this.a, this.b);
}
