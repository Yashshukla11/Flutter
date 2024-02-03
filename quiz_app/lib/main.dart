import 'package:flutter/material.dart';
import 'quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(const Quizz());

class Quizz extends StatelessWidget {
  const Quizz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Quizpage(),
          ),
        ),
      ),
    );
  }
}

class Quizpage extends StatefulWidget {
  const Quizpage({Key? key}) : super(key: key);

  @override
  State<Quizpage> createState() => _QuizpageState();
}

class _QuizpageState extends State<Quizpage> {
  QuizBrain quizBrain = QuizBrain(); // Instantiate QuizBrain here
  List<Widget> score = [];
  int total = 0;
  late bool correctAnswer;
  String? currentQuestion; // Initialize with null
  bool quizStarted = false; // Variable to track if quiz has started

  Map<String, dynamic> gotQuestionAndAnswer() {
    Map<String, dynamic> questionAnswer = quizBrain.getQuestionAndAnswer();
    correctAnswer = questionAnswer['questionAnswer'];
    currentQuestion =
        questionAnswer['questionText']; // Store the current question text
    return {
      'questionText': currentQuestion,
      'correctAnswer': correctAnswer,
    };
  }

  void check(bool userAnswer) {
    if (userAnswer == correctAnswer) {
      ++total;
      setState(() {
        score.add(
          const Icon(
            Icons.check,
            color: Colors.green,
          ),
        );
      });
    } else {
      setState(() {
        score.add(
          const Icon(
            Icons.close,
            color: Colors.red,
          ),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (!quizStarted) // Display start button if quiz has not started
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 300),
                // Add margin here
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    backgroundColor: Colors.amber,
                    // Change to your desired color
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        vertical: 18, horizontal: 18),
                  ),
                  child: const Text(
                    'Start the quiz',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      quizStarted = true; // Set quizStarted to true
                      gotQuestionAndAnswer(); // Retrieve the first question and answer
                    });
                  },
                ),
              ),
            ),
          ),
        if (quizStarted) // Display quiz content if quiz has started
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      // Check if currentQuestion is not null
                      TextSpan(
                        text: currentQuestion,
                        style: const TextStyle(
                          fontSize: 25.0,
                          color: Colors.amber,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        if (quizStarted) // Display buttons if quiz has started
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                setState(() {
                  check(true);

                  quizBrain.nextQuestion(); // Call nextQuestion
                  gotQuestionAndAnswer(); // Retrieve new question and answer
                  if (quizBrain.endcheck() == false) {
                    Alert(
                      context: context,
                      title: 'Finished',
                      desc: 'Total Score: $total',
                    ).show();
                    total = 0;
                    score = [];
                    quizStarted = false; // Reset quizStarted
                  }
                });
              },
            ),
          ),
        if (quizStarted) // Display buttons if quiz has started
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  check(false);

                  quizBrain.nextQuestion(); // Call nextQuestion
                  gotQuestionAndAnswer(); // Retrieve new question and answer
                  if (quizBrain.endcheck() == false) {
                    Alert(
                      context: context,
                      title: 'Finished',
                      desc: 'Total Score: $total',
                    ).show();
                    total = 0;
                    score = [];
                    quizStarted = false; // Reset quizStarted
                  }
                });
              },
            ),
          ),
        if (quizStarted) // Display score if quiz has started
          Row(
            children: score,
          )
      ],
    );
  }
}
