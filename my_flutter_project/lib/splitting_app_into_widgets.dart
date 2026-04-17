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

      body: Column(children: [FirstWidget(), SecondWidget(), ThirdWidget()]),
    );
  }
}

/* ✅ The widgets are defined below from class, benefits are:
       1) clean code  
       2) better readability  
       3) easy to configure errors 
       4) better performance as flutter will only rebuild the widget which is changed, not the whole app.
       */

// we have build our widgets here extended from StatelessWidget as we are not changing any state in these widgets, if we want to change the state then we can extend from StatefulWidget.
class FirstWidget extends StatelessWidget {
  const FirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.pink.shade500,
      child: Center(
        child: Text(
          "Hello Talha",
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}

class SecondWidget extends StatelessWidget {
  const SecondWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.pink.shade300,
      child: Center(
        child: Text(
          "Hello Talha",
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}

class ThirdWidget extends StatelessWidget {
  const ThirdWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.pink.shade100,
      child: Center(
        child: Text(
          "Hello Talha",
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
