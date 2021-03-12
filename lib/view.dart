import 'package:flutter/material.dart';
import 'package:practice3/Carosel.dart';

class ViewPage extends StatefulWidget {
  ViewPage({Key key}) : super(key: key);

  @override
  _ViewPageState createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 50),
            color: Colors.blueGrey[300],
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                        onTap: () => {Navigator.pop(context)},
                        child: Icon(Icons.arrow_back_ios_rounded)),
                    Icon(Icons.ios_share)
                  ],
                ),
                Align(
                  child: Image.network(
                    'https://www.freeiconspng.com/thumbs/dog-png/dog-png-30.png',
                    height: 300,
                  ),
                  alignment: Alignment.topCenter,
                ),
              ],
            ),
          ),
        ),
        Expanded(
            child: Container(
          color: Colors.white70,
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  height: 250,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  ),
            
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 60,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.teal[900],
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 0.0,
                              color: Colors.teal[800],
                              offset: Offset(0.1, 0.1),
                              spreadRadius: 0.0)
                        ]),
                    child: Center(
                        child: Icon(
                      Icons.favorite_border,
                      size: 40,
                      color: Colors.white,
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.teal[900],
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 0.0,
                              color: Colors.teal[800],
                              offset: Offset(0.1, 0.1),
                              spreadRadius: 0.0)
                        ]),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CaroselEx()));
                        },
                        child: Text('Add To Cart',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20))),
                  ),
                ],
              )
            ],
          ),
        )),
      ],
    );
  }
}
