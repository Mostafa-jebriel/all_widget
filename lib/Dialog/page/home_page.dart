
import 'package:all/Dialog/maindialof.dart';
import 'package:all/Dialog/rating_dialog.dart';
import 'package:all/Dialog/widget/about_dialog_widget.dart';
import 'package:all/Dialog/widget/alert_dialog_widget.dart';
import 'package:all/Dialog/widget/custom_dialog_widget.dart';
import 'package:all/Dialog/widget/simple_dialog_widget.dart';
import 'package:flutter/material.dart';

import '../select_dialog.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(MainDialog.title),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SimpleDialogWidget(),
              SizedBox(height: 8),
              AlertDialogWidget(),
              SizedBox(height: 8),
              CustomDialogWidget(),
              SizedBox(height: 8),
              AboutDialogWidget(),
              SizedBox(height: 8),
              MaterialButton(
                child: Text(
                  'Select Dialog',
                  style: TextStyle(fontSize: 24),
                ),
                shape: StadiumBorder(),
                color: Theme.of(context).accentColor,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                textColor: Colors.white,
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return SelectDialogPage();
                  }));
                },
              ),
              SizedBox(height: 8),
              MaterialButton(
                child: Text(
                  'RatingDialog',
                  style: TextStyle(fontSize: 24),
                ),
                shape: StadiumBorder(),
                color: Theme.of(context).accentColor,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                textColor: Colors.white,
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return RatingDialogPage();
                  }));
                },
              ),
            ],
          ),
        ),
      );
}
