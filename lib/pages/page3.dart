import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    "Welcome in Page 3",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.red,
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