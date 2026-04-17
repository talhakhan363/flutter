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
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Select date here", style: TextStyle(fontSize: 19)),
            ElevatedButton(
              onPressed:
                  // this is DatePicker, which allows the user to select a date from a calendar view. It takes in the context, the first date that can be selected, and the last date that can be selected as parameters.
                  // This is an asynchronous function because we need to wait for the user to select a date before we can proceed.
                  () async {
                    DateTime? datePicked = await showDatePicker(context: context, firstDate: DateTime(2021), lastDate: DateTime(2026));
                    // If the user selects a date, the datePicked variable will be assigned the selected date. If the user cancels the date picker, the datePicked variable will be null.
                    if (datePicked != null) {
                      print(
                        "Date selected: "
                        "${datePicked.day}-"
                        "${datePicked.month}-"
                        "${datePicked.year}",
                      );
                    }
                    // we used this IF statement to check if the user selected a date or not. If the user selected a date, we print the selected date in the console. If the user canceled the date picker, we do nothing.
                  },
              child: Text("Show", style: TextStyle(fontSize: 13)),
            ),
            Text("Select time here", style: TextStyle(fontSize: 19)),
            ElevatedButton(
              onPressed: () async {
                // this is TimePicker, which allows the user to select a time from a clock view. It takes in the context and the initial time as parameters.
                // its asynchronous function because we need to wait for the user to select a time before we can proceed.
                TimeOfDay? timePicked = await showTimePicker(context: context, initialTime: TimeOfDay.now());
                if (timePicked != null) {
                  print(
                    "Time selected: "
                    "${timePicked.hour}:"
                    "${timePicked.minute}",
                  );
                }
                // we used this IF statement to check if the user selected a time or not. If the user selected a time, we print the selected time in the console. If the user canceled the time picker, we do nothing.
              },
              child: Text("Show", style: TextStyle(fontSize: 13)),
            ),
          ],
        ),
      ),
    );
  }
}
