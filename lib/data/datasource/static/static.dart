import 'package:archdni/controller/locatio_controller.dart';
import 'package:archdni/view/screens/home.dart';
import 'package:archdni/view/screens/map.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

LocationControllerImp controller =
    Get.put(LocationControllerImp());
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
  MapPage(
      latitude: controller.latitude,
      longitude: controller.longitude),
  const Text(
    'Index 2: Business',
  ),
  const Text(
    'Index 3: Settings',
  ),
];
