import 'package:drawerbehavior/drawerbehavior.dart';
import 'package:all/drawer/drawerbehavior/drawerbehavior.dart';
import 'package:flutter/material.dart';

class DrawerRight extends StatefulWidget {
  @override
  _DrawerRightState createState() => _DrawerRightState();
}

class _DrawerRightState extends State<DrawerRight> {
  int? selectedMenuItemId;
  DrawerScaffoldController controller = DrawerScaffoldController();
  @override
  void initState() {
    selectedMenuItemId = menu.items[0].id;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DrawerScaffold(
      controller: controller,
      appBar: AppBar(title: Text("Drawer - Right"), actions: [
        IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: () {
              controller.toggle(Direction.right);
            })
      ]),
      drawers: [
        SideDrawer(
          percentage: 0.6,
          menu: menu,
          direction: Direction.right,
          animation: true,
          color: Theme.of(context).primaryColor,
          selectedItemId: selectedMenuItemId,
          onMenuItemSelected: (itemId) {
            setState(() {
              selectedMenuItemId = itemId;
            });
          },
        ),
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
