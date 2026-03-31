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
      body: SingleChildScrollView(
        // This is the SingleChildScrollView widget which is used to make the child widget scrollable when the content is more than the available space.
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(height: 150, width: 150, color: Colors.lightGreenAccent),
                      Container(height: 150, width: 150, color: Colors.deepPurpleAccent),
                      Container(height: 150, width: 150, color: Colors.amberAccent),
                      Container(height: 150, width: 150, color: Colors.greenAccent),
                    ],
                  ),
                ),
              ),
              Container(height: 150, color: Colors.deepOrangeAccent),
              Container(height: 150, color: Colors.deepPurpleAccent),
              Container(height: 150, color: Colors.yellowAccent),
              Container(height: 150, color: Colors.lightBlueAccent),
              Container(height: 150, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}
