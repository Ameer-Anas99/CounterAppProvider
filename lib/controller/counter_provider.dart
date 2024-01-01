import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int counter = 0;
  void increese() {
    counter++;
    notifyListeners();
  }

  void reduce() {
    counter--;
    notifyListeners();
  }

  void reset() {
    counter = 0;
    notifyListeners();
  }
}
