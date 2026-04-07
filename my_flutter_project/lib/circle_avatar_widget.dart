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
      body: Column(
        children: [
          Container(
            color: Colors.amberAccent,
            padding: EdgeInsets.all(8),
            width: 120,
            height: 120,
            child: CircleAvatar(backgroundImage: AssetImage("assets/images/flutter.jpg")),
          ),
          Container(
            color: Colors.amberAccent,
            padding: EdgeInsets.all(8),
            width: 120,
            height: 120,
            child: CircleAvatar(backgroundImage: AssetImage("assets/images/flutter1.png"), backgroundColor: Colors.cyanAccent),
          ),
          Container(
            color: Colors.amberAccent,
            padding: EdgeInsets.all(8),
            width: 120,
            height: 120,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/person1.jpg"),
              backgroundColor: Colors.grey,
              child: Text(
                "PROFESSOR",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
          Container(
            color: Colors.amberAccent,
            padding: EdgeInsets.all(8),
            width: 120,
            height: 120,
            child: CircleAvatar(backgroundImage: AssetImage("assets/images/flutter2.png"), backgroundColor: Colors.blueAccent.shade100),
          ),
          Container(
            color: Colors.amberAccent,
            padding: EdgeInsets.all(8),
            width: 120,
            height: 120,
            child: CircleAvatar(backgroundImage: AssetImage("assets/images/person.png"), backgroundColor: Colors.deepOrangeAccent),
          ),
        ],
      ),
    );
  }
}
