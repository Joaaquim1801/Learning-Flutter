import 'package:flutter/material.dart';

class Appcontroler extends ChangeNotifier { //Global state, not local
  static Appcontroler instance = Appcontroler();

  bool isDarkTheme = false;
  changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
