
import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';




class mailer_send extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<mailer_send> {

  sendMail() async {
    String username = 'mostafajebriel.69@gmail.com';
    String password = 'toty2012';

    final smtpServer = gmailSaslXoauth2(username, password);
    final message = Message()
      ..from = Address(username)
      ..recipients.add('mostafajebriel.69@gmail.com')
      ..subject = 'Mail using mailer package :: 😀 :: ${DateTime.now()}'
      ..text = 'This is the plain text.\nThis is line 2 of the text part.'
      ..html = "<h1>Write the content here</h1>\n<p>Hey! its easy use html tags for alignments</p>";

    try {
      final sendReport = await send(message, smtpServer);
      print('Message sent: ' + sendReport.toString());
      //Toast.show("You have clicked the Button! and email sent", context, duration: 3, gravity:  Toast.CENTER);
    } on MailerException catch (e) {
      print('Message not sent.');
      print(e.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('mailer'),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: sendMail,
          splashColor: Colors.blueGrey,
          color: Colors.blue,
          child: Text('click',style: TextStyle(color: Colors.black,
              fontSize: 20.0),
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}