void main() {
  //Dynamic variable to allow age to change from int to string
  dynamic age = 23;
  //To declare a late variable
  late dynamic name;
  //print age using string interpolation
  print("I am $age years old");
  //change age to string
  age = "Twenty three";
  print("I am $age years old");
  //print name
  name = "Baraka Mbugua";
  print("My name is $name");

}
