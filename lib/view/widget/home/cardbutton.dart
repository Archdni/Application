import 'package:archdni/core/constant/color.dart';
import 'package:flutter/material.dart';

class AppButtonCard extends StatelessWidget {
  final Widget child;
  final void Function() onPressed;
  final Color color;
  final Color textColor;
  final Color bgColor;
  const AppButtonCard({
    Key? key,
    required this.child,
    required this.onPressed,
    required this.color,
    required this.textColor,
    required this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onPressed,
        child: Container(
          height: 45,
          width: 100,
          decoration: BoxDecoration(
            color: color,
            borderRadius:
                BorderRadius.circular(10),
            border: Border.all(
                color: AppColor.bluecell,
                width: 1),
            boxShadow: [
              BoxShadow(
                color: bgColor,
                spreadRadius: 1,
                blurRadius: 4,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: child,
          ),
        ));
  }
}
