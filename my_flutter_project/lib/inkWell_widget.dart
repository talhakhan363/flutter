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
      body: Center(
        child: InkWell(
          // This is the InkWell widget which is used to detect the tap, long press and double tap on any widget.
          onTap: () {
            print("Container Tapped!");
          },
          onLongPress: () {
            print("Container Long Pressed!");
          },
          onDoubleTap: () {
            print("Container Double Tapped!");
          },
          child: Container(
            width: 200,
            height: 200,
            color: Colors.lightGreenAccent,
            child: Center(
              child: InkWell(
                onTap: () {
                  print("Text Tapped!");
                },
                onLongPress: () {
                  print("Container Long Pressed!");
                },
                onDoubleTap: () {
                  print("Container Double Tapped!");
                },
                child: Text("Tap, Long Press or Double Tap Me!", textAlign: TextAlign.center, style: TextStyle(fontSize: 18)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
