import 'package:flutter/material.dart';

class TextFormPage extends StatefulWidget {
  @override
  State<TextFormPage> createState() => _TextFormState();
}

class _TextFormState extends State<TextFormPage> {
  bool v = true;
  var myc = TextEditingController();
  var myc2 = TextEditingController();
  var s = "";
  int s2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Form'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: ("E-Mail"), prefixIcon: Icon(Icons.email)),
                keyboardType: TextInputType.emailAddress,
                validator: (val) {
                  if (val!.isEmpty || !val.contains("@")) {
                    return "Invalid email";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: ("Password"),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),

                ),
                obscureText: true,
                validator: (val) {
                  if (val!.isEmpty || val.length <= 5) {
                    return "Password is to short";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: ("Frist Name"),
                  labelStyle: TextStyle(fontSize: 20),
                  hintText: ("Enter Your Name"),
                  hintStyle: TextStyle(fontSize: 10),
                  icon: Icon(Icons.drive_file_rename_outline),
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: ("Seced Name"),
                  labelStyle: TextStyle(fontSize: 20),
                  hintText: ("Enter Your Name"),
                  hintStyle: TextStyle(fontSize: 10),
                  icon: Icon(Icons.drive_file_rename_outline),
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: ("Number"),
                  labelStyle: TextStyle(fontSize: 20),
                  hintText: ("Enter Your Number"),
                  hintStyle: TextStyle(fontSize: 10),
                  icon: Icon(Icons.confirmation_number),
                ),
                keyboardType: TextInputType.number,
                controller: myc,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: ("Email"),
                  labelStyle: TextStyle(fontSize: 20),
                  hintText: ("Enter Your Email"),
                  hintStyle: TextStyle(fontSize: 10),
                  icon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: ("password show"),
                  labelStyle: TextStyle(fontSize: 20),
                  hintText: ("Enter Your password"),
                  hintStyle: TextStyle(fontSize: 10),
                  icon: Icon(Icons.password),
                ),
                keyboardType: TextInputType.visiblePassword,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: ("password hide"),
                  labelStyle: TextStyle(fontSize: 20),
                  hintText: ("Enter Your password"),
                  hintStyle: TextStyle(fontSize: 10),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        v = !v;
                        // icon: Icon(Icons.visibility),
                      });
                    },
                    icon: Icon(v ? Icons.visibility : Icons.visibility_off),
                  ),
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: v,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: s,
                  labelStyle: TextStyle(fontSize: 20),
                  hintText: ("Enter Your Number"),
                  hintStyle: TextStyle(fontSize: 10),
                  suffixIcon: Icon(Icons.confirmation_number),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: ("Email"),
                  labelStyle: TextStyle(fontSize: 20),
                  hintText: ("Enter Your Email"),
                  hintStyle: TextStyle(fontSize: 10),
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: ("age"),
                  labelStyle: TextStyle(fontSize: 20),
                  hintText: ("Enter Your year"),
                  hintStyle: TextStyle(fontSize: 10),
                  prefixIcon: Icon(Icons.email),
                ),
                controller: myc2,
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text(
                "your age $s2",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    //s=myc.text;
                    int x = int.parse(myc2.text);
                    var d = DateTime.now().year - x;
                    s2 = d;
                  });
                },
                child: Text(
                  "click",
                  style: TextStyle(fontSize: 15, color: Colors.blue),
                ),
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      )),
    );
  }
}
