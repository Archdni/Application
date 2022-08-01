import 'package:archdni/controller/search_conroller.dart';
import 'package:flutter/material.dart';
 
class AppListSchool extends StatelessWidget {
  final SearchControllerImp controller;
  const AppListSchool({Key? key , required this.controller}) : super(key: key);  

  @override
  Widget build(BuildContext context) {
     
    return Expanded(
      child: ListView.builder(
        itemCount: controller.foundSchool.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(controller
                .foundSchool[index].name!),
            subtitle: Text(controller
                .foundSchool[index].location!),
          );
        },
      ),
    );
  }
}
