import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar"),
      ),
      body: Center(
        child: TextButton(
            onPressed: () {
              var snackBar = SnackBar(
                backgroundColor: Colors.red,
                shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                duration: Duration(milliseconds: 200),
                action: SnackBarAction(label: "Button", onPressed: (){}),
                behavior: SnackBarBehavior.floating,
                margin: EdgeInsets.all(10),
                content: Text(
                  "This is SnackBar",
                ),
                
              );

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Text("Show SnackBar")),
      ),
    );
  }
}
