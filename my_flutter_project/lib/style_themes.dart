import 'package:flutter/material.dart';
import 'package:my_flutter_project/ui_helper/util.dart';
// above we have imported our util file where new themes are defined.

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        textTheme: TextTheme(
          // we can set text theme here.
          displayLarge: TextStyle(fontSize: 31, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(fontSize: 21, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
          // above themes have been set globally/universally and can be used anywhere in our app.
        ),
      ),
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
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: Text(widget.title)),
      body: Column(
        // --> Theme is set above in material app.
        children: [
          // Theme.of means we are getting theme from our material app.
          // textTheme is the one we are fetching from material app.
          // displayLarge is the one we are fetching from text theme.
          // ! means we are sure that displayLarge is not null.
          // .copyWith means we are extending our universal theme and adding some more functionalities to it.
          Text("Hello Text 1", style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.deepOrangeAccent)),

          // IF WE HAVE MANY THEME STYLES WE CAN CREATE A SEPARATE FILE AND DEFINE THEM THERE AND USE THEM HERE.
          // some CREATED functions are defined in util.dart used here.
          Text("Hello Text 2", style: myTextStyleCustom(textColor: Colors.purple)),
          Text("Hello Text 3", style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.green)),
          Text("Hello Text 4", style: myTextStyle22()),
        ],
      ),
    );
  }
}
