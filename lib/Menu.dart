import 'package:flutter/material.dart';
import 'package:practice3/Circularbottom.dart';

class Menu extends StatefulWidget {
  Menu({Key key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Container(
        color: Colors.blueAccent,
        child: Center(
          child: RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Circular()));
          },child: Text('data'),)
        ),
      ),
    );
  }
}