import 'package:flutter/material.dart';
import 'package:live_01/src/cores/providers/CounterProvider.dart';
import 'package:live_01/src/ui/components/AppBarr.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CounterProvider>(context);

    return Scaffold(
      floatingActionButton: fllating(context),
      appBar: appBarr(),
      body: Container(
        padding: EdgeInsets.only(left: 30, right: 30),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text(
              provider.counter.toString(),
              style: TextStyle(fontSize: 40),
            )),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.blue,
                  padding: EdgeInsets.all(5),
                  child: IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.add),
                      onPressed: () {
                        provider.incrementCounter();
                      }),
                ),
                Container(
                  color: Colors.red.shade200,
                  padding: EdgeInsets.all(5),
                  child: IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.remove), // Icon(Icons.remove),
                      onPressed: () {
                        provider.decrincrementCounter();
                      }),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
