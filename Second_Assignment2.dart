import 'dart:io';

void main() {
  //Second Assignment
  // Enter a program that asks the users for names to add into a list and then display the list. If he/her entered 0, the list will be display.

  list_of_names();
}


void list_of_names(){
  // The function used for the Assignment.

  List <String>? names;
  String user_input = "";
  String final1 = "";


  // Asking the user for the names that he wants to enter to the list.
  while(user_input != "0"){
    print("Please Enter a name to add into the list, or Enter 0 to exist");
    user_input = stdin.readLineSync()!;
    if(user_input != "0"){
      final1 += user_input + ",";
    }
    print("---------------------------------------------------");
  }


  if(final1.isNotEmpty) {
    names = final1.split(",");

    for (int i = 0; i < names.length; i++) {
      print(names[i]);
    }

    print("---------------------------------------------------");

    for(var i in names){
      print(i);
    }

    print("---------------------------------------------------");
    print(final1.length);
  }
}

