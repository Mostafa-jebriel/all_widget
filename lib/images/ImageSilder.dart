import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';




class ImageSlider extends StatefulWidget {
  @override
  State<ImageSlider> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ImageSlider> {
  final GlobalKey<ScaffoldState> _x=GlobalKey<ScaffoldState>();
  List image=[
    'assets/image/s1.jpg',
    'assets/image/s2.jpg',
    'assets/image/s3.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _x,
      appBar: AppBar(
        title: Text('Image Slider'),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(height: 30,),
          Text("Image Slider way 1",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,color: Colors.red),),
          SizedBox(height: 10,),
          CarouselSlider(
            options:CarouselOptions(height: 200,initialPage: 0),
            items: image.map((x){
              return Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset(x,fit: BoxFit.fill,),
              );
            }).toList(),

          ),
          SizedBox(height: 50,),
          Text("Image Slider way 2",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,color: Colors.red),),
          SizedBox(height: 10,),
          CarouselSlider.builder(
              itemCount: image.length,
              itemBuilder: ( _,int i,int r){
                return Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  child: Image.asset(image[i],fit: BoxFit.fill,),
                );
              },
              options: CarouselOptions(
                height: 200,initialPage: 0,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayInterval:Duration(seconds: 1),
                scrollDirection: Axis.vertical,
                enableInfiniteScroll: false,


              )
          )
        ],
      ),
    );
  }
}