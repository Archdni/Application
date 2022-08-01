import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class AppStar extends StatelessWidget {
  final Color color;
  const AppStar({Key? key, required this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Icon(
      Ionicons.star,
      color: color,
      size: 22,
    );
  }
}
