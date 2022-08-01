import 'package:archdni/controller/home.controller.dart';
import 'package:archdni/view/widget/home/profailicon.dart';
import 'package:archdni/view/widget/home/search.dart';
import 'package:archdni/view/widget/home/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class Home extends GetView<HomeController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 3, vertical: 5),
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: const AppProfaileIcon(),
            actions: [
              IconButton(
                icon: const Icon(
                  Ionicons.heart_outline,
                  size: 30,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ]),
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Get.height * 0.03,
              vertical: Get.height * 0.02),
          child: Column(
            children: [
              const AppHomaText(),
              SizedBox(
                height: Get.height * 0.02,
              ),
              const Divider(
                color: Colors.grey,
                thickness: 0.3,
              ),
              const Expanded(
                  child: AppSearchHome())
            ],
          ),
        ),
      ),
    );
  }
}
