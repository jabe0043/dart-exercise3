import 'package:dart_exercise_3/Students.dart';
import 'dart:convert' as convert;


void main(){
String json = '''
[
  {"first":"Steve", "last":"Griffith", "email":"griffis@algonquincollege.com"},
  {"first":"Adesh", "last":"Shah", "email":"shaha@algonquincollege.com"},
  {"first":"Tony", "last":"Davidson", "email":"davidst@algonquincollege.com"},
  {"first":"Adam", "last":"Robillard", "email":"robilla@algonquincollege.com"}
]
''';


  List<dynamic> list = convert.jsonDecode(json);
  // print(list.runtimeType);


  List<Map<String, dynamic>> studentList = [];
  for (var person in list){
    studentList.add(person);
  }
  // print(studentList);
  // print(studentList.runtimeType);


  var test = Students(studentList);
  test.sort("first");
  test.output();
  test.plus({"first":"Jad", "last":"Jaber", "email":"jaber@algonquincollege.com"});
  test.output();
  test.remove("Jad");
}
