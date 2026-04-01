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

    var arrNames = ["Talha", "Younus", "Ali", "Furqan", "Abdullah", "Saim", "Ahmed"];

    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: Text(widget.title)),
      body:
          // This is ListView.Builder:
          ListView.builder(
            itemBuilder: (context, index) {
              // array has been taken above.
              return Text(arrNames[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500));
            },
            itemCount: arrNames.length - 1,
            itemExtent: 80, // --> gives fix capacity to widgets.
          ),

      // This is ListView.Separated which has divider in between.
      // ListView.separated(itemBuilder: (context, index){
      //   // array has been taken above.
      //   return Text(arrNames[index], style: TextStyle(
      //       fontSize: 21,
      //       fontWeight: FontWeight.w500),);
      // },
      //   itemCount: arrNames.length,
      //   separatorBuilder: (context, index){
      //   return Divider(height: 8, thickness: 3);
      //   },
      // )
    );
  }
}
