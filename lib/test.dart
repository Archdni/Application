import 'package:archdni/controller/search_conroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Test extends GetView<SearchControllerImp> {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SearchControllerImp conroller =
        Get.put(SearchControllerImp());
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () async {
           
          },
          child: Container(
            height: Get.height * 0.16,
            width: Get.width * 0.95,
            decoration: BoxDecoration(
              color: const Color.fromARGB(
                  255, 255, 255, 255),
              borderRadius:
                  BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                    blurRadius: 0.5,
                    blurStyle: BlurStyle.outer,
                    color: Color.fromARGB(
                        255, 0, 0, 0))
              ],
            ),
          ),
        ),

        //add to favorite
      ),
    );
  }
}
