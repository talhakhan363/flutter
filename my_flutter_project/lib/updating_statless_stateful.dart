import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), useMaterial3: true),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // the below createState() needs state to create, it is coded below.
  State<StatefulWidget> createState() {
    return MyHomeState();
  }

  // this above can be written in single line using "=>".
}

class MyHomeState extends State<MyHomePage> {
  // declaring the variables
  var result = ""; // this variable will hold the result of the calculations.
  // declaring the controllers here to make controllers value unchange after setState() is called.
  var input1Controller = TextEditingController();
  var input2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // initially, I was declaring the controllers inside the build method, but it was creating new controllers every time the widget was rebuilt, which was causing the text fields to lose their values after setState() is called.
    // var input1Controller = TextEditingController();
    // var input2Controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter Calculator",
          style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue.shade600,
      ),
      body: Container(
        height: double.infinity,
        color: Colors.blue.shade100,
        child: Center(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 10),
                  child: SizedBox(
                    width: 250,
                    height: 40,
                    child: TextField(
                      controller: input1Controller,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        filled: true, // this will fill the text field with the color mentioned in "fillColor".
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.blue, width: 3),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white, width: 3),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 250,
                    height: 40,
                    child: TextField(
                      controller: input2Controller,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.blue, width: 3),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white, width: 3),
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // --> converting text string to int.

                          var number1 = int.parse(input1Controller.text.toString());
                          var number2 = int.parse(input2Controller.text.toString());
                          var sum = number1 + number2;
                          result = "The addition of $number1 and $number2 is \"$sum\"";
                          setState(() {}); // this will rebuild the widget and update the result variable in the UI.
                        },
                        child: Text("Add", style: TextStyle(fontSize: 15)),
                      ),
                      SizedBox(width: 5),
                      ElevatedButton(
                        onPressed: () {
                          var number1 = int.parse(input1Controller.text.toString());
                          var number2 = int.parse(input2Controller.text.toString());
                          var sub = number1 - number2;
                          result = "The subtraction of $number1 and $number2 is \"$sub\"";
                          setState(() {}); //
                        },
                        child: Text("Subtract", style: TextStyle(fontSize: 15)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          var number1 = int.parse(input1Controller.text.toString());
                          var number2 = int.parse(input2Controller.text.toString());
                          var product = number1 * number2;
                          result = "The product of $number1 and $number2 is \"$product\"";
                          setState(() {});
                        },
                        child: Text("Multiply", style: TextStyle(fontSize: 15)),
                      ),
                      SizedBox(width: 5),
                      ElevatedButton(
                        onPressed: () {
                          var number1 = int.parse(input1Controller.text.toString());
                          var number2 = int.parse(input2Controller.text.toString());
                          var div = number1 / number2;
                          result = "The division of $number1 and $number2 is \"$div\"";
                          setState(() {});
                        },
                        child: Text("Divide", style: TextStyle(fontSize: 15)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Result: $result",
                    style: TextStyle(fontSize: 19, color: Colors.blue.shade700, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
