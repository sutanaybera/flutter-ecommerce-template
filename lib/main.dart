import 'package:flutter/material.dart';
import 'package:practice3/drawer.dart';
import 'package:practice3/home.dart';


void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home:MyApp(),));
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            DrawerScreen(),
            HomeScreen(),

          ],
        ),
    );
  }
}