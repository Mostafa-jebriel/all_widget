import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SphereDensity extends StatefulWidget {
  final double diameter;
  final Offset lightSource;
  final Widget child;
  const SphereDensity({Key? key, required this.child,required this.diameter, required this.lightSource}) : super(key: key);

  @override
  _SphereDensityState createState() => _SphereDensityState();
}

class _SphereDensityState extends State<SphereDensity> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.widget.diameter,
      height: this.widget.diameter,
      decoration: BoxDecoration(
         color: Colors.black,
        shape: BoxShape.circle,
        gradient: RadialGradient(
          center: Alignment(this.widget.lightSource.dx, this.widget.lightSource.dy),

          colors: const [Colors.grey, Colors.black],
        ),

      ),
      child: this.widget.child,
    );

  }
}
