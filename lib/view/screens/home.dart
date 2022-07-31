import 'package:archdni/controller/home.controller.dart';
import 'package:archdni/view/widget/home/profailicon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends GetView<HomeController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: const [AppProfaileIcon()]),
      body: Center(
        child: Text('Home'.tr),
      ),
    );
  }
}
