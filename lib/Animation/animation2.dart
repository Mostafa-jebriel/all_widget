import 'package:flutter/material.dart';


class Animation2 extends StatefulWidget {

  @override
  _AnimatedContainerAppState createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<Animation2> {
  bool v=true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Animated Container'),
        ),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black12,
            ),
            Center(
              child: Text("Animation",style: TextStyle(fontSize: 30,color: Colors.red),),
            ),
            AnimatedPositioned(
              duration: Duration(seconds: 2 ),
              bottom: v==true?250:450,
              right: 100,
              child: Container(
                width: 200,
                height: 150,
                color: Colors.blue,
              ),
            ),

          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.play_arrow),
          onPressed: () {
            setState(() {
              v=!v;
            });

          },

        ),
      ),
    );
  }
}