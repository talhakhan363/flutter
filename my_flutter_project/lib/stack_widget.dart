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
      appBar: AppBar(
        backgroundColor: Colors.blue.shade500,
        titleTextStyle: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        title: Text(widget.title),
      ),

      body: Stack(
        children: [
          Container(
            width: 370,
            height: 370,
            color: Colors.pink,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  "Container 1",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            width: 320,
            height: 320,
            color: Colors.amber.shade700,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  "Container 2",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            width: 270,
            height: 270,
            color: Colors.tealAccent.shade700,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  "Container 3",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ),

          // --> for positioning
          Positioned(
            top: 21,
            left: 21,
            child: Container(
              width: 170,
              height: 190,
              color: Colors.purple,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    "Container 4",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 60,
            child: Container(
              width: 90,
              height: 140,
              color: Color(0xFF8A0303),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    "Container 5",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
