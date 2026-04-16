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
      home: const MyHomePage(title: 'User Input'),
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
  var emailText = TextEditingController();
  var passText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: Text(widget.title)),
      body: Center(
        child: SizedBox(
          width: 250,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  // --> here phone type value is taken through keyboard.
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    // when text field is tapped then focused border will be shown.
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.blue.shade700, width: 3),
                    ),
                    // when text field is not tapped then enabled border will be shown.
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.red, width: 3),
                    ),
                  ),
                ),
                Container(height: 21),
                TextField(
                  enabled: false,
                  decoration: InputDecoration(
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.black, width: 3),
                    ),
                  ),
                ),
                Container(height: 21),
                TextField(
                  controller: passText,
                  obscureText: true, // --> hide the password values to dots.
                  obscuringCharacter: "*", // --> replaces dots with any symbol we give.
                  decoration: InputDecoration(
                    hintText: "Enter password here...",
                    suffixText: "Username Exist",
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye, color: Colors.purple),
                      onPressed: () {},
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.deepOrange, width: 3),
                    ),
                  ),
                ),
                Container(height: 21),

                // --> emailText and passText has been declared above globally.
                TextField(
                  controller: emailText,
                  decoration: InputDecoration(
                    hintText: "Enter email here...",
                    prefixIcon: Icon(Icons.email, color: Colors.purple),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.deepOrange, width: 3),
                    ),
                  ),
                ),
                Container(height: 21),

                // --> here getting values from text field.
                ElevatedButton(
                  onPressed: () {
                    String uEmail = emailText.text.toString();
                    String uPass = passText.text;
                    print("Email: $uEmail, Pass: $uPass");
                  },
                  child: Text("Login"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
