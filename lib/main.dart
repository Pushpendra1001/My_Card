// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage(
                      'images/pushpendra.jpg',
                    ),
                  ),
                ),
                Text(
                  "Pushpendra Baswal",
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.white,
                    fontFamily: "Pacifico",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    color: Colors.teal.shade100,
                    fontSize: 18,
                    letterSpacing: 5.5,
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 150,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      title: Text(
                        "+9123456789",
                        style: TextStyle(
                            color: Colors.teal.shade600,
                            fontSize: 18,
                            fontFamily: 'SourceSansPro'),
                      ),
                    )),
                Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.teal,
                      ),
                      title: Text(
                        "Pushpendra9122@gmail.com",
                        style: TextStyle(
                            color: Colors.teal.shade600,
                            fontSize: 18,
                            fontFamily: 'SourceSansPro'),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
