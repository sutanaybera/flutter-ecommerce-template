import 'package:flutter/material.dart';
import 'package:practice3/Bottomnavigationbar.dart';
import 'package:practice3/Tabnavigation.dart';

class Pageview extends StatefulWidget {
  Pageview({Key key}) : super(key: key);

  @override
  _PageviewState createState() => _PageviewState();
}

class _PageviewState extends State<Pageview> {
  int count=0;
  void next(){
    setState(() {
      while(count<3){
        count++;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: controller,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'MICKEY MOUSE',
                      style: TextStyle(fontSize: 40),
                    ),
                    Text('Welcome to Tokota Let^s shopl'),
                    Image.network(
                        'https://i2-prod.mirror.co.uk/incoming/article9287204.ece/ALTERNATES/s1200c/Mickey-mouse.jpg')
                  ],
                ),
                //1st Page
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'TOM AND JERRRY',
                      style: TextStyle(fontSize: 40),
                    ),
                    Text('Welcome to Tokota Let^s shopl'),
                    Image.network(
                        'https://nostalgiacentral.com/wp-content/uploads/2014/06/tomjerry000.jpg')
                  ],
                ),
                //2nd Page
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'MOTU AND PATLU',
                      style: TextStyle(fontSize: 40),
                    ),
                    Text('Welcome to Tokota Let^s shopl'),
                    Image.network(
                      'https://www.itl.cat/pngfile/big/169-1694796_motu-patlu-hd-wallpaper-motu-patlu-png-hd.jpg',
                    )
                  ],
                ),
                //3rd Page
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(children: [
              RaisedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottom()));
                      },
                      child: Text('Continue'),
                    ),
            ],)
          )
        ],
      ),
    );
  }
}


