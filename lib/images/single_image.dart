
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Single_I extends StatefulWidget {
  @override
  _Single_IState createState() => _Single_IState();
}

class _Single_IState extends State<Single_I> {

  File? image;
  String? s;
  @override

  final p = ImagePicker();

  Future getimage(ImageSource s) async {
    final pic = await p.getImage(source: s);
    setState(() {
      if (pic != null) {
        image = File(pic.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Single Image"),
        ),
        body: Center(
          child: image==null?Text("No Image"):Image.file(image!),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_a_photo),
          onPressed: () {
            AlertDialog ad = AlertDialog(
              title: Text("Choose Photo From : "),
              content: Container(
                height: 150,
                child: Column(
                  children: [
                    Divider(
                      color: Colors.black,
                    ),
                    Container(
                      width: 300,
                      color: Colors.blueGrey,
                      child: ListTile(
                        leading: Icon(Icons.camera_alt),
                        title: Text("Camer"),
                        onTap: () {
                          getimage(ImageSource.camera);
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 300,
                      color: Colors.blueGrey,
                      child: ListTile(
                        leading: Icon(Icons.image),
                        title: Text("Gallery"),
                        onTap: () {
                          getimage(ImageSource.gallery);
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
            showDialog(
                context: context,
                builder: (BuildContext co) {
                  return ad;
                });
          },
        ),
      ),
    );
  }
}
