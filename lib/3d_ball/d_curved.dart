import 'package:flutter/material.dart';

class DCurved extends StatelessWidget {
  final Offset lightSource;
  final Widget child;
  const DCurved({super.key, required this.lightSource,required this.child});
  @override
  Widget build(BuildContext context) {
    final inn=lightSource.distance*0.1;
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
        gradient: RadialGradient(
         // center: Alignment(this.widget.lightSource.dx, this.widget.lightSource.dy),

          stops: [1-inn,1],
          colors: const [Color(0x661f1f1f), Colors.black],
        ),

      ),
      child: this.child,
    );
  }
}
