import 'dart:io';

import 'package:untitled2/untitled2.dart' as untitled2;

void main(List<String> arguments) {

  // First Assignment


  // How to declare a variable in dart ? (1st question)
  // When creating a variable, you first need to determine its data type, set a name for the variable, and then initialize it with a value.

  // Examples
  String Variable1 = "Hello World"; // Here the (String) is the data type, (Variable1) is the name, ("Hello World") is the value.
  int Variable2 = 9; //Here the (int) is the data type, (Variable2) is the name, (9) is the value.


  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


  // Can i declare a variable that can be null? (2nd question)
  // Yes you can, by putting a (?) between the data type and the name of the variable, thus creating a variable with a value of null.
  // For example:
  int? Null_Variable;
  print(Null_Variable); // As seen here the value of the variable is null.


  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


  //How can i convert a variable from one type to another in Dart ? (Third Question)
  //By casting, for example, if you want to convert a integer data type to string, you can use ( .toString() ).
  int Changing_DataType = 9;
  String result = Changing_DataType.toString(); // NOTE: if you cannot do assign an int data type to a string data type without first casting the int to be a string datatype
  print(result.runtimeType);
  print(result);


  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


  // Create a program that contains a list of users data (a map of each user) and print each user data. (Fourth Question)
  //First declaring the variable

  Map<String, Map> Users_Data = {
    "User1":{ "Name":"Mohamed",
      "Age":18,
      "Subjects":["Math","Science","English"] },

    "User2":{ "Name":"Ahmed",
      "Age":20,
      "Subjects":["Math","Science","Arabic","English"] },

    "User3": { "Name":"Mostafa",
      "Age":22,
      "Subjects": ["Math","Arabic","English","Mechanics"] }
  };

  // Printing Each user's data:sss
  Users_Data.forEach( (key, value) {
    print("The data of $key is:");
    value.forEach( (key, value) {print("$key is: $value");
    });
    print("------------------------------------------------------------");
  });

}