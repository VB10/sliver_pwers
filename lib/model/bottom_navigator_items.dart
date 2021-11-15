import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigatorModel {
  final IconData icon;
  final String title;

  BottomNavigatorModel(this.icon, this.title);
}

class BottomNavigatorListModel {
  late final List<BottomNavigatorModel> _items;
  BottomNavigatorListModel() {
    _items = [
      BottomNavigatorModel(Icons.ac_unit, 'Hello'),
      BottomNavigatorModel(Icons.ac_unit, 'Hello'),
    ];
  }

  List<BottomNavigationBarItem> toWidgets() {
    return _items.map((e) => BottomNavigationBarItem(icon: Icon(e.icon), label: e.title)).toList();
  }
}
