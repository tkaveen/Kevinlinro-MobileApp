import 'package:flutter/material.dart';

class pagefive extends StatefulWidget {
  @override
  _pagefiveState createState() => _pagefiveState();
}

class _pagefiveState extends State<pagefive> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
}

//   Widget build(BuildContext context) {
//     return Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         decoration: BoxDecoration(
//             gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [Color(0xFFFBC044), Color(0xFFFBC044)],
//         )),
//         child: SingleChildScrollView(
//             child: Column(children: [
//           Container(
//             margin: EdgeInsets.fromLTRB(15, 50, 15, 0),
//             height: 500,
//             width: 800,
//             child: Card(
//               color: Color.fromRGBO(51, 51, 51, 100),
//               child: Column(
//                 children: <Widget>[],
//               ),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10.0),
//               ),
//               elevation: 5,
//               margin: EdgeInsets.all(5),
//             ),
//           )
//         ])));
//   }
// }
