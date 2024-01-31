import 'package:lab_methods/lab_methods.dart' as lab_methods;

void main() {
  print(add(15, 10));
  print(multiply(45, 67));
  print(divide(9, 9));
  print(subtract(45, 8));
  print(calculate(45, b: 8, c: 9, d: 10));
  print(celsiusToFahrenheit(45, 256));
  print(requiredParameter(45, b: 8));
}

add(a, b) => a + b;
int multiply(int a, int b) => a * b;
int divide(int a, int b) {
  return a ~/ b;
}

int subtract(int a, [int? b = 0]) { //Optional parameters
  if (b == null) {
    return -a;
  } else {
    return a - b;
  }
}

int calculate(int a, {int? b = 0, int? c = 0, int? d = 0}) { //Named parameters
  return a + b! - c! * d!;
}

int celsiusToFahrenheit(dynamic celsius, [dynamic fahrenheit = 256]) { //Default parameters
  if (fahrenheit == null) {
    return (celsius + fahrenheit).round();
  } else {
    return (fahrenheit - celsius);
  }

}
int requiredParameter(int a, {required int b}) { // Required parameters
  return a + b;
}
