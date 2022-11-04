import 'package:all/Dialog/page/home_page.dart';
import 'package:flutter/material.dart';


class MainDialog extends StatelessWidget {
  static final String title = 'Dialogs Example';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: HomePage(),
      );
}
