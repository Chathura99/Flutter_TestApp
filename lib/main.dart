// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hello",
      home: MyHomePage(),
      // theme: ThemeData(primarySwatch: Colors.amber),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      // SafeArea(
      return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Student Management",
            ),
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                //call method in here
              },
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  //call method
                },
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  //call method
                },
              ),
            ],
            flexibleSpace: Image.asset(
              "assets/me1.png",
              fit: BoxFit.cover,
            ),
            bottom: PreferredSize(
              child: TabBar(
                
                tabs: [
                  Tab(
                    icon: Icon(Icons.add),
                    // text: "New",
                    ),
                  Tab(
                    icon: Icon(Icons.remove),
                    // text: "Remove",
                    ),
                  Tab(
                    icon: Icon(Icons.update),
                    // text: "Update",
                    ),
                  
                ], 
              ),
              
              preferredSize: Size.fromHeight(50),
            ),
          //  backgroundColor: Colors.pinkAccent,
          ),
          body: Padding(
            padding: EdgeInsets.all(5.0),
            child: TabBarView(
              children: [
                //tab 1
                tab1(),
                //tab 2
                Container(
                  color: Color.fromARGB(96, 218, 216, 216),
                  padding: EdgeInsets.symmetric(vertical: 20,horizontal: 50),
                  child:Text(
                    "Remove Student"
                  )
                ),
                //tab 3
                Text("Update Student Details"),
              ],
            ),
          ),
        ),
      );
    // );
  }
}

Widget tab1() {
  return Column(
    // mainAxisAlignment: MainAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    // crossAxisAlignment: CrossAxisAlignment.end,
    children: [
    Text("Add new Student"),
    Text("List All"),
    Text("Show Detail"),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      IconButton(
        icon: Icon(
          Icons.facebook,
          color:Colors.blue,
          ),
          onPressed: () {
            //call method
          },
      ),
      IconButton(
        icon: Icon(
          Icons.youtube_searched_for,
          color:Colors.red,
          ),
          onPressed: () {
            //call method
          },
      ),
      IconButton(
        icon: Icon(
          Icons.whatsapp,
          color:Colors.green,
          ),
          onPressed: () {
            //call method
          },
      ),
    ],
    ),
    ],
  );
}

// learning outcome

//stl -> StatelessWidget 
//actions: [] -> widget array
//child -> only one widget
//IconButton
//Safearea ->without curve
//add image -> add to folder after that add to pubspec.yaml

// Padding(
//     padding: EdgeInsets.all(16.0),
//     child: Image.asset("assets/me1.png"),
// ),

// bottom -> Tabbar
//add TabBarView after Appbar

//Column