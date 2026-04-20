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

      body:
          // Positioned widget is used to position the child widget in the stack widget. It takes the top, left, right and bottom properties to position the child widget.
          Container(
            color: Colors.blueGrey,
            child: Stack(
              children: [
                Positioned(top: 100, left: 82, child: Container(width: 20, height: 80, color: Colors.red)),
                Positioned(top: 300, left: 182, child: Container(width: 20, height: 80, color: Colors.green)),
                Positioned(top: 500, right: 172, child: Container(width: 20, height: 80, color: Colors.blue)),
              ],
            ),
          ),
    );
  }
}
