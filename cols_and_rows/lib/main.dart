import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              //this crossAlignment stretches the col or row to its entire height or width
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget>[
                Container(
                  // height: 100.0,
                  width:100.0,
                  color: Colors.lightBlueAccent,
                ),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.red,
                    ),
                    Container(
                      height: 100.0,
                      width:100.0,
                      color: Colors.pinkAccent,
                    )
                  ],
                ),
                Container(
                  // height: double.infinity,
                  width: 100.0,
                  color: Colors.amber,
                )
              ],
            )),
            ),
    );
  }
}
