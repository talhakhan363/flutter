import 'package:flutter/material.dart';

// intl package imported from pub.dev for date formation, dependency also used.
import 'package:intl/intl.dart';

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
    var time = DateTime.now();

    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: Text(widget.title)),
      body: Center(
        child: SizedBox(
          width: 300,
          height: 350,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Current Date:\n ${DateFormat('d-MM-y').format(time)}",
                style: TextStyle(fontSize: 25),
              ), // --> 'd' for date, 'MM' for month, 'y' for year.
              Text(
                "Current Date:\n ${DateFormat('dd MMMM y').format(time)}",
                style: TextStyle(fontSize: 25),
              ), // --> 'dd' for 2 digit date, 'MMMM' for full month name, 'y' for year.
              Text(
                "Current Time:\n ${DateFormat('hh:mm:ss:').format(time)}",
                style: TextStyle(fontSize: 25),
              ), // --> 'hh' for 12 hour format, 'HH' for 24 hour format.
              Text(
                "Current Time:\n ${DateFormat('jms').format(time)}",
                style: TextStyle(fontSize: 25),
              ), // --> 'jms' for 12 hour format, 'Jms' for 24 hour format.
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    // --> recalls build function to set date & time again.
                  });
                },
                child: Text("Current Date & Time", style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
