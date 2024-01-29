import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: const Color(0xFFFFEAA7),
      body: const Center(
        child: Image(
          image: AssetImage('images/img.png'),
        ),
      ),
      appBar: AppBar(
        title:const Center(child: Text("I Am Poor")),
        backgroundColor: const Color(0xFFFF6868),
      ),
    ),
  ));
}
