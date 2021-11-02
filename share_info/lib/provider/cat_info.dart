import 'package:flutter/material.dart';

class CatInfoProvider extends ChangeNotifier {
  String _cat = 'Michi no definido';

  String get cat => _cat;

  set cat(String newCat) {
    _cat = newCat;
    notifyListeners();
  }
}
