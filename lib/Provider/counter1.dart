import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'my_provider.dart';
class Counter1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        width: 150,
        height: 150,
        child: Center(
          child: Text(Provider.of<MyProvider>(context).c.toString(), style: TextStyle(fontSize: 40)),
        ),
      ),
    );
  }
}
