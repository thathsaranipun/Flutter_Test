// ignore_for_file: unnecessary_import

import 'package:check/Setup/calculator.dart';
import 'package:check/Setup/photo.dart';
import 'package:check/Setup/themeapply.dart';
import 'package:flutter/material.dart';
import '../Setup/currency.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Home'),
      // ),
            bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.explore),
            label: 'Converter',
          ),
          NavigationDestination(
            icon: Icon(Icons.commute),
            label: 'Calculator',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmark),
            icon: Icon(Icons.bookmark_border),
            label: 'Photo',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.ac_unit_sharp),
            icon: Icon(Icons.ac_unit_sharp),
            label: 'Theme',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: CurrencyConverter()
          
        ),
        Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: Calculator(),
        ),
        Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: Photo(),
        ),
        Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: ThemeApply(),
        ),
      ][currentPageIndex],
    );
  }
}
