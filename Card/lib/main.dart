import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  const CircleAvatar(
                    // backgroundColor: Colors.pink,
                    backgroundImage: AssetImage('images/yash.png'),
                    maxRadius: 70,
                    minRadius: 30,
                  ),
                  const Text(
                    'Yash Shukla',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Ananda',
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "FLUTTER DEVELOPER",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Wible Town Standard Demo',
                      fontSize: 20,

                    ),
                  ),
                   SizedBox(
                    height: 20,
                    width: 150.0,
                    child: Divider(
                      color: Colors.teal.shade200,
                    ),
                  ),//for horizontal line
                  Card(
                    color: Colors.white,
                    margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: const Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      title:
                      Text('+91 9555144734',
                      style: TextStyle(fontSize: 15, color: Colors.teal.shade900 ,fontFamily: 'Wible Town Standard Demo'),
                    ),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: const Icon(
                        Icons.mail,
                        color: Colors.teal,
                      ),
                      title:
                      Text('yashshukla2003@gmail.com',
                        style: TextStyle(fontSize: 15, color: Colors.teal.shade900 ,fontFamily: 'Wible Town Standard Demo'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ),
      ),
    );
  }
}
