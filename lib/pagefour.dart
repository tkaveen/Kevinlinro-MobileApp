import 'package:flutter/material.dart';

class pagefour extends StatefulWidget {
  @override
  _pagefourState createState() => _pagefourState();
}

class _pagefourState extends State<pagefour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFFBC044), Color(0xFFD8992B)],
          )),
          padding: EdgeInsets.only(left: 15.0, right: 15.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                // SizedBox(height: 35.0),
                // Align(
                //   alignment: Alignment.topRight,
                //   child: IconButton(
                //     icon: Icon(Icons.close),
                //     onPressed: () {},
                //   ),
                // ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 155, 0),
                  // height: 250,
                  // width: 275,
                  // child: Card(
                  //   child: Column(
                  //     children: <Widget>[
                  //       Container(
                  //         width: 300,
                  //         height: 82,
                  //         margin: EdgeInsets.fromLTRB(15, 16, 20, 0),
                  //         child: Text(
                  //           'KEVIN',
                  //           style: TextStyle(
                  //               fontSize: 75.0,
                  //               color: Colors.black,
                  //               fontFamily: 'Jost',
                  //               fontWeight: FontWeight.bold),
                  //         ),
                  //       ),
                  //       Container(
                  //         width: 300,
                  //         height: 85,
                  //         margin: EdgeInsets.fromLTRB(15, 0, 20, 0),
                  //         child: Text(
                  //           'LINRO',
                  //           style: TextStyle(
                  //               fontSize: 75.0,
                  //               color: Colors.black,
                  //               fontFamily: 'Jost',
                  //               fontWeight: FontWeight.bold),
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(10.0),
                  //   ),
                  //   elevation: 5,
                  //   margin: EdgeInsets.all(5),
                  // ),
                ),
                // SizedBox(
                //   height: 15.0,
                // ),
                // TextField(
                //   decoration: InputDecoration(
                //       hintText: 'Enter Your ZIP code',
                //       hintStyle: TextStyle(color: Colors.white),
                //       prefixIcon: Icon(
                //         Icons.arrow_forward_ios,
                //         color: Colors.white,
                //       ),
                //       border: InputBorder.none),
                // ),
                // SizedBox(
                //   height: 10.0,
                // ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 0, 20, 0),
                        child: Image.asset(
                          'assets/porsche.png',
                          fit: BoxFit.cover,
                          height: 200.0,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 40, 20, 0),
                        child: Image.asset(
                          'assets/lambo.png',
                          fit: BoxFit.cover,
                          height: 157.0,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 0, 20, 50),
                        child: Image.asset(
                          'assets/por2.png',
                          fit: BoxFit.cover,
                          height: 193.0,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 0, 20, 50),
                        child: Image.asset(
                          'assets/tes.png',
                          fit: BoxFit.cover,
                          height: 153.0,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 50, 20, 50),
                        child: Image.asset(
                          'assets/evo.webp',
                          fit: BoxFit.cover,
                          height: 133.0,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
