import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:practice3/Menu.dart';
// import 'package:practice3/Circularbottom.dart';

class Bottom extends StatefulWidget {
  Bottom({Key key}) : super(key: key);

  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int currentindex = 2;

  final tabs = [
    Container(
      color: Colors.blueAccent,
      child: Center(
        child: Text('Add'),
      ),
    ),
    Container(color: Colors.blueAccent, child: Center(child: Text('Cart'))),
    Container(color: Colors.blueAccent, child: Center(child: Text('Arrow'))),
    Menu(),
    Container(color: Colors.blueAccent, child: Center(child: Text('Cached'))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentindex],
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white,
        backgroundColor: Colors.blueAccent,
        buttonBackgroundColor: Colors.white,
        height: 65,
        items: <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.shopping_cart, size: 30),
          Icon(Icons.compare_arrows, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.cached, size: 30),
        ],
        animationDuration: Duration(milliseconds: 200),
        index: 2,
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
      ),
    );
  }
}
