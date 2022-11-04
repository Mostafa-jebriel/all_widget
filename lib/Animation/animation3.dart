import 'package:flutter/material.dart';

class Animation3 extends StatefulWidget {
  @override
  State<Animation3> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Animation3> {
  double padValue = 0.0;
  void _updatePadding(double value) {
    setState(() {
      padValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Animated Padding'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedPadding(
              padding: EdgeInsets.all(padValue),
              duration: const Duration(seconds: 2),
              curve: Curves.easeInOut,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 5,
                color: Colors.blue,
              ),
            ),
            Text('Padding: $padValue'),
            ElevatedButton(
                child: const Text('Change padding'),
                onPressed: () {
                  _updatePadding(padValue == 0.0 ? 100.0 : 0.0);
                }),
          ],
        ),
      ),
    );
  }
}
