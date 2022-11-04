import 'package:flutter/material.dart';

class ListWheel extends StatefulWidget {

  @override
  State<ListWheel> createState() => _ListWheelState();
}

class _ListWheelState extends State<ListWheel> {
  List<String> names=List.generate(16, (index) => "Mostafa ${index}");
  List<Color> c=List.generate(16, (index) => Colors.primaries[index]);
  int i=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Wheel'),
      automaticallyImplyLeading: false,
      centerTitle: true,),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListWheelScrollView(
          itemExtent: 100,
          children: names.map((String n){
            return Container(
              decoration: BoxDecoration(
                  color: c[i++],
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 2,color: Colors.black)
              ),
              padding: EdgeInsets.all(10),
              child: Center(
                child: Text(n,style: TextStyle(fontSize: 30,color: Colors.white),),
              ),
            );
          }).toList(),
        ),

      ),
    );
  }
}
