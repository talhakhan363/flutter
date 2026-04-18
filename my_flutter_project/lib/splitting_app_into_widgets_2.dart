import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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

      body: SizedBox(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.orange,
                child: ListView.builder(
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(width: 80, child: CircleAvatar(backgroundColor: Colors.green, radius: 30)),
                  ),
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.purple,
                child: ListView.builder(
                  itemBuilder: (context, index) => ListTile(
                    leading: CircleAvatar(backgroundColor: Colors.white, radius: 30),
                    title: Text(
                      "Name $index",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Contact $index", style: TextStyle(color: Colors.white)),
                  ),
                  itemCount: 15,
                ),
              ),
            ),
            Expanded(flex: 1, child: Container(color: Colors.lightGreenAccent)),
            Expanded(flex: 2, child: Container(color: Colors.brown)),
          ],
        ),
      ),
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
