import 'package:archdni/core/constant/routs.dart';
import 'package:archdni/view/screens/dashboard.dart4';
import 'package:archdni/view/screens/profile.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)>
    routes = {
  //home
  AppRoutes.home: (context) => const Home(),
  AppRoutes.profile: (context) => const Profile(),
};
