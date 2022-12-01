import 'package:flutter/material.dart';
import 'package:residemenu/residemenu.dart';

class Page2 extends StatefulWidget {

  @override
  State<Page2> createState() => _State();
}

class _State extends State<Page2> with SingleTickerProviderStateMixin{
  MenuController? m;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    m=MenuController(vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return ResideMenu.scaffold(
      controller: m,
      leftScaffold: MenuScaffold(
        children: [
          Text("data",style: TextStyle(fontSize: 10,color: Colors.black),),
          Text("data3",style: TextStyle(fontSize: 10,color: Colors.black),),
          MaterialButton(onPressed: null,child: Text("bbbb"),),
          MaterialButton(onPressed: null,child: Text("bbbb"),),
          MaterialButton(onPressed: null, child:Icon(Icons.map)),
          // FlatButton.icon(onPressed: null, icon:Icon(Icons.map), label:Text("map")),
          // FlatButton.icon(onPressed: null, icon:Icon(Icons.map), label:Text("map")),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.greenAccent
      ),
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            child: const Icon(Icons.menu),
            onTap: ()=>m!.openMenu(true),
          ),
          title: Text("Reside Menu"),
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(child: Text("custom Drawer"),),
      ),
    );
  }
}

