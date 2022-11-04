import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  final String? payload;

  const Test({this.payload});
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
      ),
      body: Center(child: Text(widget.payload!)),
    );
  }
}
