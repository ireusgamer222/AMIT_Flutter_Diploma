import 'dart:io';

// Third Assignment, a task about creating a class about animals with its details
void main() {
  Animal animal1 = Animal.lessDetails(name: "Lion",color:"Yellow",age:27,legs: 4);
  animal1.display();

  Animal animal2 = Animal(name:"Rabbit", color:"White",age:11,legs:4,producer:false,consumer:true,fly: false );
  animal2.display();

}

// The animal class
class Animal{
  String? name;
  String? color;
  int? age;
  int? legs;
  bool? producer;
  bool? consumer;
  bool? fly;


  // Constructors with a little difference
  Animal({this.name,this.color,this.age,this.legs,this.producer,this.consumer,this.fly});
  Animal.lessDetails({required this.name,required this.color,required this.age,required this.legs});


  // Function used to check whether the animal can fly or not
  void doesFly(){
    if(fly == true){
      print("This animal flys");
    }
    else{
      print("This animal doesn't fly");
    }
  }

  // Function used to check whether the animal can run fast or not
  void runFast(){
    if(this.age! >= 4){
      print("This animal runs fast");
    }
    else{
      print("This animal doesn't run fast");
    }
  }

  // Function used to tell that the animal does sleep sometimes
  void sleep(){
    print("This animal does sleep");
  }


  // Function used to display the information of the animals with considerations of not putting values into the variables of the object
  void display(){
    print("This name of the animal is ${this.name}");
    print("The color of the animal is ${this.color}");
    print("The age of the animal is ${this.age}");
    print("The number of legs of the animal is ${this.legs}");

    if(this.fly != null) {
      if (this.fly! == true) {
        print("This animal can fly");
      }
      else {
        print("This animal can't fly");
      }
    }
    else{
      print("It is unknown whether this animal fly or no");
    }

    if(this.consumer != null && this.producer != null) {
      if (this.consumer == true && this.producer == true) {
        print(
            "This animal consumes on other animals, plants and produce its own food from the sunlight");
      }
      else if (this.consumer == true) {
        print("This animals consumes on other animals and plants only");
      }
      else if (this.producer == true) {
        print("This animals produces its own food from the sunlight");
      }
      else {
        print("The food source of the animal is unknown");
      }
    }
    else{
      print("It is unknown whether this animal is a producer or consumer");
    }
  }

}