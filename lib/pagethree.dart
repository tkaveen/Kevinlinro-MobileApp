import 'package:kevinlinro/pagefour.dart';
import 'package:flutter/material.dart';

class pagethree extends StatefulWidget {
  @override
  _pagethreeState createState() => _pagethreeState();
}

class _pagethreeState extends State<pagethree> {
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
    )
    );
  }

  Widget getDesign(String imgPath) {
    return SingleChildScrollView(
      child:Padding(
        padding:
            EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
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
