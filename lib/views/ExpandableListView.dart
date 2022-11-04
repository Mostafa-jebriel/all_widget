
import 'package:all/pages/page2.dart';
import 'package:flutter/material.dart';



class ExpandableListView extends StatefulWidget {
  @override
  State<ExpandableListView> createState() => _ExpandableListViewState();
}

class _ExpandableListViewState extends State<ExpandableListView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Expandable ListView'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            ExpansionTile(
              title: Text('list 1'),
              children: [
                InkWell(child: ListTile(title: Text('list 11')),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) => Page2()));
                  },),
                ListTile(title: Text('list 12')),
                ListTile(title: Text('list 13')),
                ListTile(title: Text('list 14')),
              ],

            )
          ],
        ),

      ),
      endDrawer: drawer_end(context),
    );
  }
}

Drawer drawer_end(BuildContext c) {
  return Drawer(
    child: ListView(
      children: [
        ExpansionTile(
          title: Text('Anmail'),
          children: [
            InkWell(child: ListTile(title: Text('list 11')),
              onTap: (){
                Navigator.of(c).push(MaterialPageRoute(builder: (_) => Page2()));
              },),
            ListTile(title: Text('list 12')),
            ListTile(title: Text('list 13')),
            ListTile(title: Text('list 14')),
          ],

        ),
        ExpansionTile(
          title: Text('list 2'),
          children: [
            InkWell(child: ListTile(title: Text('list 11')),
              onTap: (){
                Navigator.of(c).push(MaterialPageRoute(builder: (_) => Page2()));
              },),
            ListTile(title: Text('list 12')),
            ListTile(title: Text('list 13')),
            ListTile(title: Text('list 14')),
          ],

        ),
        ExpansionTile(
          title: Text('list 44'),
          children: [
            ListTile(title: Text('list 11')),
            ListTile(title: Text('list 12')),
            ListTile(title: Text('list 13')),
            ListTile(title: Text('list 14')),
          ],

        ),
        ListTile(
          title: Text("button"),
          subtitle: Text("drawer app"),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {
            //go1(context);
          },
        ),
        ListTile(
          title: Text("button"),
          subtitle: Text("drawer app"),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {
            //go4(context);
          },
        ),
      ],
    ),
  );
}
