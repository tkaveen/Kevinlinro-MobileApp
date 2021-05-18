import 'dart:ui';

import 'package:kevinlinro/pagethree.dart';
import 'package:flutter/material.dart';

class pagetwo extends StatefulWidget {
  @override
  final imgPath, title;

  pagetwo({this.imgPath, this.title});

  _pagetwoState createState() => _pagetwoState();
}

class _pagetwoState extends State<pagetwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/it1.JPG'), fit: BoxFit.cover)),
      ),
      BackdropFilter(
        filter: new ImageFilter.blur(sigmaX: 4, sigmaY: 4),
        child: Container(
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.0)),
        ),
      ),
      Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(children: <Widget>[
                    getDesign('assets/des1.jpg'),
                    getDesign('assets/des2.jpg'),
                    getDesign('assets/des3.jpg'),
                    SizedBox(
                      height: 15.0,
                    )
                  ]),
                  Column(children: <Widget>[
                    SizedBox(
                      height: 25.0,
                    ),
                    getDesign('assets/des4.jpg'),
                    getDesign('assets/des5.jpg'),
                    getDesign('assets/des6.jpg'),
                  ])
                ],
              )
            ],
          ))
    ]

            // Container(
            //   margin: EdgeInsets.fromLTRB(20, 50, 155, 0),
            //   height: 250,
            //   width: 275,
            //   child: Card(
            //     child: Column(
            //       children: <Widget>[
            //         Container(
            //           width: 300,
            //           height: 82,
            //           margin: EdgeInsets.fromLTRB(15, 16, 20, 0),
            //           child: Text(
            //             'KEVIN',
            //             style: TextStyle(
            //                 fontSize: 75.0,
            //                 color: Colors.black,
            //                 fontFamily: 'Jost',
            //                 fontWeight: FontWeight.bold),
            //           ),
            //         ),
            //         Container(
            //           width: 300,
            //           height: 85,
            //           margin: EdgeInsets.fromLTRB(15, 0, 20, 0),
            //           child: Text(
            //             'LINRO',
            //             style: TextStyle(
            //                 fontSize: 75.0,
            //                 color: Colors.black,
            //                 fontFamily: 'Jost',
            //                 fontWeight: FontWeight.bold),
            //           ),
            //         )
            //       ],
            //     ),
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(10.0),
            //     ),
            //     elevation: 5,
            //     margin: EdgeInsets.all(5),
            //   ),
            // ),

            ));
  }

  Widget getDesign(String imgPath) {
    return SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.only(
                left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
            child: Container(
              height: 200.0,
              width: (MediaQuery.of(context).size.width / 2) - 20.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2.0,
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2.0,
                    )
                  ]),
              child: Column(children: <Widget>[
                Stack(children: <Widget>[
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                      image: DecorationImage(
                          image: AssetImage(imgPath), fit: BoxFit.cover),
                    ),
                  ),
                ])
              ]),
            )));
  }

  _buildlist(String imgPath, String placeName) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 175.0,
            width: 150.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                image: DecorationImage(
                  image: AssetImage(imgPath),
                  fit: BoxFit.cover,
                  // colorFilter: ColorFilter.mode(
                  // Colors.black.withOpacity(0.7), BlendMode.darken)
                )),
          ),
          // Positioned(
          //   top: 15.0,
          //   right: 15.0,
          //   child: Container(
          //     height: 25.0,
          //     width: 25.0,
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(5.0),
          //         color: Colors.white),
          //     child: Center(
          //       child: Icon(
          //         Icons.bookmark_border,
          //         color: Color(0xFFFD4F99),
          //         size: 14.0,
          //       ),
          //     ),
          //   ),
          // ),
          // Positioned(
          //   top: 125.0,
          //   left: 15.0,
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //   ),
          // )
        ],
      ),
    );
  }
}
