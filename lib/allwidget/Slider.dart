import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double d = 0.0,d2 = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              color: Colors.blue,
              width: d,
              height: d2,
            ),
            Text(
              "Value ${(d).round()}",
              style: TextStyle(fontSize: 30),
            ),
            Slider(
              value: d,
              onChanged: (double dd) {
                setState(() {
                  d = dd;
                });
              },
              max: 500,
              min: 0,
              divisions: 100,
              label: "width",
              activeColor: Colors.red,
              inactiveColor: Colors.green,
            ),
            Slider(
              value: d2,
              onChanged: (double d1) {
                setState(() {
                  d2 = d1;
                });
              },
              max: 300,
              min: 0,
              divisions: 100,
              label: "height",
              activeColor: Colors.brown,
              inactiveColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
