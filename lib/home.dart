import 'package:flutter/material.dart';
import 'package:practice3/view.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFormat = 1;
  bool isPrassed = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: AnimatedContainer(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: isPrassed ? BorderRadius.circular(24) : null),
        duration: Duration(milliseconds: 500),
        transform: Matrix4.translationValues(xOffset, yOffset, 0)
          ..scale(scaleFormat),
        child: Column(
          children: [
            // SizedBox(
            //   height: 40,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isPrassed
                      ? IconButton(
                          icon: Icon(Icons.arrow_back_ios_rounded),
                          onPressed: () {
                            setState(() {
                              xOffset = 0;
                              yOffset = 0;
                              scaleFormat = 1;
                              isPrassed = false;
                            });
                          })
                      : IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () {
                            setState(() {
                              xOffset = 200;
                              yOffset = 150;
                              scaleFormat = 0.6;
                              isPrassed = true;
                            });
                          }),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Location',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green[100]),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 2),
                            child: Icon(
                              Icons.location_on,
                              color: Colors.teal[600],
                            ),
                          ),
                          Text(
                            'Haldia, IT-park',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                  CircleAvatar()
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical:20),
              decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(24)
                      ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    margin: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 0.2,
                            color: Colors.black38,
                            offset: Offset(0.2, 0.2),
                            spreadRadius: 0.1
                          )
                        ]
                        ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.search),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text('Search for your product'),
                            ),
                          ],
                        ),
                        Icon(Icons.tune_outlined)
                      ],
                    ),
                  ),
                  // Container(

                  // ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ViewPage()));
                    },
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      height: 240,
                      child: Row(
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.blueGrey[300],
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          spreadRadius: 0.0,
                                          // blurRadius:2.0,
                                          color: Colors.white30,
                                          offset: const Offset(0.1, 0.1),
                                        )
                                      ]),
                                  margin: const EdgeInsets.only(top: 40),
                                ),
                                Image.network(
                                  'https://www.freeiconspng.com/thumbs/dog-png/dog-png-30.png',
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(top: 65, bottom: 25),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(24),
                                      bottomRight: Radius.circular(24)),
                                  boxShadow: [
                                    BoxShadow(
                                      spreadRadius: 0.0,
                                      // blurRadius:2.0,
                                      color: Colors.black38,
                                      offset: const Offset(0.1, 0.1),
                                    )
                                  ]),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Rocky',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                  Text('Amarican Dog',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                  Text(
                                    '(1.5 years old)',
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2),
                                        child: Icon(Icons.location_on,
                                            color: Colors.teal[600]),
                                      ),
                                      Text(
                                        'Distance: 7.5 km',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,color: Colors.teal[600]),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    height: 240,
                    child: Row(
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.blueGrey[300],
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        spreadRadius: 0.0,
                                        // blurRadius:2.0,
                                        color: Colors.white30,
                                        offset: const Offset(0.1, 0.1),
                                      )
                                    ]),
                                margin: const EdgeInsets.only(top: 40),
                              ),
                              Image.network(
                                'https://www.freeiconspng.com/thumbs/dog-png/dog-png-30.png',
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(top: 65, bottom: 25),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(24),
                                    bottomRight: Radius.circular(24)),
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 0.0,
                                    // blurRadius:2.0,
                                    color: Colors.black38,
                                    offset: const Offset(0.1, 0.1),
                                  )
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Rocky',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                                Text('Amarican Dog',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                                Text(
                                  '(1.5 years old)',
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2),
                                      child: Icon(Icons.location_on,
                                          color: Colors.teal[600]),
                                    ),
                                    Text(
                                      'Distance: 7.5 km',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,color: Colors.teal[600]),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
