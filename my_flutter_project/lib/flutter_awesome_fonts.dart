import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// above package is used for font_awesome_flutter....

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

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // here we are using flutter's default icons and font awesome icons in the same column....

            // normal fonts icon:
            Icon(Icons.account_circle, size: 51, color: Colors.pinkAccent),
            Icon(Icons.accessibility, size: 51, color: Colors.indigo),

            // font awesome icons:
            FaIcon(FontAwesomeIcons.youtube, size: 51, color: Colors.red.shade700),
            FaIcon(FontAwesomeIcons.amazon, size: 51, color: Colors.brown.shade700),
            FaIcon(FontAwesomeIcons.google, size: 51, color: Colors.green.shade700),
            FaIcon(FontAwesomeIcons.microsoft, size: 51, color: Colors.blueGrey.shade700),
            FaIcon(FontAwesomeIcons.twitter, size: 51, color: Colors.blue.shade700),
            FaIcon(FontAwesomeIcons.apple, size: 51, color: Colors.black),
            FaIcon(FontAwesomeIcons.flutter, size: 51, color: Colors.blue.shade500),
          ],
        ),
      ),
    );
  }
}
