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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)),
      home: const MyHomePage(title: 'Timetable'),
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
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 50,
                color: Colors.pinkAccent.shade100,
                child: Center(
                  child: Text("Hello World", style: TextStyle(fontSize: 25, color: Colors.deepOrange)),
                ),
              ),
              Container(
                width: 40,
                height: 50,
                color: Colors.pinkAccent.shade100,
                child: Center(
                  child: Text("Hello World", style: TextStyle(fontSize: 25, color: Colors.deepOrange)),
                ),
              ),
              Container(
                width: 40,
                height: 50,
                color: Colors.pinkAccent.shade100,
                child: Center(
                  child: Text("Hello World", style: TextStyle(fontSize: 25, color: Colors.deepOrange)),
                ),
              ),
              Container(
                width: 40,
                height: 50,
                color: Colors.pinkAccent.shade100,
                child: Center(
                  child: Text("Hello World", style: TextStyle(fontSize: 25, color: Colors.deepOrange)),
                ),
              ),
              Container(
                width: 40,
                height: 50,
                color: Colors.pinkAccent.shade100,
                child: Center(
                  child: Text("Hello World", style: TextStyle(fontSize: 25, color: Colors.deepOrange)),
                ),
              ),
              Container(
                width: 40,
                height: 50,
                color: Colors.pinkAccent.shade100,
                child: Center(
                  child: Text("Hello World", style: TextStyle(fontSize: 25, color: Colors.deepOrange)),
                ),
              ),
              Container(
                width: 40,
                height: 50,
                color: Colors.pinkAccent.shade100,
                child: Center(
                  child: Text("Hello World", style: TextStyle(fontSize: 25, color: Colors.deepOrange)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
