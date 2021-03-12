import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:practice3/Pageview.dart';

class CaroselEx extends StatefulWidget {
  CaroselEx({Key key}) : super(key: key);

  @override
  _CaroselExState createState() => _CaroselExState();
}

class _CaroselExState extends State<CaroselEx> {
  String s;
  void change(){
    setState(() {
      // s='Your text';
      s=s;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Center(
             child:
             CarouselSlider(
  options: CarouselOptions(height: 400.0,
  enlargeCenterPage: true,
  // autoPlay: true,
  autoPlayAnimationDuration: Duration(milliseconds: 1200)
  ),
  items: [1,2,3,4,5].map((i) {
    return Builder(
      builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              // margin: EdgeInsets.symmetric(horizontal: 25.0),
              decoration: BoxDecoration(
                color: Colors.amber
              ),
              child: Text('text $i', style: TextStyle(fontSize: 16.0),)
            );
      },
    );
  }).toList(),
)

           ),
          TextField(
            onChanged: (text){
              s=text;
            },
          ),
          RaisedButton(onPressed: (){
            // change();
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Pageview(),
            
            )
            );
          }
          ),
          Text('$s'),
         ],
       ),
    );
  }
}

