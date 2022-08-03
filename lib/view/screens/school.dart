import 'package:archdni/controller/school_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class School extends StatelessWidget {
  const School({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SchoolControllerImp controller = Get.put(SchoolControllerImp());
    print(controller.school);
    
    return   Scaffold(
      body: Center(
         child: Text(controller.school.rating!.toString()),
      ),
    );
  }
} 