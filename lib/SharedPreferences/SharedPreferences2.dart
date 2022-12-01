import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Home2 extends StatefulWidget {
  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  String _n="n";
  int a=0;
  double d=0;
  bool b=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preferences"),
      ),
      body: Center(
        child: DefaultTextStyle(
          style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold,color: Colors.red),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Name:"+_n),
              Text("Age: $a"),
              Text("Double: $d"),
              Text("bool: $b"),
              MaterialButton(
                child: Text("Get Data"),
                onPressed: () async {
                  await getData();
                  // setState(() {
                  //   getData();
                  // });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
  getData() async{
    SharedPreferences p=await SharedPreferences.getInstance();
    setState(() {
      _n=p.getString("n")==null?"":p.getString("n")!;
      a=p.getInt("a")==null?0:p.getInt("a")!;
      d=p.getDouble("d")==null?0.0:p.getDouble("d")!;
      b=p.getBool("b")==null?false:p.getBool("b")!;

    });
  }
  deleteData() async{
    SharedPreferences p=await SharedPreferences.getInstance();
    p.remove("n");
    p.remove("a");
    p.remove("d");
    p.remove("b");
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    deleteData();
    print("done");
  }
}
