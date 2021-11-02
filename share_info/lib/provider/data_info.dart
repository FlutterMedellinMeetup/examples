import 'package:flutter/material.dart';

class InfoProvider extends ChangeNotifier {
  String _user = 'Usuario no definido';

  String get user => _user;

  set user(String newUser) {
    _user = newUser;
    notifyListeners();
  }
}
