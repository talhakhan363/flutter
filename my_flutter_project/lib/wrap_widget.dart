import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.red), // ← Add this
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade500,
        titleTextStyle: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        title: Text(widget.title),
      ),

      body: SizedBox(
        width: double.infinity,
        child: Wrap(
          // wrap widget is used to wrap the items in the available space.
          // for row, if row is full, it will wrap to the next line, for column, if column is full, it will wrap to the next column.
          direction: Axis.horizontal,

          // Axis.vertical is for column view, by default it is horizontal.
          alignment: WrapAlignment.center,
          spacing: 11, // space between the items in the main axis.
          runSpacing: 11, // space between the items in the cross axis.
          children: [
            Container(width: 70, height: 70, color: Colors.pink),
            Container(width: 70, height: 70, color: Colors.yellow),
            Container(width: 70, height: 70, color: Colors.purple),
            Container(width: 70, height: 70, color: Colors.green),
            Container(width: 70, height: 70, color: Colors.red),
            Container(width: 70, height: 70, color: Colors.pink),
            Container(width: 70, height: 70, color: Colors.yellow),
            Container(width: 70, height: 70, color: Colors.purple),
            Container(width: 70, height: 70, color: Colors.green),
            Container(width: 70, height: 70, color: Colors.red),
            Container(width: 70, height: 70, color: Colors.purple),
            Container(width: 70, height: 70, color: Colors.green),
            Container(width: 70, height: 70, color: Colors.red),
            Container(width: 70, height: 70, color: Colors.pink),
            Container(width: 70, height: 70, color: Colors.green),
            Container(width: 70, height: 70, color: Colors.purple),
            Container(width: 70, height: 70, color: Colors.green),
            Container(width: 70, height: 70, color: Colors.red),
          ],
        ),
      ),
    );
  }
}
