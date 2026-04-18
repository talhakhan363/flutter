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

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.flag, size: 21, color: Colors.pinkAccent.shade700),
          Row(
            // --> to align both text fields.
            crossAxisAlignment: CrossAxisAlignment.baseline, // --> to align text in baseline.
            textBaseline: TextBaseline.alphabetic, // --> to align text in baseline, it is required when crossAxisAlignment is baseline.

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hello",
                style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              Text(
                "World!",
                style: TextStyle(fontSize: 40, color: Colors.blue.shade500, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          RichText(
            // RichText is used to display text with different styles in a single line.
            // It takes a TextSpan as a child, which can have multiple TextSpans as children, each with different styles.
            text: TextSpan(
              // --> default text span created here.
              style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.bold),

              children: [
                TextSpan(text: "Hello"),
                TextSpan(
                  text: "World!",
                  style: TextStyle(fontSize: 25, color: Colors.blue.shade500, fontWeight: FontWeight.bold),
                ),
                TextSpan(text: "Welcome to"),
                TextSpan(
                  text: "Flutter...",
                  style: TextStyle(fontSize: 25, color: Colors.blue.shade500, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
          Text(
            "Above given both styles are created "
            "from different methods",
            // --> to align text in center
            textAlign: TextAlign.center,

            style: TextStyle(fontSize: 15, color: Colors.pinkAccent.shade700, fontWeight: FontWeight.bold, fontFamily: "MyFont1"),
          ),
        ],
      ),
    );
  }
}
