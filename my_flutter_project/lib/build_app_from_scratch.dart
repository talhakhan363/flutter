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
        primarySwatch: Colors.blue,
      ), // this is the theme of our app, swatch is a color which contains different shades of the same color, we can use it to change the color of our app according to our needs.
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
      appBar: AppBar(
        title: const Text('Talhas Home Page'),
        backgroundColor: Colors.blue, // <-- Forces the App Bar to be blue
        foregroundColor: Colors.white, // <-- Makes the text white so it's readable
      ),
      body: Center(child: Text('Hello World')),
    );
  }
}
