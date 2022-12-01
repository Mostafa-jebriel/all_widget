
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class ShoppingItem {
  final String title;
  final String urlImage;

  const ShoppingItem({
    required this.title,
    required this.urlImage,
  });
}

class Animated_List extends StatelessWidget {
  final String title = 'AnimatedList';

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(
      primaryColor: Colors.deepPurple,
    ),
    home: MainPage(title: title),
  );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final key = GlobalKey<AnimatedListState>();
  final items = List.from(Data.shoppingList);

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.deepPurple,
    appBar: AppBar(
      title: Text(widget.title),
    ),
    body: Column(
      children: [
        Expanded(
          child: AnimatedList(
            key: key,
            initialItemCount: items.length,
            itemBuilder: (context, index, animation) =>
                buildItem(items[index], index, animation),
          ),
        ),
        Container(
          padding: EdgeInsets.all(16),
          child: buildInsertButton(),
        ),
      ],
    ),
  );

  Widget buildItem(item, int index, Animation<double> animation) =>
      ShoppingItemWidget(
        item: item,
        animation: animation,
        onClicked: () => removeItem(index),
      );

  Widget buildInsertButton() => MaterialButton(
    child: Text(
      'Insert item',
      style: TextStyle(fontSize: 20),
    ),
    color: Colors.white,
    onPressed: () => insertItem(3, Data.shoppingList.first),
  );

  void insertItem(int index, ShoppingItem item) {
    items.insert(index, item);
    key.currentState!.insertItem(index);
  }

  void removeItem(int index) {
    final item = items.removeAt(index);

    key.currentState!.removeItem(
      index,
          (context, animation) => buildItem(item, index, animation),
    );
  }
}



class Data {
  static final List<ShoppingItem> shoppingList = [
    ShoppingItem(
      title: 'Milk',
      urlImage:
      'https://images.unsplash.com/photo-1563636619-e9143da7973b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=701&q=80',
    ),
    ShoppingItem(
      title: 'Bread',
      urlImage:
      'https://images.unsplash.com/photo-1509440159596-0249088772ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1352&q=80',
    ),
    ShoppingItem(
      title: 'Onions',
      urlImage:
      'https://images.unsplash.com/photo-1518977956812-cd3dbadaaf31?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    ),
    ShoppingItem(
      title: 'Salad',
      urlImage:
      'https://images.unsplash.com/photo-1540420773420-3366772f4999?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=631&q=80',
    ),
    ShoppingItem(
      title: 'Tomatoes',
      urlImage:
      'https://images.unsplash.com/photo-1518977822534-7049a61ee0c2?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
    ),
    ShoppingItem(
      title: 'Eggs',
      urlImage:
      'https://images.unsplash.com/photo-1587486913049-53fc88980cfc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    ShoppingItem(
      title: 'Apples',
      urlImage:
      'https://images.unsplash.com/photo-1568702846914-96b305d2aaeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    ),
  ];
}


class ShoppingItemWidget extends StatelessWidget {
  final ShoppingItem item;
  final Animation<double> animation;
  final VoidCallback onClicked;

  const ShoppingItemWidget({
    required this.item,
    required this.animation,
    required this.onClicked,
  });

  @override
  Widget build(BuildContext context) => ScaleTransition(
    scale: animation,
    child: Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        leading: CircleAvatar(
          radius: 32,
          backgroundImage: NetworkImage(item.urlImage),
        ),
        title: Text(item.title, style: TextStyle(fontSize: 20)),
        trailing: IconButton(
          icon: Icon(Icons.check_circle, color: Colors.green, size: 32),
          onPressed: onClicked,
        ),
      ),
    ),
  );
}