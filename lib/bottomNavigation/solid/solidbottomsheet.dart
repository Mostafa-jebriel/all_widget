import 'package:flutter/material.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';





class solidbottomsheet extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<solidbottomsheet> {
  SolidController _controller = SolidController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Solid bottom sheet example"),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Stack(
                  alignment: Alignment.bottomRight,
                  children: <Widget>[
                    Image.asset("assets/image/s3.jpg"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Flutter rules?",
                        // style: Theme.of(context).textTheme.title,
                      ),
                    ),
                  ],
                ),
                ButtonTheme(
                  child: ButtonBar(
                    children: <Widget>[
                      MaterialButton(
                        child: const Text('NOPE'),
                        onPressed: () {
                          /* ... */
                        },
                      ),
                      MaterialButton(
                        child: const Text('YEAH'),
                        onPressed: () {
                          /* ... */
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
      bottomSheet: SolidBottomSheet(
        controller: _controller,
        draggableBody: true,
        headerBar: Container(
          color: Theme.of(context).primaryColor,
          height: 50,
          child: Center(
            child: Text("Swipe me!"),
          ),
        ),
        body: Container(
          color: Colors.white,
          height: 30,
          child: Center(
            child: Text(
              "Hello! I'm a bottom sheet :D",
              //style: Theme.of(context).textTheme.display1,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.stars),
          onPressed: () {
            _controller.isOpened ? _controller.hide() : _controller.show();
          }),
    );
  }
}