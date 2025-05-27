import 'package:flutter/material.dart';

class SizeProvider with ChangeNotifier {
  double size = 100;

  void increaseSize() {
    size += 20;
    notifyListeners();
  }

  void decreaseSize() {
    size -= 20;
    notifyListeners();
  }
}
