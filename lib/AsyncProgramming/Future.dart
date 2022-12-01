import 'package:flutter/material.dart';

class Futures extends StatefulWidget {
  @override
  State<Futures> createState() => _MyAppState();

}

class _MyAppState extends State<Futures> {

  int d=0;
  int FutureTest(int y){
    int x=0;
    for(int i=0;i<=y;i++){
      x=x+i;
    }
    return x;
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future(()=>FutureTest(100)),
        builder: (c,s){
          return  Scaffold(
            appBar: AppBar(
              title: Text("Futures"),
              centerTitle: true,
              automaticallyImplyLeading: false,
            ),
            body: Center(
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Text(s.hasData?"${s.data}":"0"),
                  Text("$d"+" new value"),
                  SizedBox(height: 10,),
                  MaterialButton(
                    child: Text("Click me"),
                    onPressed: () {
                      print("Test Futures");
                      setState(() {
                        d=s.data as int;
                        print("$d");
                        d=d+1;
                        print("$d");
                      });
                    },
                  ),
                ],
              )
            ),
          );
        }
    );
  }
}