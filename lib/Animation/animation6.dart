import 'package:flutter/material.dart';

class Animation6 extends StatefulWidget {
  @override
  State<Animation6> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Animation6> with SingleTickerProviderStateMixin{
 double h=100;
 AnimationController? c;
 Animation<Size>? a;
 @override
  void initState() {
    super.initState();
    c = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    )..repeat();
    a = Tween<Size>(
      begin:Size(200,100),
      end: Size(200,300),
    ).animate(CurvedAnimation(
      parent: c!,
      curve: Curves.linear,
    ));
    c?.addListener(() {setState(() {});});
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Animated Padding'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
           FlutterLogo(size: a?.value.height,),
            ListTile(
              trailing: Icon(Icons.arrow_forward),
              title: Text("Forward"),
              tileColor: Colors.greenAccent,
              onTap: ()=>c?.forward(),
            ),
            ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text("Backward"),
              tileColor: Colors.deepOrange,
              onTap: ()=>c?.reverse(),
            ),
          ],
        ),
      ),
    );
  }
}
