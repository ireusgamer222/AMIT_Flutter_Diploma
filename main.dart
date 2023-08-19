import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  var x ="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiY_BBq9EJopJ7s6xGctOMFLvDhY7LPCIesM18ezaj&s";
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    home :
    Scaffold(


      body:SingleChildScrollView(child: Center(

        child : Column(children: [
          Text("\n"),
          Container(

              width: 125,
              height: 150,
              child : CircleAvatar(
                radius: 48, // Image radius
                backgroundImage: NetworkImage(x.toString()),
              )
          ),



          Text("\n\n"),
          Text("Eleanor Pena",
            textScaleFactor: 2,
            style: TextStyle(fontWeight: FontWeight.bold),),
          Text("@eleanorpena"),
          Text("CXc424242424242\n"),

          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Text("1069 ",
                textScaleFactor: 2,
                style: TextStyle(fontWeight: FontWeight.bold),),
              Text("Followers"),
            ],
          ),

          Text("\n"),
          Container(
            color:Colors.black,
            height: 50,
            width: 150,
            padding: EdgeInsets.all(5),
            child:
            Center(
                child: Text("Edit Profile", textScaleFactor: 1,  style: TextStyle(color: Colors.white),)
            )
            ,),
          Column(
            children:
            [

              Text("\n"),
              Text("Eleanor pena is a crator of minimalistic x bolb" ,),
              Text("graphics and digital work",textAlign:TextAlign.right),
              Text("\nAritst/ Creative Director by Day #NFT minting@ with\n"),
              Text("FND NIGHT"),
            ],
          ),

          Text("\n"),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.snapchat),
              Icon(Icons.facebook),
              Icon(Icons.tiktok),
            ],
          ),
          Text("\n"),
          Container(
            color:Colors.blueGrey,
            height: 30,
            width: 120,
            padding: EdgeInsets.all(1),
            child:
            Center(
                child: Text("Joined May,2021", textScaleFactor: 1,  style: TextStyle(color: Colors.black),)
            )
            ,),



        ],


        ),


      ),


      ),

    ),
  )

  );

}



