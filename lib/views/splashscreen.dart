import 'package:all/main.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatefulWidget {

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SplashScreen(
            seconds: 5,
            title: Text("Splash Screen Test"),
            loaderColor: Colors.red,
            navigateAfterSeconds: MyApp(),
            image: Image.asset('assets/image/flutter1.png'),
            backgroundColor: Colors.grey,
            photoSize: 100.0,

          )
      ),
    );
  }
}
