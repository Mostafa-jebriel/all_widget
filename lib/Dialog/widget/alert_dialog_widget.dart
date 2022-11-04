import 'package:all/Dialog/widget/button_widget.dart';
import 'package:flutter/material.dart';

class AlertDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ButtonWidget(
        text: 'Alert Dialog',
        onClicked: () => showAlertDialog(context),
      );

  void showAlertDialog(BuildContext context) => showDialog(
        context: context,
        builder:(BuildContext context) => AlertDialog(
          title: Text('Sample Alert Dialog'),
          content: Text(
            'This is an implementation of the AlertDialog widget in Flutter',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Close'),
            )
          ],
        ),
      );
}
