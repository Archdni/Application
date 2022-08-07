import 'package:archdni/core/constant/color.dart';
import 'package:flutter/material.dart';


class TextFeildProfileInfo extends StatelessWidget {
  final String title;
  final bool enabled;
  final TextEditingController? controller;
  final Function? onTap;
  const TextFeildProfileInfo({
    Key? key,
    required this.title,
    required this.enabled,
    this.controller,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onTap: (() {
        if (onTap != null) {
          onTap!();
        }
      }),
      enabled: enabled,
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.arrow_forward_ios),
        hintText: title,
        hintStyle: Theme.of(context)
            .textTheme
            .subtitle1!
            .copyWith(color: AppColor.grey),
      ),
    );
  }
}