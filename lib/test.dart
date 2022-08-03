import 'package:archdni/controller/home.controller.dart';
import 'package:archdni/view/widget/home/card.dart';
  import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Test extends GetView<HomeController> {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   HomeControllerImp homeController = Get.put(HomeControllerImp());
    return   const Scaffold(
      body: Center( ),
    );
  }
}
 
 