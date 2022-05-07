import 'package:flutter/material.dart';

class AppViewModel extends ChangeNotifier {
  bool _sidebarStatus = true;

  bool get sidebarStatus => _sidebarStatus;

  set sidebarStatus(bool value) {
    _sidebarStatus = value;
    notifyListeners();
  }
}