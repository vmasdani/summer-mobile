import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:summermobile/appstate.dart';
import 'package:summermobile/homepage.dart';

void main() {
  runApp(
      ChangeNotifierProvider(create: (context) => AppState(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Summer',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}
