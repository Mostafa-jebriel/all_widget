import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class TimerPage extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<TimerPage> {
  Timer? timer;
  var s=0;
  rstartT(int i) {
    if(timer!=null){
      timer!.cancel();
    }
    setState(() {
      s=i;
    });
    timer=Timer.periodic(Duration(seconds: 1), (timer)=>setState(() {
      s<1? timer.cancel():s-=1;
    }));


  }

  pauseT() {
    if(timer!=null){
      timer!.cancel();
    }
  }

  playT() {
    rstartT(s);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Timer"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("$s",style: TextStyle(fontSize: 70,color:Colors.amber),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton.icon(onPressed: ()=> rstartT(30), icon:Icon(Icons.replay), label:Text("Restart")),
                FlatButton.icon(onPressed: pauseT, icon:Icon(Icons.pause), label:Text("Pause")),
                FlatButton.icon(onPressed: playT, icon:Icon(Icons.play_arrow), label:Text("Play")),
              ],
            )

          ],
        ),
      ),
    );
  }

}


