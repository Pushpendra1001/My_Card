// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/link.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(195, 230, 225, 225),
        // backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DottedBorder(
                  color: Colors.black,
                  borderType: BorderType.Circle,
                  dashPattern: [2, 0, 10, 12],
                  padding: EdgeInsets.all(4),
                  strokeWidth: 2,
                  child: Center(
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage(
                        'images/pushpendra_.jpg',
                      ),
                    ),
                  ),
                ),
                // contact details
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Pushpendra Baswal",
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.black,
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
                    color: Colors.black,
                    fontSize: 18,
                    letterSpacing: 5.5,
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 150,
                  child: Divider(
                    color: Color.fromARGB(255, 3, 3, 3),
                  ),
                ),
                Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Color.fromARGB(255, 67, 71, 71),
                      ),
                      title: Text(
                        "+9123456789",
                        style: TextStyle(
                            color: Color.fromARGB(255, 67, 71, 71),
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
                        color: Color.fromARGB(255, 67, 71, 71),
                      ),
                      title: Text(
                        "Pushpendra9122@gmail.com",
                        style: TextStyle(
                            color: Color.fromARGB(255, 67, 71, 71),
                            fontSize: 18,
                            fontFamily: 'SourceSansPro'),
                      ),
                    )),

                // Icons part start
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        FontAwesomeIcons.instagram,
                        color: Color.fromARGB(255, 208, 54, 105),
                        size: 42,
                      ),
                      Icon(
                        FontAwesomeIcons.linkedin,
                        color: Color.fromARGB(255, 48, 113, 166),
                        size: 42,
                      ),
                      IconButton(
                        icon: Icon(
                          FontAwesomeIcons.github,
                          size: 42,
                        ),
                        onPressed: () async {
                          var url =
                              Uri.parse("https://github.com/pushpendra1001");
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            // throw "Could not launch";
                          }
                        },
                      ),
                      Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue,
                        size: 42,
                      ),
                    ],
                  ),
                ),

                // i will change

                // i will change
              ],
            ),
          ),
        ),
      ),

      // functions start

      // function end
    );
  }
}
