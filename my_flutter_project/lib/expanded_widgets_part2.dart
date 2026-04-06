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
            width: double.infinity,
            height: 90,
            color: Colors.pink.shade400,
            child: Center(child: Text("Stories")),
          ),
          Container(
            width: double.infinity,
            height: 70,
            color: Colors.pink.shade200,
            child: Center(child: Text("Threads Updates")),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 50,
              color: Colors.pink.shade100,
              child: Center(child: Text("POSTS")),
            ),
          ),
          Container(
            width: double.infinity,
            height: 70,
            color: Colors.pink.shade200,
            child: Center(child: Text("Likes | Comments | Shares")),
          ),
          Container(
            width: double.infinity,
            height: 55,
            color: Colors.pink.shade400,
            child: Center(child: Text("Reels")),
          ),
          Container(
            width: double.infinity,
            height: 40,
            color: Colors.pink.shade300,
            child: Center(child: Text("Navigation Bar")),
          ),
        ],
      ),
    );
  }
}
