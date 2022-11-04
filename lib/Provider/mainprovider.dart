import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'package:provider/provider.dart';
import 'my_provider.dart';

class MainProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyProvider>(
      create: (_) => MyProvider(),
      child: CounterPro(),
    );
  }
}

class CounterPro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Dashboard(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Provider.of<MyProvider>(context, listen: false).increment();
        },
      ),
    );
  }
}
