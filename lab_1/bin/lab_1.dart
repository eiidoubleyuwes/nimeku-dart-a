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
  //Null variable
  dynamic? adm_no;
  print("My admission number is $adm_no");
  //using collections
  var ages = [23, 24, 25, 26, 27];
  ages.forEach((element) { print(element); }); //Using a for each loop to print the elements
  //other for form of for statement
  for(int age in ages){
    print(age);
  }

}
