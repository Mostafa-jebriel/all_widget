import 'package:flutter/material.dart';



class DismissiblePage extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<DismissiblePage> {
  final List<String> li = List.generate(20, (index) => "Mostafa ${index + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Dismissible"),
      ),
      body: ListView.builder(
        itemCount: li.length,
        itemBuilder: (ctx, i) {
          final it = li[i];
          return Dismissible(
            key: Key(it),
            child: ListTile(
              title: Center(
                child: Text(it),
              ),
            ),

            onDismissed: (DismissDirection dir) {
              setState(() => li.removeAt(i));
              // Scaffold.of(ctx).showSnackBar(SnackBar(
              //   content: Text(dir ==DismissDirection.startToEnd?"$it Deleted":"$it like"),
              //   action: SnackBarAction(
              //     label: "Undo",
              //     onPressed: (){
              //       setState(() {
              //         li.insert(i, it);
              //       });
              //     },
              //   ),
              //
              // ));
            },
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerLeft,
              child: Icon(Icons.delete),
            ),
            secondaryBackground: Container(
              color: Colors.blue,
              alignment: Alignment.centerRight,
              child: Icon(Icons.thumb_up),
            ),
          );
        },
      ),
    );
  }
}
