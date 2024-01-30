import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            // Wrap the Column with a Center widget
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment
                  .center, // Align children horizontally center
              children: [
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
                Container(
                  height: 50.0,
                  width: 300.0,
                  padding: const EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        12.0), // Adjust the value to change the roundness of the border
                    color: Colors.white,
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(

                        image: NetworkImage(
                            'https://i.postimg.cc/wTfwyYZd/phone-call.png'),
                        // fit: BoxFit.contain,
                        width: 30,
                        height: 30,
                        color: Colors.teal,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '+91 9555144734',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Wible Town Standard Demo',
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50.0,
                  width: 300.0,
                  padding: const EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        12.0), // Adjust the value to change the roundness of the border
                    color: Colors.white,
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(

                        image: NetworkImage(
                            'https://i.postimg.cc/6QRm7Pt9/email.png'),
                        // fit: BoxFit.contain,
                        width: 30,
                        height: 30,
                        color: Colors.teal,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'yashshukla2003@gmail.com',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Wible Town Standard Demo',
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
