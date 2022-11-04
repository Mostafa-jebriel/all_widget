
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

class ConvertImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Homea();
  }
}

class Homea extends StatefulWidget {

  @override
  State<Homea> createState() => _HomeaState();
}

class _HomeaState extends State<Homea> {
  File? image;
  Uint8List? bytes;
  String?  img64;
  List<String>images=[];
  ImagePicker imagep = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20,),
            CircleAvatar(
              child: image==null?Text("no image"):Image.file(image!),
              radius:80,
              backgroundColor: Colors.transparent,
            ),
            SizedBox(height: 20,),
            MaterialButton(onPressed: (){Get_Image();},
              child: Text('Up'),),
            SizedBox(height: 20,),
            CircleAvatar(
              child: img64==null?Text("no image"):Image.memory(
                base64Decode(img64!),
              ),
              radius: 80,
              backgroundColor: Colors.transparent,
            ),
            SizedBox(height: 20,),
            MaterialButton(onPressed: (){
              ConvertImage(image);
            },
              child: Text('Convert'),),
          ],
        ),
      ),
    );
  }
  Future Get_Image() async {
    final img = await imagep.pickImage(source: ImageSource.camera);
    setState(() {
      image = File(img!.path);
    });
    //ConvertImage(image);
  }

  void ConvertImage(File? image) {
    setState(() {
      bytes=File(image!.path).readAsBytesSync();
      img64=base64Encode(bytes!);
      images.add(img64!);
    });
    print(img64);
    print(base64Decode(img64!));
  }
}