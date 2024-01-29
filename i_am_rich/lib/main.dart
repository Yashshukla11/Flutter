import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor:const Color(0xFFC9F0EF),
        appBar: AppBar(
          title:const Text("I am Rich"),
          centerTitle: true,
          backgroundColor:const Color(0xFFC7BB10),

        ),
        body:const Center(
          child: Image(
            image: AssetImage('images/SG.png'),
          ),
        ),
        ),
      ),
  );
}
