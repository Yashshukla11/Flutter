import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        backgroundColor: const Color(0xFFFFEDED),
        body: const Center(
          child: Image(
          image: AssetImage('images/img.png'),
          ),
        ),
        appBar: AppBar(
          title:const Center(child: Text("I Am Poor")),
          backgroundColor:const Color(0xFF900C3F),
          ),
        ),
    );
  }
}
