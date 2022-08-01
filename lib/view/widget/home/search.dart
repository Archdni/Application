import 'package:archdni/controller/search_conroller.dart';
import 'package:archdni/view/widget/home/listeofschool.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppSearchHome extends StatelessWidget {
  const AppSearchHome({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchControllerImp>(
      init: SearchControllerImp(),
      builder: (controller) => Column(
        children: [
          SizedBox(
            height: Get.height * 0.01,
          ),
          SizedBox(
            height: Get.height * 0.07,
            child: TextField(
              onChanged: (value) {
                controller.filterSchool(value);
              },
              decoration: InputDecoration(
                fillColor: Colors.blueGrey[200],
                label: Container(
                  padding: EdgeInsets.only(
                      left: Get.width * 0.03),
                  // ignore: prefer_const_constructors
                  child: Text('Search School'),
                ),
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(18),
                ),
                suffixIcon:
                    const Icon(Icons.search),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          AppListSchool(controller: controller),
        ],
      ),
    );
  }
}
