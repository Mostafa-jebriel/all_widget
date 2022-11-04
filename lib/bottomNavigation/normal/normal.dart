import 'package:all/pages/page2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NormalBottom extends StatefulWidget {
  @override
  _NormalBottomState createState() => _NormalBottomState();
}

class _NormalBottomState extends State<NormalBottom> {
  int pages = 0;
  void bottom_bar(int x) {
    setState(() {
      pages = x;
    });
  }

  List<Widget> pagess = [
    Scaffold(
      body: Center(
          child: Column(
            children: [
              Text(
                "test tab bar text1",
                style: TextStyle(fontSize: 30, color: Colors.red),
              ),
              Builder(
                  builder: (ctx) => FlatButton(
                      child: Text("Reside Menu"),
                      onPressed: () => Navigator.push(ctx,
                          MaterialPageRoute(builder: (_) => Page2())))),
            ],
          )
      ),
    ),
    Scaffold(
      body: Center(
        child: Text(
          "test tab bar text2",
          style: TextStyle(fontSize: 30, color: Colors.blue),
        ),
      ),
    ),
    Scaffold(
      body: Center(
        child: Text(
          "test tab bar text3",
          style: TextStyle(fontSize: 30, color: Colors.red),
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Normal Bottom Navigation"),
        centerTitle: true,
      ),
      body: pagess[pages],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_page_rounded),
            label: "page 1",

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_page_rounded),
            label: "page 2",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_page_rounded),
            label: "page 3",
          ),
        ],
        selectedItemColor: Colors.black,
        backgroundColor: Colors.blueGrey,
        unselectedItemColor: Colors.white,
        currentIndex: pages,
        onTap: bottom_bar,
      ),
    );
  }
}
