import 'package:flutter/material.dart';

// this is the most important, this is actually running our app.
/* [MyApp] is the class created by us/flutter because it knows if we are creating 
flutter project we want to create flutter application. */
// so it generates the class and code for us which contains one page.
// this is the ignition point of our app, it is the first code to be executed when we run our app.
void main() {
  runApp(const MyApp());
}

// if we don't want changes in our app then we can use stateless widget.
// now if class is an "App" it will return an app which is here "MaterialApp".
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // following is build function which is used to build the UI of our app, it is called whenever we need to change something in our app.
  @override
  Widget build(BuildContext context) {
    // now this the app which is being created and returned by the build function, this is the app which is being run by the main function.
    // all the changes will be made in this app, and this is the app which will be displayed on the screen.
    return MaterialApp(
      // these are the properties of the MaterialApp, we can change them to change the look and feel of our app.
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      // this is the home page of our app, this is the first page which will be displayed when we run our app.
      // app needs atleast one page to run, if we don't provide any page it will show error because it doesn't know what to display on the screen.
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// if we want changes in our app then we can use stateful widget.
// now if the class is a "HomePage" it will return a page which is here "Scaffold", this is the page which is being displayed on the screen.
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  /* here we create the state of our home page, this is where we will make changes 
  to our home page, this is where we will change the UI of our home page. */
  State<MyHomePage> createState() => _MyHomePageState();
  // it is kept private because we don't want to access it from outside the class, we want to access it only from inside the class.
  // main reason to keep it private is to prevent accidental access from outside the class.
}

// MyHomePage state extends State<MyHomePage> as we want all the properties and methods of the State class to be available in our MyHomePage state, so we can use them to change the UI of our home page.
class _MyHomePageState extends State<MyHomePage> {
  // again we have a build function which is used to build the UI of our home page, it is called whenever we need to change something in our home page.
  @override
  Widget build(BuildContext context) {
    // this the page which is being created and returned by the build function, this is the page which is being displayed on the screen.
    return Scaffold(
      // these are the properties of the Scaffold, we can change them to change the look and feel of our home page.
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: Text(widget.title)),
      body: Text('Hello World'),
    );
  }
}
