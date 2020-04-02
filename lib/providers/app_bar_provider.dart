import 'package:flutter/material.dart';

class AppBarProvider with ChangeNotifier {
  String _appBarTitle = '';

  String get appBarTitle => _appBarTitle;

  setAppBarTitle(String value) {
    _appBarTitle = value;
    notifyListeners();
  }
}
