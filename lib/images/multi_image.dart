// import 'package:flutter/material.dart';
// import 'package:multi_image_picker/multi_image_picker.dart';
// import 'dart:io';
// class Multi_I extends StatefulWidget {
//
//   @override
//   State<Multi_I> createState() => _Multi_IState();
// }
//
// class _Multi_IState extends State<Multi_I> {
//   List<Asset> images = <Asset>[];
//
//   Future loadAssets() async {
//     List<Asset> resultList = <Asset>[];
//     String error = 'No Error Detected';
//
//     try {
//       resultList = await MultiImagePicker.pickImages(
//         maxImages: 300,
//         enableCamera: true,
//         selectedAssets: images,
//         cupertinoOptions: CupertinoOptions(takePhotoIcon: "chat"),
//         materialOptions: MaterialOptions(
//           actionBarColor: "#abcdef",
//           actionBarTitle: "Example App",
//           allViewTitle: "All Photos",
//           useDetailsView: false,
//           selectCircleStrokeColor: "#000000",
//         ),
//       );
//     } catch (e) {
//       print(e);
//     }
//
//     setState(() {
//       images = resultList;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Mult Image"),
//           actions: [
//             FlatButton(child: Text("Pick Image"),
//               onPressed: loadAssets,
//             )
//           ],
//         ),
//         body: GridView.count(
//             crossAxisCount:3,
//           children: List.generate(images.length, (index){
//             Asset asset = images[index];
//             return AssetThumb(
//               asset: asset,
//               width: 300,
//               height: 300,
//             );
//           }),
//         ),
//       ),
//     );
//   }
// }
