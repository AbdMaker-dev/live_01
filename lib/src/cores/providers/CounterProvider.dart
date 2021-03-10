import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  var _counter = 0;

  get counter => this._counter;

  void incrementCounter() {
    _counter += 5;
    notifyListeners();
  }

  void decrincrementCounter() {
    _counter -= 5;
    notifyListeners();
  }

  void initialiseCounter() {
    _counter = 0;
    notifyListeners();
  }
}
