import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:summermobile/model.dart';

class AppState extends ChangeNotifier {
  List<Item> _items = [];
  List<Bom> _boms = [];

  List<Item> get items => _items;
  List<Bom> get boms => _boms;

  void executeAndWrite(Function() func) {
    (() async {
      func();

      final prefs = await SharedPreferences.getInstance();

      prefs.setString("boms", base64.encode(utf8.encode(jsonEncode(boms))));
      prefs.setString("items", base64.encode(utf8.encode(jsonEncode(items))));

      notifyListeners();
    })();
  }

  void setItems(List<Item> items) {
    executeAndWrite(() {
      _items = items;
    });
  }

  void addItem(Item item) {
    executeAndWrite(() {
      _items.add(item);
    });
  }

  void setBoms(List<Bom> boms) {
    executeAndWrite(() {
      _boms = boms;
    });
  }

  void addBom(Bom bom) {
    executeAndWrite(() {
      _boms.add(bom);
    });
  }
}
