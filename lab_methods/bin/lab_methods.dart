import 'package:lab_methods/lab_methods.dart' as lab_methods;

void main() {
  print(add(15, 10));
  print(multiply(45, 67));
  print(divide(9, 9));
  print(subtract(45 , 8));
}

add(a, b) => a + b;
int multiply(int a, int b) => a * b;
int divide(int a, int b) {
  return a ~/ b;
}
int subtract(int a ,[int? b = 0]){
  if (b == null) {
    return -a;
  }
  else {
    return a - b;
  }
}
