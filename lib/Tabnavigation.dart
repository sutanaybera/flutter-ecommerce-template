import 'package:flutter/material.dart';

class Toptab extends StatefulWidget {
  Toptab({Key key}) : super(key: key);

  @override
  _ToptabState createState() => _ToptabState();
}

class _ToptabState extends State<Toptab> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
          length: 4,
      child: Scaffold(
         appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
                  Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: Text('Tabs Demo'),
          ),
        body: TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
            Tab(icon: Icon(Icons.directions_bike)),
          ],
        ),
      ),
    ));
  }
}
