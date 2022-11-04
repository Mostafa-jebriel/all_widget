import 'package:all/bottomNavigation/pages/add.dart';
import 'package:all/bottomNavigation/pages/home.dart';
import 'package:all/bottomNavigation/pages/profile.dart';
import 'package:all/pages/page2.dart';
import 'package:flutter/material.dart';

class TabBarPage extends StatelessWidget {
  int x=0,y=0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          backgroundColor: Colors.blueGrey,
          automaticallyImplyLeading: false,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.contact_page_rounded),
                text: ("page 1"),
              ),
              Tab(
                icon: Icon(Icons.home),
                text: ("home"),
              ),
              Tab(
                icon: Icon(Icons.add),
                text: ("add"),
              ),
              Tab(
                icon: Icon(Icons.people),
                text: ("people"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Page2(),
            Home(),
            Add(),
            Profile(),
          ],
        ),
      ),
    );
  }
}
