

import 'package:flutter/material.dart';

class Sliver_App_Bar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Sliver App Bar'),
            floating: true,
            expandedHeight: 200,
            flexibleSpace: Placeholder(),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  (c,i)=>Text("item $i"),
                childCount: 200
              )
          ),
        ],
      ),
    );
  }
}
