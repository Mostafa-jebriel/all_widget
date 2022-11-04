import 'package:drawerbehavior/drawerbehavior.dart';
import 'package:all/drawer/drawerbehavior/drawerbehavior.dart';
import 'package:flutter/material.dart';

class DrawerSlide extends StatefulWidget {
  @override
  _DrawerSlideState createState() => _DrawerSlideState();
}

class _DrawerSlideState extends State<DrawerSlide> {
  int? selectedMenuItemId;

  @override
  void initState() {
    selectedMenuItemId = menu.items[0].id;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DrawerScaffold(
      appBar: AppBar(
          title: Text("Drawer - Slide"),
          actions: [IconButton(icon: Icon(Icons.add), onPressed: () {})]),
      drawers: [
        SideDrawer(
          percentage: 1,
          textStyle: TextStyle(color: Colors.white, fontSize: 24.0),
          menu: menu,
          animation: false,
          alignment: Alignment.topLeft,
          color: Theme.of(context).primaryColor,
          selectedItemId: selectedMenuItemId,
          onMenuItemSelected: (itemId) {
            setState(() {
              selectedMenuItemId = itemId;
            });
          },
        )
      ],
      builder: (context, id) => IndexedStack(
        index: id,
        children: menu.items
            .map((e) => Center(
                  child: Text("Page~${e.title}"),
                ))
            .toList(),
      ),
    );
  }
}
