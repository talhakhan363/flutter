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
    better than listView bcz in that we had to input in the widget directly. */
    //var arrNames = ["Talha", "Younus", "Ali", "Furqan", "Abdullah", "Saim", "Ahmed"];

    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: Text(widget.title)),
      body: ListView(
        // This is ListView:
        // scrollDirection: Axis.horizontal, //--> converts into rows
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("One", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Two", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Three", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Four", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Five", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("six", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500)),
          ),
        ],
      ),

      /* This is ListView.Builder:
        ListView.builder(itemBuilder: (context, index){
          // array has been taken above.
          return Text(arrNames[index], style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w500),);
        },
          itemCount: arrNames.length,
          itemExtent: 80, // --> gives fix capacity to widgets.
        ) 


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

    );*/
    );
  }
}
