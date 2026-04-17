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
    // we have created this array of colors to use in our grid view. We will use this array to create the grid view with different colors.
    var arrColors = [
      Colors.red,
      Colors.yellowAccent,
      Colors.blue.shade900,
      Colors.green,
      Colors.purple,
      Colors.orange,
      Colors.pinkAccent,
      Colors.cyanAccent,
    ];

    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: Text(widget.title)),
      body:
          // GridView is a widget that allows us to create a grid of items.
          // It is similar to ListView, but it allows us to create a grid of items instead of a list.
          // We can use GridView.count, GridView.extent, or GridView.builder to create a grid view.
          // .builder is used for dynamic data coming from internet or elsewhere.
          GridView.builder(
            itemBuilder: (context, index) {
              return Container(color: arrColors[index]);
            },
            itemCount: arrColors.length,

            // we have learned this cross extent and count before.
            // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100), this is for extent, which gives fix size to the grid, in big screen no of boxes increases.
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 11,
              mainAxisSpacing: 11,
            ), // this is for count, which involves fixed number of columns for grid.
          ),

      /* 
        // --> .count involves number of columns for grid.
        GridView.count(crossAxisCount: 5,
          crossAxisSpacing: 11, // --> gives space between columns.
          mainAxisSpacing: 11, // --> gives space between rows.
          children: [
            Container(color: Colors.red),
            Container(color: Colors.yellow),
            Container(color: Colors.blue.shade800),
            Container(color: Colors.green),
            Container(color: Colors.purple),
            Container(color: Colors.orange),
            Container(color: Colors.pink),
            Container(color: Colors.cyanAccent),  
          ], */

      /*
        // .extent gives fix size to the grid, in big screen no of boxes increases.
        GridView.extent(maxCrossAxisExtent: 100,
          crossAxisSpacing: 11,
          mainAxisSpacing: 11,
          children: [
            Container(color: Colors.red),
            Container(color: Colors.yellow),
            Container(color: Colors.blue.shade800),
            Container(color: Colors.green),
            Container(color: Colors.purple),
            Container(color: Colors.orange),
            Container(color: Colors.pink),
            Container(color: Colors.cyanAccent),
          ],
        ) */
    );
  }
}
