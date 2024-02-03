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
              buildKey(0xFF32D1ED,1),
              buildKey(0xFF1AED8B,2),
              buildKey(0xFFEDDE07,3),
              buildKey(0xFFED9107,4),
              buildKey(0xFFED1607,5),
              buildKey(0xFF9530F2,6),
              buildKey(0xFF960E90,7),
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

   Expanded buildKey(int colour, int kay) {
     return Expanded(
       child: ElevatedButton(
         onPressed: () {
           plays(kay);
         },
         style: ElevatedButton.styleFrom(
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(0),
           ),
           backgroundColor: Color(colour),
         ),
         child: Container(),
       ),
     );
   }


}


