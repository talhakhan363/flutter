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
  void myCallBackFunction() {
    print("Clicked!...");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: Text(widget.title)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent.shade100, elevation: 11),
          // to give shadow to elevated button, we can use elevation property, which takes in a double value. The higher the value, the more shadow it will have.
          onPressed: () {
            // this func is a callback func & can be use anywhere called.
            // callback functions mainly help in data flow in our app. It is a function that is passed as an argument to another function and is executed after some operation is completed.
            // It is used to handle events or to perform some action after a certain task is completed.
            myCallBackFunction();
          },
          child: Text("Click Me", style: TextStyle(fontSize: 21)),
        ),
      ),
    );
  }
}
