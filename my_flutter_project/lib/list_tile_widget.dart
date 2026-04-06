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
      home: const MyHomePage(title: 'List Tile Widget'),
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
    better than listView bcz in that we had to input in the widget directly. */
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
      body: ListView.separated(
        itemBuilder: (context, index) {
          // array has been taken above.
          return ListTile(
            // leading is the first element of the list tile.
            leading: Text(
              '${index + 1}',
              style: TextStyle(fontSize: 11, color: Colors.blue, fontWeight: FontWeight.bold),
            ),
            // title is the second element of the list tile.
            title: Text(arrNames[index], style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            // subtitle is the third element of the list tile.
            subtitle: Text("Person Contact", style: TextStyle(fontSize: 11)),
            // trailing is the last element of the list tile.
            trailing: Icon(Icons.account_circle, size: 23, color: Colors.blue),
          );
        },
        itemCount: arrNames.length,
        separatorBuilder: (context, index) {
          return Divider(height: 8, thickness: 3);
        },
      ),
    );
  }
}
