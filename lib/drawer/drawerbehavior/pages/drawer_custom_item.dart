import 'package:all/drawer/drawerbehavior/drawerbehavior.dart';
import 'package:drawerbehavior/drawerbehavior.dart';
import 'package:drawerbehavior/menu_screen.dart'as items;
import 'package:flutter/material.dart';

class DrawerCustomItem extends StatefulWidget {
  @override
  _DrawerCustomItemState createState() => _DrawerCustomItemState();
}

class _DrawerCustomItemState extends State<DrawerCustomItem> {
  late int selectedMenuItemId;

  @override
  void initState() {
    selectedMenuItemId = menu.items[0].id;
    super.initState();
  }

  Widget headerView(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(16, 12, 16, 0),
          child: Row(
            children: <Widget>[
              new Container(
                  width: 48.0,
                  height: 48.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/user1.jpg")))),
              Container(
                  margin: EdgeInsets.only(left: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "John Witch",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(color: Colors.white),
                      ),
                      Text(
                        "test123@gmail.com",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(color: Colors.white.withAlpha(200)),
                      )
                    ],
                  ))
            ],
          ),
        ),
        Divider(
          color: Colors.white.withAlpha(200),
          height: 16,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DrawerScaffold(
      cornerRadius: 0,
      appBar: AppBar(
          title: Text("Drawer - Custom  Item"),
          actions: [IconButton(icon: Icon(Icons.add), onPressed: () {})]),
      drawers: [
        SideDrawer(
          percentage: 1,
          menu: menu,
          headerView: headerView(context),
          animation: false,
          alignment: Alignment.topLeft,
          color: Theme.of(context).primaryColor,
          selectedItemId: selectedMenuItemId,
          itemBuilder:
              (BuildContext context, items.MenuItem menuItem, bool isSelected) {
            return Container(
              color: isSelected
                  ? Theme.of(context).accentColor.withOpacity(0.7)
                  : Colors.transparent,
              padding: EdgeInsets.fromLTRB(24, 16, 24, 16),
              child: Text(
                menuItem.title,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: isSelected ? Colors.black87 : Colors.white70),
              ),
            );
          },
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
