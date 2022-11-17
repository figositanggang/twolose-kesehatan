import 'package:flutter/material.dart';

class BottomBarProvider extends ChangeNotifier {
  int _currentIndex = 0;
  int get index => _currentIndex;
  set setIndex(val) {
    _currentIndex = val;
    notifyListeners();
  }
}
