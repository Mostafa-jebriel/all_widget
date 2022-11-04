import 'package:drawerbehavior/drawerbehavior.dart';
import 'package:all/drawer/drawerbehavior/drawerbehavior.dart';
import 'package:flutter/material.dart';

class DrawerScaleNoAnimation extends StatefulWidget {
  @override
  _DrawerScaleNoAnimationState createState() => _DrawerScaleNoAnimationState();
}

class _DrawerScaleNoAnimationState extends State<DrawerScaleNoAnimation> {
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
          title: Text("Drawer - Scale No Animaton"),
          actions: [IconButton(icon: Icon(Icons.add), onPressed: () {})]),
      drawers: [
        SideDrawer(
          percentage: 0.6,
          menu: menu,
          animation: false,
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
