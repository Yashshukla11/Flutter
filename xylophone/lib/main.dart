import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() {
  runApp(
       const XylophoneApp()
  );
}

class XylophoneApp extends StatelessWidget {
   const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      plays(1);
                    },
                    child: Container(),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        backgroundColor: Colors.deepPurple
                    ),
                  )
              ),
              Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      plays(2);
                    },
                    child: Container(),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        backgroundColor: Colors.greenAccent
                    ),
                  )
              ),
              Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      plays(3);
                    },
                    child: Container(),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        backgroundColor: Colors.teal
                    ),
                  )
              ),
              Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      plays(4);
                    },
                    child: Container(),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        backgroundColor: Colors.indigoAccent
                    ),
                  )
              ),
              Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      plays(5);
                    },
                    child: Container(),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        backgroundColor: Colors.orange
                    ),
                  )
              ),
              Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      plays(6);
                    },
                    child: Container(),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        backgroundColor: Colors.red
                    ),
                  )
              ),
              Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      plays(7);
                    },
                    child: Container(),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        backgroundColor: Colors.amber
                    ),
                  )
              ),

            ],
          ),
        ),
      ),
    );
  }
  Future<void> plays(int num) async{
    final player = AudioPlayer();
    String audioPath='../assets/assets_note$num.wav';
    await player.play(AssetSource(audioPath));
  }
}


