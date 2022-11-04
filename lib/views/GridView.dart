import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  Widget info(String t,Color c){
    return Container(
      padding: EdgeInsets.all(15),
      child: Text(t,style: TextStyle(fontSize: 30),),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            c,
            Colors.blueAccent,
          ],
          end: Alignment.bottomCenter,
          begin: Alignment.topCenter,

        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid View"),
      centerTitle: true,
      automaticallyImplyLeading: false,),
      body: Container(
        padding: EdgeInsets.only(top: 10),
        child: GridView(
          children: [
            info("mostafa 1", Colors.red),
            info("mostafa 2", Colors.black),
            info("mostafa 3", Colors.brown),
            info("mostafa 4", Colors.yellow),
            info("mostafa 5", Colors.green),
            info("mostafa 6", Colors.pink),
            info("mostafa 7", Colors.purple),
            info("mostafa 8", Colors.deepPurpleAccent),
            info("mostafa 1", Colors.red),
            info("mostafa 2", Colors.black),
            info("mostafa 3", Colors.brown),
            info("mostafa 4", Colors.yellow),
            info("mostafa 5", Colors.green),
            info("mostafa 6", Colors.pink),
            info("mostafa 7", Colors.purple),
            info("mostafa 8", Colors.deepPurpleAccent),
          ],
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3/2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,

          ),
        ),
      ),
    );
  }
}


