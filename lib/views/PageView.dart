import 'dart:async';

import 'package:all/main.dart';
import 'package:flutter/material.dart';

class PageViewPage extends StatefulWidget {
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<PageViewPage> {
  List<Data> list_d = [
    Data(
      tit: "Title 1",
      de: "Welcome in Page View Test 1",
      im_url: "q3.jpg",
      i: Icons.add,
    ),
    Data(
      tit: "Title 2",
      de: "Welcome in Page View Test 2",
      im_url: "images/q1.jpg",
      i: Icons.image,
    ),
    Data(
      tit: "Title 3",
      de: "Welcome in Page View Test 3",
      im_url: "images/q2.jpg",
      i: Icons.pages,
    ),
    Data(
      tit: "Title 4",
      de: "Welcome in Page View Test 4",
      im_url: "q4.jpg",
      i: Icons.title,
    ),
  ];
  int x = 0;
  final PageController p=PageController();

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (timer)
    {
      if(x<3){
        x++;
      }
      p.animateToPage(x, duration: Duration(milliseconds: 300),
          curve: Curves.easeIn);
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {'/a': (ctx) => MyApp()},
      home: Scaffold(
          body: Stack(
            children: [
              Builder(
                builder: (cc) => PageView(
                  controller: p,
                  children: list_d.map((item) {
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: ExactAssetImage(item.im_url), fit: BoxFit.cover),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            item.i,
                            size: 140,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            item.tit,
                            style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            item.de,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                  onPageChanged: (v) {
                    setState(() {
                      x = v;
                      if (x == 3) {
                        Future.delayed(Duration(seconds: 2),
                                ()=> Navigator.of(cc).pushNamed('/a'));
                      }
                    });
                  },
                ),
              ),
              Center(child: Dot(x)),
              Builder(
                builder: (ctx) => Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
                    child: MaterialButton(
                      child: Text(
                        "Get Started",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.all(10),
                      onPressed: () {
                        Navigator.of(ctx).pushNamed('/a');
                      },
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class Data {
  final String tit;
  final String de;
  final String im_url;
  final IconData i;

  Data({
    required this.tit,
    required this.de,
    required this.im_url,
    required this.i,
  });
}

class Dot extends StatelessWidget {
  Color c1 = Colors.yellow;
  Color c2 = Colors.red;
  final int i;

  Dot(this.i);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildContainer(i == 0 ? c1 : c2),
        buildContainer(i == 1 ? c1 : c2),
        buildContainer(i == 2 ? c1 : c2),
        buildContainer(i == 3 ? c1 : c2),
      ],
    );
  }

  Container buildContainer(Color c) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 15,
      width: 15,
      decoration: BoxDecoration(
        color: c,
        shape: BoxShape.circle,
      ),
    );
  }
}