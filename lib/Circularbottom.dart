import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';




class Circular extends StatefulWidget {
  Circular({Key key}) : super(key: key);

  @override
  _CircularState createState() => _CircularState();
}

class _CircularState extends State<Circular> {
int currentindex = 2;

final tabs = [
  Container(color: Colors.white,
      child: Center(
        child: Text('Add'),
      ),
  ),
  Container(color: Colors.white,child: Center(child:Text('Cart'))),
  Container(color: Colors.white,child: Center(child:Text('Arrow'))),
  Container(color: Colors.white,child: Center(child:Text('Cached'))),
  Container(color: Colors.white,child: Center(child:Text('Page'))),
  Container(color: Colors.white,child: Center(child:Text('Hello'))),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentindex],
  bottomNavigationBar: ConvexAppBar(
    height: 75,
    activeColor: Colors.white,
    // curveSize: 80,
    // top: -25,
    items: [
      TabItem(icon: Icons.home, title: 'Home',isIconBlend: true),
      TabItem(icon: Icons.map, title: 'Discovery'),
      TabItem(icon: Icons.add, title: 'Add'),
      TabItem(icon: Icons.message, title: 'Message'),
      TabItem(icon: Icons.people, title: 'Profile'),
    ],
    initialActiveIndex: 2,
    // initialActiveIndex: 2,//optional, default as 0
    onTap: (index) => {
      currentindex=index
    }
  )
);
  }
}