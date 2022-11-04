import 'package:animated_neumorphic/animated_neumorphic.dart';
import 'package:flutter/material.dart';


class AnimatedNeumorphic extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<AnimatedNeumorphic> {
  double _width = 60.0;
  double _height = 60.0;
  double _depth = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Neumorphic'),
      ),
      backgroundColor: Color(0xFFF2F2F2),
      body: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 32),
              NeumorphicButton(),
              const SizedBox(height: 32),
              AnimatedNeumorphicContainer(
                depth: _depth,
                width: _width,
                height: _height,
                color: const Color(0xFFF2F2F2),
                child: Icon(Icons.timeline),
              ),
              const SizedBox(height: 16),
              Slider(
                value: _width,
                min: 60,
                max: 180,
                onChanged: (v) {
                  setState(() => _width = v);
                },
              ),
              Slider(
                value: _height,
                min: 60,
                max: 180,
                onChanged: (v) {
                  setState(() => _height = v);
                },
              ),
              Slider(
                value: _depth,
                min: 0.0,
                max: 1.0,
                onChanged: (v) {
                  setState(() => _depth = v);
                },
              ),
            ],
          )),
    );
  }
}

class NeumorphicButton extends StatefulWidget {
  const NeumorphicButton({Key? key}) : super(key: key);

  @override
  _NeumorphicButtonState createState() => _NeumorphicButtonState();
}

class _NeumorphicButtonState extends State<NeumorphicButton> {
  bool _isActive = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isActive = !_isActive;
        });
      },
      child: AnimatedNeumorphicContainer(
        depth: _isActive ? 0.0 : 1.0,
        color: Color(0xFFF2F2F2),
        width: 60,
        height: 60,
        radius: 16,
        child: Icon(Icons.access_time),
      ),
    );
  }
}