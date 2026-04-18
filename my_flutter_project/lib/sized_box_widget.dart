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

      body:
          // sized box is used to give a specific size to the child widget.
          // SizedBox.shrink() is used to give the minimum size to the child widget, it will shrink to fit the child widget.
          // SizedBox.expand() is used to give the maximum size to the child widget, it will expand to fill the available space.
          // SizedBox.square() is used to give the square size to the child widget. It take single dimension and make the width and height same as the dimension.
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ConstrainedBox(
                    // constrained box is used to give the constraints to the child widget, it will take the constraints and apply it to the child widget.
                    constraints: BoxConstraints(maxHeight: 80, maxWidth: 250, minHeight: 20, minWidth: 150),
                    child: SizedBox(
                      width: 200,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Button 01", style: TextStyle(fontSize: 15)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: 80, maxWidth: 250, minHeight: 20, minWidth: 150),
                    child: SizedBox.shrink(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Button 02", style: TextStyle(fontSize: 15)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: 80, maxWidth: 250, minHeight: 20, minWidth: 150),
                    child: SizedBox.expand(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Button 02", style: TextStyle(fontSize: 15)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox.square(
                    dimension: 100,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Button 02", style: TextStyle(fontSize: 15)),
                    ),
                  ),
                ),
              ],
            ),
          ),
    );
  }
}
