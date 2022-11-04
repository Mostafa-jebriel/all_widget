import 'package:all/3d_ball/shpere_ball.dart';
import 'package:flutter/material.dart';


class Ball3D extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('8-Ball'),
        ),
        body: Container(
            margin: const EdgeInsets.all(8),
            child: Column(
              children: [
                //const SphereDensity(diameter:200),
                const SphereBall(),

              ],
            )
        )
    );
  }
}
