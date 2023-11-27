import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int _counter;

  int get counter => _counter;

  set counter(int value) {
    _counter = value;
  }

  CounterProvider(this._counter);

  void increment() {
    _counter++;
    notifyListeners();
  }
}
