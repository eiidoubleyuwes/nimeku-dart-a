void main() {
  //Dynamic variable to allow age to change from int to string
  dynamic age = 23;
  //To declare a late variable
  late dynamic name;
  //print age using string interpolation
  print('I am $age years old');
  //change age to string
  age = 'Twenty three';
  print('I am $age years old');
  //print name
  name = 'Baraka Mbugua';
  print('My name is $name');
  //Null variable
  dynamic admNo;
  print('My admission number is $admNo');
  //using collections
  var ages = [23, 24, 25, 26, 27];
  ages.forEach((e) {
    print(e);
  }); //Using a for each loop to print the elements
  //other for form of for statement
  for (int age in ages) {
    print(age);
  }
  //To compute sum of ages(sum is compunded because its in a for loop)
  int sum = 0;
  for (int age in ages) {
    sum += age;
    print('The sum of the ages is $sum');
  }
  //To compute the average of the ages
  double average = sum / ages.length;
  print('The average of the ages is $average');
  //To add an element to the list
  ages.add(45);
  //to delete an element from the list
  ages.remove(45);
  //to add multiple elements to the list
  ages.addAll([45, 46, 47, 48, 49]);
  //to sort the list
  ages.sort();
  //to sort the list in descending order
  ages.sort((a, b) => b.compareTo(a));
  //to reverse the list
  ages.reversed;
  print(ages);
  //to print the list
  print(ages);
  //Using maps to store data
  var student = {
    'name': 'Baraka Mbugua',
    'age': 23,
    'admission': '21-2084',
    'course': 'Bsc. Computer Science',
    'YOG': '2025'
  };
  //to print elements in a map
  var jina = student['name'];
  var miaka = student['age'];
  var number = student['admission'];
  print(
      'My name is $jina and I am $miaka years old , I am also adm-no $number'); //This way is outdated
  //To print the new way
  print(
      'My name is ${student['name']} and I am ${student['age']} years old , I am also adm-no ${student['admission']}');
  //and even cooler way using for each loop
  student.forEach((key, value) {
    print('$key : $value');
  });
  //How to add additional values to a MAP
  student.addEntries(
      {'Hobbies': 'Formula 1'} as Iterable<MapEntry<String, Object>>);
  print(student);
}
