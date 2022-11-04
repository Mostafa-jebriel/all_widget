import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  String s;

  Page4(this.s);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("page 4"),
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    "Welcome in Page 4",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.red,
                        backgroundColor: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    s,
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.blueAccent,
                        backgroundColor: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 30,width: 20,),
              RaisedButton(
                child: Text(
                  "Button 1",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.black,
                onPressed: (){},
              ),
              SizedBox(height: 30,width: 20,),
              RaisedButton(
                child: Text(
                  "Button 1",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.black,
                onPressed: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}