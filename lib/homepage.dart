import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:summermobile/model.dart';
import 'package:summermobile/appstate.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Item testItem = Item(name: 'Helowolrd', price: 0.06);

  @override
  void initState() {
    final state = context.read<AppState>();

    (() async {
      final prefs = await SharedPreferences.getInstance();

      final boms = prefs.getString("boms");
      final items = prefs.getString("items");

      print('Boms: $boms');
      print('Items: $items');

      if (items == null) {
        prefs.setString('items', base64.encode(utf8.encode(jsonEncode([]))));
      }

      if (boms == null) {
        prefs.setString('boms', base64.encode(utf8.encode(jsonEncode([]))));
      }

      final bomsString = prefs.getString("boms");
      final itemsString = prefs.getString("items");

      if (bomsString != null) {
        final decodedBomsString =
            String.fromCharCodes(base64.decode(bomsString));
        print('boms string: $bomsString $decodedBomsString');
      }

      if (itemsString != null) {
        final decodedItemsString =
            String.fromCharCodes(base64.decode(itemsString));
        print('items string: $itemsString $decodedItemsString');
      }
    })();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Summer'),
      ),
      body: Container(
        child: ListView(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Text(
                  'BOM List',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(testItem.toJson().toString()),
            ),
            Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Center(
                child: Text(
                  'Test create uuid: ${Uuid().v4()}',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              child: Center(
                child: TextButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text('Generate'),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
