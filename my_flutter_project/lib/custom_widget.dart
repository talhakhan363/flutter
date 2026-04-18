import 'package:flutter/material.dart';
import 'package:my_flutter_project/ui_helper/util.dart';
import 'package:my_flutter_project/widgets/rounded_button.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 220,
              height: 50,
              child: RoundedButton(
                btnName: "Start",
                btnIcon: Icon(Icons.start, size: 31),
                btnBgColor: Colors.greenAccent.shade400,
                callback: () {
                  print("Starting...");
                },
                btnTextStyle: myTextStyle22(),
              ),
            ),
            Container(height: 11),
            SizedBox(
              width: 220,
              height: 50,
              child: RoundedButton(
                btnName: "Pause",
                btnIcon: Icon(Icons.pause, size: 31),
                btnBgColor: Colors.greenAccent.shade400,
                callback: () {
                  print("Taking a pause...");
                },
                btnTextStyle: myTextStyle22(),
              ),
            ),
            Container(height: 11),
            SizedBox(
              width: 220,
              height: 50,
              child: RoundedButton(
                btnName: "Resume",
                btnIcon: Icon(Icons.play_arrow, size: 31),
                btnBgColor: Colors.greenAccent.shade400,
                callback: () {
                  print("Resume where leftover...");
                },
                btnTextStyle: myTextStyle22(),
              ),
            ),
            Container(height: 11),
            SizedBox(
              width: 220,
              height: 50,
              child: RoundedButton(
                btnName: "Main menu",
                btnIcon: Icon(Icons.menu, size: 31),
                btnBgColor: Colors.greenAccent.shade400,
                callback: () {
                  print("Get back to main menu...");
                },
                btnTextStyle: myTextStyle22(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
