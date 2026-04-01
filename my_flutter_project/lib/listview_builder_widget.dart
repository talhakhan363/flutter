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
    /* --> we use this array for dynamic inputs from any database or api.
    its better than listView bcz in that we had to input in the widget directl,y 
    but here we can just use the array to get the data from the database */

    var arrNames = [
      "Talha",
      "Younus",
      "Ali",
      "Furqan",
      "Abdullah",
      "Saim",
      "Ahmed",
      "Akram",
      "Shahid",
      "Shahbaz",
      "Shoaib",
      "Asif",
      "Aslam",
      "Ahsan",
      "Adeel",
      "Adnan",
      "Aamir",
      "Aftab",
      "Aqib",
    ];

    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: Text(widget.title)),
      body:
          // This is ListView.Builder:
          // It is used to create a scrollable list of items that are built on demand. It is more efficient than ListView because it only builds the items that are visible on the screen, rather than building all the items at once.
          // It takes two required parameters: itemBuilder and itemCount.
          // The itemBuilder is a function that takes the context and the index of the item and returns a widget to display for that item. The itemCount is the total number of items in the list.
          ListView.builder(
            itemBuilder: (context, index) {
              // array has been taken above.
              // padding has applied to each item of the listView.builder, to container and text inside container.
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.amberAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(arrNames[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500)),
                  ),
                ),
              );
            },
            itemCount: arrNames.length,
            itemExtent: 60, // --> this is the height of each item.
          ),
    );
  }
}
