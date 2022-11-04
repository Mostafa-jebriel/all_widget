import 'package:flutter/material.dart';



class ListViewPage extends StatefulWidget {
  @override
  State<ListViewPage> createState() => _MyAppState();
}

class _MyAppState extends State<ListViewPage> {

  Color b=Colors.blue;
  Color r=Colors.red;
  Color g=Colors.green;
  List<Info> mlist=[
    Info(name: "mostafa 1", x: 20, d: DateTime.now().year),
    Info(name: "mostafa 2", x: 21, d: DateTime.now().year),
    Info(name: "mostafa 3", x: 22, d: DateTime.now().year),
    Info(name: "mostafa 4", x: 23, d: DateTime.now().year),
    Info(name: "mostafa 5", x: 24, d: DateTime.now().year),
    Info(name: "mostafa 6", x: 25, d: DateTime.now().year),
    Info(name: "mostafa 7", x: 26, d: DateTime.now().year),
    Info(name: "mostafa 8", x: 27, d: DateTime.now().year),
    Info(name: "mostafa 9", x: 25, d: DateTime.now().year),
    Info(name: "mostafa 10", x: 26, d: DateTime.now().year),
    Info(name: "mostafa 11", x: 27, d: DateTime.now().year),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View & Card",),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        //color: Colors.black,
        child: ListView(
          children: <Widget>[
            ...mlist.map((val){
              return Container(
                padding: EdgeInsets.all(5),
                child: Card(
                  color: Colors.brown,
                  shadowColor: r,
                  elevation: 15,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(val.name,style: TextStyle(fontSize: 30,color: b),),
                          Text("\t\t\t\t${val.x}",style: TextStyle(fontSize: 20,color:r ),),
                        ],),
                      Text("\t${val.d}",style: TextStyle(fontSize: 20,color:g ),)
                    ],),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}


class Info{
  String name;
  int x;
  int d;


  Info({
    required this.name,
    required this.x,
    required this.d,
  });
}


