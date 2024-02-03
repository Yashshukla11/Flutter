import 'package:flutter/material.dart';
import 'story_brain.dart';

StoryBrain storyBrain = StoryBrain();

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      body: HomePage(),
    ),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // void _showEndPopup(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: const Text('End of Story'),
  //         content: const Text(
  //             'Congratulations! You have reached the end of the story.'),
  //         actions: <Widget>[
  //           TextButton(
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //             child: const Text('OK'),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Center(
            child: Text(
              storyBrain.getStory(),
              style: const TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.blue), // Background color
                    foregroundColor: MaterialStateProperty.all<Color>(
                        Colors.white), // Text color
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Button border radius
                      ),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      storyBrain.nextStory(1);
                    });
                  },
                  child: Text(storyBrain.getChoice1()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Visibility(
                  visible: storyBrain.getChoice2().isNotEmpty,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.blue,
                      ), // Background color
                      foregroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        storyBrain.nextStory(2);
                      });
                    },
                    child: Text(storyBrain.getChoice2()),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
