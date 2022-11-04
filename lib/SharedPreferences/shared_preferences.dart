
import 'package:all/SharedPreferences/SharedPreferences2.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SharedPreferencesPage extends StatefulWidget {

  @override
  State<SharedPreferencesPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SharedPreferencesPage> {

  @override
  void initState() {
    super.initState();
    setData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Preferences'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'click on button to go to the page 2',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          // setData();
          Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Home2()));
        },
      ),
    );
  }
  setData() async{
    SharedPreferences p=await SharedPreferences.getInstance();
    p.setString("n", "mostafa");
    p.setInt("a", 22);
    p.setDouble("d", 170.5);
    p.setBool("b", true);
  }
}

