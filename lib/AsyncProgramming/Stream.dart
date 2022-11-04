import 'package:flutter/material.dart';

class Streams extends StatefulWidget {
  @override
  State<Streams> createState() => _MyAppState();

}

class _MyAppState extends State<Streams> {

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
    return StreamBuilder(
        stream: Stream.periodic(Duration(seconds: 1), (a) => a),
        builder: (c,s){
          int x=s.data as int;
          return  Scaffold(
            appBar: AppBar(
              title: Text("Stream"),
              centerTitle: true,
              automaticallyImplyLeading: false,
            ),
            body: Center(
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Text((s.hasData && x<=10)?"${s.data}":"0"),
                    Text("$d"+" new value"),
                    SizedBox(height: 10,),
                    RaisedButton(
                      child: Text("Click me"),
                      onPressed: () {
                        print("Test stream");
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