import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// --> above package is used for font_awesome_flutter....

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
        children: [
          Icon(Icons.account_circle, size: 71, color: Colors.pinkAccent),
          Icon(Icons.accessibility, size: 71, color: Colors.indigo),
          FaIcon(FontAwesomeIcons.amazon, size: 71, color: Colors.green.shade300),
          FaIcon(FontAwesomeIcons.google, size: 71, color: Colors.teal.shade700),
          FaIcon(FontAwesomeIcons.microsoft, size: 71, color: Colors.redAccent),
          FaIcon(FontAwesomeIcons.school, size: 71, color: Colors.grey),
        ],
      ),
    );
  }
}
