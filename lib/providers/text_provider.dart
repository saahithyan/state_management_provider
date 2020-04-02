import 'package:flutter/foundation.dart';

class TextProvider with ChangeNotifier {
  String _txt;

  String get txt => _txt;

  set txt(String value) {
    _txt = value;
    notifyListeners();
  }
}
