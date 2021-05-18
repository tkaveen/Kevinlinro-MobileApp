import 'package:kevinlinro/bottombar.dart';
import 'package:kevinlinro/pagefive.dart';
import 'package:kevinlinro/pagefour.dart';
import 'package:kevinlinro/pagesix.dart';
import 'package:kevinlinro/pagethree.dart';
import 'package:kevinlinro/pagetwo.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

void main() {
  runApp(MaterialApp(
    home: homepage(),
    theme: themeData,
  ));
}

final ThemeData themeData = ThemeData(
  // accentColor: Colors.redAccent,
  brightness: Brightness.dark,
);

class _homepageState extends State<homepage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 5);
  }

  var selectedItem = 0;

  List children = [pagetwo(), pagethree(), pagefour()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF57CFEA),
      // backgroundColor: Color(0xFFFD866E),
      backgroundColor: Color(0xFFD8992B),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFFBC044), Color(0xFFFBC044)])),
          child: SingleChildScrollView(
              child: Column(children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 50, 155, 0),
              height: 250,
              width: 275,
              child: Card(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 300,
                      height: 82,
                      margin: EdgeInsets.fromLTRB(15, 16, 20, 0),
                      child: Text(
                        'KEVIN',
                        style: TextStyle(
                            fontSize: 75.0,
                            color: Colors.black,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 85,
                      margin: EdgeInsets.fromLTRB(15, 0, 20, 0),
                      child: Text(
                        'LINROOOO',
                        style: TextStyle(
                            fontSize: 75.0,
                            color: Colors.black,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(5),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: TabBar(
                controller: tabController,
                indicatorColor: Colors.transparent,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey.withOpacity(0.6),
                isScrollable: true,
                tabs: <Widget>[
                  Tab(
                    child: Text(
                      'Automobiles',
                      style: TextStyle(
                        fontSize: 33.0,
                        fontFamily: 'Jost',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Information Technology',
                      style: TextStyle(
                        fontSize: 33.0,
                        fontFamily: 'Jost',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Designing',
                      style: TextStyle(
                        fontSize: 33.0,
                        fontFamily: 'Jost',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Modern LifeStyle',
                      style: TextStyle(
                        fontSize: 33.0,
                        fontFamily: 'Jost',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Fasion',
                      style: TextStyle(
                        fontSize: 33.0,
                        fontFamily: 'Jost',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height - 200.0,
              child: TabBarView(
                controller: tabController,
                children: <Widget>[
                  new pagefour(),
                  new pagetwo(),
                  new pagethree(),
                  new pagefive(),
                  new pagesix(),
                ],
              ),
            ),
            // FlatButton(
            //   onPressed: () {
            //     Navigator.of(context).push(MaterialPageRoute(
            //       builder: (context) => pagefour(),
            //     ));
            //     // Navigator.push(context, PageTwo();
            //   },
            //   child: Text("Go to page two"),
            // )
          ]))),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.of(context).push(MaterialPageRoute(
      //       builder: (context) => pagetwo(),
      //     ));
      //   },
      //   backgroundColor: Color(0xFFF17532),
      //   child: Icon(Icons.pages),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: bottombar(),
    );
  }

  listView({List<Widget> childran}) {}
}

void setState(Null Function() param0) {}

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
      ],
    ),
  );
}
