import 'package:flutter/material.dart';
import 'single_image.dart';
import 'multi_image.dart';



class PickImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text(" single image"),
                color: Colors.indigo,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () {
                  go1(context);
                },
              ),
              RaisedButton(
                child: Text(" Mlut image"),
                color: Colors.indigo,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  //   return Multi_I();
                  // }));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void go1(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Single_I();
    }));
  }
}
