import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BomItem extends StatefulWidget {
  @override
  _BomItemState createState() => _BomItemState();
}

class _BomItemState extends State<BomItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bom Item'),
      ),
      body: ListView(
        children: [],
      ),
    );
  }
}
