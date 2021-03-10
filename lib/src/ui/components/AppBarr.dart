import 'package:flutter/material.dart';
import 'package:live_01/src/cores/providers/CounterProvider.dart';
import 'package:provider/provider.dart';

Widget appBarr() {
  return AppBar(
    title: Text('Counter'),
    centerTitle: true,
    backgroundColor: Colors.amber,
    actions: [
      Icon(Icons.search),
      Icon(
        Icons.accessibility_rounded,
        color: Colors.black26,
      )
    ],
  );
}

Widget fllating(BuildContext context) {
  var provider = Provider.of<CounterProvider>(context);
  return FloatingActionButton(
    onPressed: () {
      provider.initialiseCounter();
    },
    child: Icon(Icons.navigation),
    backgroundColor: Colors.green,
  );
}
