import 'package:calendar_appbar/calendar_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_money_management/main_page/home_page.dart';

class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CalendarAppBar(
          accent: Colors.lightGreen,
          locale: 'en',
          backButton: false,
          onDateChanged: (value) => print(value),
          firstDate: DateTime.now().subtract(Duration(days: 140)),
          lastDate: DateTime.now(),

        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.lightGreen,
          child: Icon(Icons.add),
        ),
        body: homePage(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.home)),
            SizedBox(
              width: 20,
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.list))
          ]),
        ));
  }
}
