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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: Text(widget.title)),
      body:
          /* --> sabse pehle ek colum hai jiska pehla unit row hai, and
        us row ka pehla unit phir ek column hai. */
          Container(
            height: 500,
            width: 400,
            color: Colors.lightBlueAccent,
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly, // --> spaceEvenly se jitna space banta hai wo sabhi ke beech me equally distribute ho jata hai.
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceBetween, // --> spaceBetween se jitna space banta hai wo first and last ke beech me equally distribute ho jata hai, aur first and last ke beech me koi space nahi hota.
                  children: [
                    Column(
                      children: [
                        Text("Ca1", style: TextStyle(fontSize: 25)),
                        Text("Ca2", style: TextStyle(fontSize: 25)),
                      ],
                    ),
                    Text("R1", style: TextStyle(fontSize: 25)),
                    Text("R2", style: TextStyle(fontSize: 25)),
                    Text("R3", style: TextStyle(fontSize: 25)),
                    Text("R4", style: TextStyle(fontSize: 25)),
                    Text("R5", style: TextStyle(fontSize: 25)),
                  ],
                ),
                Text("C1", style: TextStyle(fontSize: 25)),
                Text("C2", style: TextStyle(fontSize: 25)),
                Text("C3", style: TextStyle(fontSize: 25)),
                Text("C4", style: TextStyle(fontSize: 25)),
                Text("C5", style: TextStyle(fontSize: 25)),
              ],
            ),
          ),
    );
  }
}
