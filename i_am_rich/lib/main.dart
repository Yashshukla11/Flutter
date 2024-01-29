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
        body: const Center(
          child: Image(
            image: NetworkImage('https://i.postimg.cc/qBCWnjNP/68747470733a2f2f692e706f7374696d672e63632f64317256374662422f6c6f676f2e706e67.png'),
          ),
        ),
        ),
      ),
  );
}
