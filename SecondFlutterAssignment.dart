import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  var x ="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiY_BBq9EJopJ7s6xGctOMFLvDhY7LPCIesM18ezaj&s";
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    home :
    Scaffold(
    body: SingleChildScrollView(child: SafeArea(
        child: Column(children: [

          Container(
            height: 245,
            width: double.infinity,
            color: Colors.red,
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [ CircleAvatar(
              radius: 48, // Image radius
              backgroundImage: NetworkImage(x.toString())
              ),
                Text("\nHello Mohamed!\n"),
                Container(
                  margin: EdgeInsets.only(right: 5,left: 5),
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  width: double.infinity,
                  height: 40,
                  child: TextField(
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                      hintText: "What do you want today?",
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                )
              
            ],) ,
          ),
        Text("\n"),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Container(
                padding:EdgeInsets.all(10),
                decoration: BoxDecoration(color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                  BoxShadow(
                  color: Colors.black,
                  blurRadius: 4, // Shadow position
                  ),
              ],
              ),

                height: 100,
                width: 100,
                child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(Icons.medical_information_outlined),
                  Text("\nAppoinents"),
                ],),

              ),

              Container(
                padding:EdgeInsets.all(10),
                decoration: BoxDecoration(color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 4, // Shadow position
                    ),
                  ],
                ),
                height: 100,
                width: 100,
                child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(Icons.medical_information_outlined),
                  Text("\nMedicines"),
                ],),

              ),

              Container(
               decoration: BoxDecoration(color: Colors.lightBlueAccent,
                   borderRadius: BorderRadius.circular(20),
                 boxShadow: [
                   BoxShadow(
                     color: Colors.black,
                     blurRadius: 4, // Shadow position
                   ),
                 ],),
                padding:EdgeInsets.all(10),

                height: 100,
                width: 100,
                child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(Icons.medical_services),
                  Text("\nReports"),
                ],),

              ),

            ],),
          Text("\n\n"),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(
                padding:EdgeInsets.all(10),
                margin: EdgeInsets.only(right: 30),
                decoration: BoxDecoration(color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 4, // Shadow position
                    ),
                  ],),
                height: 100,
                width: 100,
                child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(Icons.info_outline_rounded),
                  Text("\nBillings"),
                ],),

              ),

              Container(
                padding:EdgeInsets.all(10),
                decoration: BoxDecoration(color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 4, // Shadow position
                    ),
                  ],),
                height: 100,
                width: 100,
                child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(Icons.info_outline_rounded),
                  Text("\nMessages"),
                ],),

              ),
            ],),
            Text("\n"),
            Container(
              width: 200,
              height: 50,
              padding: EdgeInsets.all(10),
              color: Colors.blue,
              child: Center(child: Text("Log out", style: TextStyle(color: Colors.white,fontSize: 20),),),
            )

        ],
        ),
    ),

  )
      ),
  )
  );

}



