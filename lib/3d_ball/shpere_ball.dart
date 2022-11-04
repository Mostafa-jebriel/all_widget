import 'package:all/3d_ball/d_curved.dart';
import 'package:all/3d_ball/shadow_sphere.dart';
import 'package:all/3d_ball/sphere_density.dart';
import 'package:all/3d_ball/traiangle.dart';
import 'package:flutter/cupertino.dart';

class SphereBall extends StatefulWidget {
  const SphereBall({Key? key}) : super(key: key);

  @override
  _SphereBallState createState() => _SphereBallState();
}

class _SphereBallState extends State<SphereBall> {
  static const lightSource = Offset(0, -0.75);

  @override
  Widget build(BuildContext context) {
    final size = Size.square(MediaQuery.of(context).size.shortestSide);

    return Stack(
      children: [
        ShadowSphere(diameter: size.shortestSide),
        SphereDensity(
          lightSource: lightSource,
          diameter: size.shortestSide,
          child: Transform(
            origin: size.center(Offset.zero),
            transform: Matrix4.identity()..scale(0.5),
            child: DCurved(
              lightSource: lightSource,
              child: Triangle(text: 'MMj'),
            ),
          ),
        ),
      ],
    );
  }
}
