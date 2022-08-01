import 'package:archdni/view/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

List<BottomNavigationBarItem> bottomBarItems = [
  BottomNavigationBarItem(
    icon: const Icon(Icons.home),
    label: 'Home'.tr,
  ),
  BottomNavigationBarItem(
    icon: const Icon(Icons.business),
    label: 'Business'.tr,
  ),
  BottomNavigationBarItem(
    icon: const Icon(Icons.school),
    label: 'School'.tr,
  ),
  BottomNavigationBarItem(
    icon: const Icon(Icons.settings),
    label: 'Settings'.tr,
  ),
];

List<Widget> widgetOptions = <Widget>[
  const Home(),
  const Text(
    'Index 1: Business',
  ),
  const Text(
    'Index 2: Business',
  ),
  const Text(
    'Index 3: Settings',
  ),
];
 