import 'package:flutter/material.dart';

// void means that this function doesn't return anything, it is just running the app and it doesn't return any value.
/* we can also remove the void and it will work fine (as it is not returning anything), 
/ but it is a good practice to keep it as it is, because it makes our code 
/ more readable and understandable. */
void main() {
  runApp(const TalhasApp());
}

class TalhasApp extends StatelessWidget {
  // this is abstract function of class StatelessWidget, we have to override it to build the UI of our app.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Talhas App",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ), // this is the theme of our app, swatch is a color which contains different shades of the same color, we can use it to change the color of our app according to our needs.
      home: Scaffold(
        appBar: AppBar(title: Text('Talhas App')),
        body: Center(child: Text('Hello World')),
      ),
    );
  }
}
