import 'package:all/drawer/%20kf_drawer/kf_drawer.dart';
import 'package:all/drawer/curved_drawer_fork.dart';
import 'package:all/drawer/elastic_drawer.dart';
import 'package:all/drawer/flutter_zoom_drawer.dart';
import 'package:all/drawer/inner_drawer/flutter_inner_drawe.dart';
import 'package:all/drawer/side_navigation.dart';
import 'package:all/drawer/sidebarx.dart';
import 'package:all/pages/page2.dart';
import 'package:all/pages/page3.dart';
import 'package:all/pages/page4.dart';
import 'package:flutter/material.dart';
import 'drawerbehavior/drawerbehavior.dart';

class DrawerPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      automaticallyImplyLeading: false,
      centerTitle: true,),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                child: const Text(
                  "Sidebar",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.blue,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return SidebarXExampleApp();
                  }));
                },
              ),
              MaterialButton(
                child: const Text(
                  "Side Navigation",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.blue,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return Side_Navigation();
                  }));
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                child: const Text(
                  "elastic drawer",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.blue,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return elastic_drawer();
                  }));
                },
              ),
              MaterialButton(
                child: const Text(
                  "curved drawer fork",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.blue,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return curved_drawer_fork();
                  }));
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                child: const Text(
                  "flutter_zoom_drawer",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.blue,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return flutter_zoom_drawer();
                  }));
                },
              ),
              MaterialButton(
                child: const Text(
                  "flutter_inner_drawer",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.blue,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return flutter_inner_drawer();
                  }));
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                child: const Text(
                  "kf_drawer",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.blue,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return kf_drawer();
                  }));
                },
              ),
              MaterialButton(
                child: const Text(
                  "Drawer Behavior",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.blue,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return Drawer_Behavior();
                  }));
                },
              ),
            ],
          ),
        ],
      ),
      drawer:Drawer(
        child: ListView(
          children: [
            SizedBox(
              height: 5,
            ),
            MaterialButton(
              child: Text(
                "Button 1",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.black,
              onPressed: () {},
            ),
            SizedBox(
              height: 5,
            ),
            MaterialButton(
              child: Text(
                "Button 1",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.black,
              onPressed: () {},
            ),
            SizedBox(
              height: 5,
            ),
            MaterialButton(
              child: Text(
                "Button 1",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.black,
              onPressed: () {},
            ),
            SizedBox(
              height: 5,
            ),
            MaterialButton(
              child: Text(
                "Button 1",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.black,
              onPressed: () {},
            ),
            SizedBox(
              height: 5,
            ),
            MaterialButton(
              child: Text(
                "Button 1",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.black,
              onPressed: () {},
            ),
            SizedBox(
              height: 5,
            ),
            MaterialButton(
              child: Text(
                "Button 1",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.black,
              onPressed: () {},
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              title: Text("button"),
              subtitle: Text("drawer app"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                go(context, 1);
              },
            ),
            ListTile(
              title: Text("button1"),
              subtitle: Text("drawer app"),
            ),
            ListTile(
              title: Text("button2"),
              subtitle: Text("drawer app"),
            ),
            ListTile(
              title: Text("button3"),
              subtitle: Text("drawer app"),
              onTap: () {
                go2(context);
              },
            ),
          ],
        ),
      ),
      endDrawer: drawer_end(),

    );
  }
  Widget drawer_end() {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text("button"),
            subtitle: Text("drawer app"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              //go2(context);
            },
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
          ListTile(
            title: Text("button"),
            subtitle: Text("drawer app"),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            title: Text("button"),
            subtitle: Text("drawer app"),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            title: Text("button"),
            subtitle: Text("drawer app"),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            title: Text("button"),
            subtitle: Text("drawer app"),
            trailing: Icon(Icons.arrow_forward),
          ),
        ],
      ),

    );
  }
  void go1(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Page2();
    }));
  }

  void go2(BuildContext ctx2) {
    Navigator.of(ctx2).push(MaterialPageRoute(builder: (_) {
      return Page3();
    }));
  }

  void go(BuildContext ctx3, int n) {
    Navigator.of(ctx3).push(MaterialPageRoute(builder: (_) {
      if (n == 1) {
        return Page2();
      } else {
        return Page3();
      }
    }));
  }

  void go4(BuildContext ctx2) {
    Navigator.of(ctx2).push(MaterialPageRoute(builder: (_) {
      return Page4("mostafa 010");
    }));
  }
}
