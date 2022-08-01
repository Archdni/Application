import 'package:archdni/controller/search_conroller.dart';
import 'package:archdni/view/widget/home/card.dart';
import 'package:flutter/material.dart';

class AppListSchool extends StatelessWidget {
  final SearchControllerImp controller;
  const AppListSchool(
      {Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: controller.foundSchool.length,
        itemBuilder: (context, index) {
          return AppCard(
            controller.foundSchool[index].name!,
            controller
                .foundSchool[index].imageUrl!,
            controller
                .foundSchool[index].location!,
            controller.foundSchool[index].rating!,
            controller.foundSchool[index].price!,
          );
        },
      ),
    );
  }
}
