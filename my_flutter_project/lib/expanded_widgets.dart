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
      // a common use of expanded widget is to divide its child in a particular ratio or to allocate any leftover space to a particular child.
      body: Row(
        children: [
          Expanded(child: Container(width: 75, height: 120, color: Colors.pink.shade100)),
          // above container will take all the space left after the other two containers have taken their space.
          Container(width: 75, height: 120, color: Colors.pink.shade200),
          Container(width: 75, height: 120, color: Colors.pink.shade300),
          // above two containers are normal and will take their space and the remaining space will be taken by the first container.
          // below container uses flex property to take space.
          Expanded(
            flex: 2,
            // --> divides remaining space in particular ratio, here 2:1, so the last container will take 2 times the space of the first container.
            child: Container(width: 75, height: 120, color: Colors.pink.shade400),
          ),
        ],
      ),
    );
  }
}
