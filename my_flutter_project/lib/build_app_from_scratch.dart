import 'package:flutter/material.dart';

// void means that this function doesn't return anything, it is just running the app and it doesn't return any value.
/* we can also remove the void and it will work fine (as it is not returning anything), 
/ but it is a good practice to keep it as it is, because it makes our code 
/ more readable and understandable. */
void main() {
  runApp(TalhasApp());
}

class TalhasApp extends StatelessWidget {
  // this is abstract function of class StatelessWidget, we have to override it to build the UI of our app.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Talhas App",
      theme: ThemeData(
        // THE MATERIAL 3 WAY:
        // Give it a seed color, and it automatically generates 30+ matching shades!
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true, // (This is true by default now)
      ),
      home: TalhasHomePage(),
    );
  }
}

class TalhasHomePage extends StatefulWidget {
  @override
  State<TalhasHomePage> createState() => _TalhasHomePageState(); // this code line means that we are creating the state of our home page, and we are returning the state of our home page which is _TalhasHomePageState, this is the state which will be used to change the UI of our home page.
}

class _TalhasHomePageState extends State<TalhasHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. ADD THE APP BAR
      appBar: AppBar(
        title: const Text('Talhas App'),
        // 2. USE YOUR NEW AUTOMATIC COLOR SCHEME
        backgroundColor: Theme.of(context).colorScheme.inversePrimary, // (This is the background color of the app bar)
        foregroundColor: Theme.of(context).colorScheme.onPrimary, // (This is the text color of the app bar)
      ),
      body: const Center(child: Text('Hello World')),
    );
  }
}
