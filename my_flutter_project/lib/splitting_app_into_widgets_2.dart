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

      body: Column(children: [Stories(), Contacts(), Threads(), ItemsGallery()]),
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
class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.purple,
        child: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            leading: CircleAvatar(backgroundColor: Colors.white, radius: 30),
            title: Text(
              "Name $index",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Contact $index", style: TextStyle(color: Colors.white)),
            trailing: Icon(Icons.call, color: Colors.white, size: 19),
          ),
          itemCount: 15,
          separatorBuilder: (context, index) {
            return Divider(height: 15, thickness: 1, color: Colors.white);
            // divider is used to create a line between the items of the list.
          },
        ),
      ),
    );
  }
}

class Threads extends StatelessWidget {
  const Threads({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.lightGreenAccent,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 100,
              decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(11)),
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class ItemsGallery extends StatelessWidget {
  const ItemsGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.brown,
        child: GridView.count(
          crossAxisCount: 3,
          children: List.generate(9, (index) => Container(margin: EdgeInsets.all(8), color: Color(0xFFC4A484))),
        ),
      ),
    );
  }
}
