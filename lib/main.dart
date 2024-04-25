import 'package:flutter/material.dart';
import 'package:flutter_money_management/main_page/main_page.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: mainPage(),
      theme: ThemeData(primarySwatch: Colors.lightGreen),
    );
  }
}
