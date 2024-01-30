import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(
              child: Text(
                  "Container",
                  style:
                    TextStyle(fontSize:50, color:Colors.lime))
          ),
          // backgroundColor: Colors.blueGrey,
          bottomOpacity: 0.1,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
            image: DecorationImage(
            image: NetworkImage('https://i.postimg.cc/bJswPX06/pexels-miguel-a-padrin-a-n-446462.jpg'), fit: BoxFit.fill)
          ),
          ),
        ),
        bottomNavigationBar: const BottomAppBar(

        ),
        body: SafeArea(
          child: Center(
            child: Container(
              color: Colors.amber,
              height: 500.0,
              width: 500.0,
              margin: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:[

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [˜
                  Image.network('https://i.postimg.cc/gk3LNKJj/pexels-eberhard-grossgasteiger-707344.jpg', width: 80, height: 80),
                  Image.network('https://i.postimg.cc/bwpMJ8FT/pexels-artem-saranin-1547813.jpg', width: 80, height: 80),
                  Image.network('https://i.postimg.cc/hGdc8Kcd/pexels-michael-block-3225517-1.jpg', width: 80, height: 80),
                  Image.network('https://i.postimg.cc/yYpTcHfB/pexels-irina-iriser-1381679.jpg', width: 80, height: 80)
                ],
              ),
               Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network('https://i.postimg.cc/gk3LNKJj/pexels-eberhard-grossgasteiger-707344.jpg', width: 80, height: 80),
                  Image.network('https://i.postimg.cc/bwpMJ8FT/pexels-artem-saranin-1547813.jpg', width: 80, height: 80),
                  Image.network('https://i.postimg.cc/hGdc8Kcd/pexels-michael-block-3225517-1.jpg', width: 80, height: 80),
                  Image.network('https://i.postimg.cc/yYpTcHfB/pexels-irina-iriser-1381679.jpg', width: 80, height: 80)
                ],
              ),
              ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
