import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Ask Me Anything',
            style: TextStyle(
              color: Colors.amber,
            ),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.amber,
      body: const QuestionPage(),
    ),
  ));
}

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: TextButton(
              onPressed: (){
                setState(() {
                  num=Random().nextInt(5)+1;
                });
              },
              child: Image.asset('images/ball$num.png'),
            ),
          ),
        )
      ],
    );
  }
}
