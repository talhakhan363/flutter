import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), useMaterial3: true),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // the below createState() needs state to create, it is coded below.
  State<StatefulWidget> createState() {
    return MyHomeState();
  }

  // this above can be written in single line using "=>".
}

class MyHomeState extends State<MyHomePage> {
  // we have initialized the counter variable to 0.
  var incrementCounter = 0;

  void increment() {
    // this function will increment the counter variable by 1.
    incrementCounter++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Counter Program"), backgroundColor: Colors.blueAccent),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Count: $incrementCounter", style: TextStyle(fontSize: 21)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    increment();
                  });
                },
                child: Text("Increment Counter", style: TextStyle(fontSize: 17)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    incrementCounter = 0;
                  });
                },
                child: Text("Reset", style: TextStyle(fontSize: 17)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
