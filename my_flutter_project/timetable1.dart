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

      // done using simple containers with rows and columns.
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: 39,
                height: 50,
                color: Colors.pinkAccent.shade700,
                child: Center(
                  child: Text("Days & Date", style: TextStyle(fontSize: 10, color: Colors.black)),
                ),
              ),
              Container(
                width: 43,
                height: 50,
                color: Colors.lightBlueAccent.shade700,
                child: Center(
                  child: Text("Monday", style: TextStyle(fontSize: 10, color: Colors.black)),
                ),
              ),
              Container(
                width: 43,
                height: 50,
                color: Colors.limeAccent.shade700,
                child: Center(
                  child: Text("Tuesday", style: TextStyle(fontSize: 10, color: Colors.black)),
                ),
              ),
              Container(
                width: 54,
                height: 50,
                color: Colors.tealAccent.shade700,
                child: Center(
                  child: Text("Wednesday", style: TextStyle(fontSize: 10, color: Colors.black)),
                ),
              ),
              Container(
                width: 43,
                height: 50,
                color: Colors.redAccent.shade700,
                child: Center(
                  child: Text("Thursday", style: TextStyle(fontSize: 10, color: Colors.black)),
                ),
              ),
              Container(
                width: 38,
                height: 50,
                color: Colors.purpleAccent.shade700,
                child: Center(
                  child: Text("Friday", style: TextStyle(fontSize: 10, color: Colors.black)),
                ),
              ),
              Container(
                width: 43,
                height: 50,
                color: Colors.lightGreenAccent.shade700,
                child: Center(
                  child: Text("Weekend", style: TextStyle(fontSize: 10, color: Colors.black)),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 39,
                height: 50,
                color: Colors.pinkAccent.shade400,
                child: Center(
                  child: Text("Uni Study", style: TextStyle(fontSize: 10, color: Colors.black)),
                ),
              ),
              Container(
                width: 43,
                height: 50,
                color: Colors.lightBlueAccent.shade400,
                child: Center(
                  child: Text("PC & DC", style: TextStyle(fontSize: 10, color: Colors.black)),
                ),
              ),
              Container(
                width: 43,
                height: 50,
                color: Colors.limeAccent.shade400,
                child: Center(
                  child: Text("Mod & Sim", style: TextStyle(fontSize: 10, color: Colors.black)),
                ),
              ),
              Container(
                width: 54,
                height: 50,
                color: Colors.tealAccent.shade400,
                child: Center(
                  child: Text("SPM", style: TextStyle(fontSize: 10, color: Colors.black)),
                ),
              ),
              Container(
                width: 43,
                height: 50,
                color: Colors.redAccent.shade400,
                child: Center(
                  child: Text("CAcc", style: TextStyle(fontSize: 10, color: Colors.black)),
                ),
              ),
              Container(
                width: 38,
                height: 50,
                color: Colors.purpleAccent.shade400,
                child: Center(
                  child: Text("PC & DC", style: TextStyle(fontSize: 10, color: Colors.black)),
                ),
              ),
              Container(
                width: 43,
                height: 50,
                color: Colors.lightGreenAccent.shade400,
                child: Center(
                  child: Text("CoverUp", style: TextStyle(fontSize: 10, color: Colors.black)),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 39,
                height: 50,
                color: Colors.pinkAccent.shade200,
                child: Center(
                  child: Text("Gym day", style: TextStyle(fontSize: 10, color: Colors.black)),
                ),
              ),
              Container(
                width: 43,
                height: 50,
                color: Colors.lightBlueAccent.shade200,
                child: Center(
                  child: Text("Push", style: TextStyle(fontSize: 10, color: Colors.black)),
                ),
              ),
              Container(
                width: 43,
                height: 50,
                color: Colors.limeAccent.shade200,
                child: Center(
                  child: Text("Pull", style: TextStyle(fontSize: 10, color: Colors.black)),
                ),
              ),
              Container(
                width: 54,
                height: 50,
                color: Colors.tealAccent.shade200,
                child: Center(
                  child: Text("Legs", style: TextStyle(fontSize: 10, color: Colors.black)),
                ),
              ),
              Container(
                width: 43,
                height: 50,
                color: Colors.redAccent.shade200,
                child: Center(
                  child: Text("Shoulder", style: TextStyle(fontSize: 10, color: Colors.black)),
                ),
              ),
              Container(
                width: 38,
                height: 50,
                color: Colors.purpleAccent.shade200,
                child: Center(
                  child: Text("Arms & legs", style: TextStyle(fontSize: 10, color: Colors.black)),
                ),
              ),
              Container(
                width: 43,
                height: 50,
                color: Colors.lightGreenAccent.shade200,
                child: Center(
                  child: Text("Rest", style: TextStyle(fontSize: 10, color: Colors.black)),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 39,
                height: 50,
                color: Colors.pinkAccent.shade100,
                child: Center(
                  child: Text("Skill work", style: TextStyle(fontSize: 10, color: Colors.black)),
                ),
              ),
              Container(
                width: 43,
                height: 50,
                color: Colors.lightBlueAccent.shade100,
                child: Center(
                  child: Text("Flutter", style: TextStyle(fontSize: 10, color: Colors.black)),
                ),
              ),
              Container(
                width: 43,
                height: 50,
                color: Colors.limeAccent.shade100,
                child: Center(
                  child: Text("Flutter", style: TextStyle(fontSize: 10, color: Colors.black)),
                ),
              ),
              Container(
                width: 54,
                height: 50,
                color: Colors.tealAccent.shade100,
                child: Center(
                  child: Text("Flutter", style: TextStyle(fontSize: 10, color: Colors.black)),
                ),
              ),
              Container(
                width: 43,
                height: 50,
                color: Colors.redAccent.shade100,
                child: Center(
                  child: Text("Flutter", style: TextStyle(fontSize: 10, color: Colors.black)),
                ),
              ),
              Container(
                width: 38,
                height: 50,
                color: Colors.purpleAccent.shade100,
                child: Center(
                  child: Text("Flutter", style: TextStyle(fontSize: 10, color: Colors.black)),
                ),
              ),
              Container(
                width: 43,
                height: 50,
                color: Colors.lightGreenAccent.shade100,
                child: Center(
                  child: Text("CoverUp", style: TextStyle(fontSize: 10, color: Colors.black)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
