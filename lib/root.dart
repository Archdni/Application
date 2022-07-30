import 'package:archdni/core/constant/routs.dart';
import 'package:archdni/view/screens/home.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)>
    routes = {
  //home
  AppRoutes.home: (context) => const Home(),
};
