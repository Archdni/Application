import 'package:archdni/view/screens/dashboard.dart4';
import 'package:flutter/material.dart';

List<BottomNavigationBarItem> bottomBarItems =
    const [
  BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: 'Home',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.business),
    label: 'Business',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.school),
    label: 'School',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.settings),
    label: 'Settings',
  ),
];

List<Widget> widgetOptions = <Widget>[
  const Home(),
  const Text(
    'Index 1: Business',
  ),
  const Home(),
  const Text(
    'Index 3: Settings',
  ),
];
