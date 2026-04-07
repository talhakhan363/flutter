import 'package:flutter/material.dart';
import 'package:my_first_project/ui_Helper/util.dart';

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
          displayLarge: TextStyle(fontSize: 31, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(fontSize: 21, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
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
          // --> ! shows that theme is not null.
          Text("Hello Text 1", style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.deepOrangeAccent)),

          // --> some functions are defined in util.dart used here.
          Text("Hello Text 2", style: myTextStyleCustom(textColor: Colors.purple)),
          Text("Hello Text 3", style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.green)),
          Text("Hello Text 4", style: myTextStyle22()),
        ],
      ),
    );
  }
}
