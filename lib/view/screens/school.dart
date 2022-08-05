import 'package:archdni/controller/home.controller.dart';
import 'package:archdni/data/models/schoolmodel.dart';
import 'package:archdni/view/screens/map.dart';
import 'package:archdni/view/widget/map/mapform.dart';
import 'package:archdni/view/widget/school/schoolbody.dart';
import 'package:archdni/view/widget/school/schoolbutton.dart';
import 'package:archdni/view/widget/school/schoolimg.dart';
import 'package:archdni/view/widget/school/schooltitel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class School extends StatelessWidget {
  final int index;
  const School({Key? key, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller =
        Get.put(HomeControllerImp());
    late List<SchoolModel> school =
        controller.wordList;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(children: [
          AppSchoolImag(
              image: school[index].imageUrl!),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 15, vertical: 10),
            child: Column(
              children: [
                AppSchoolTitel(
                  name: school[index].name!,
                  rating: school[index]
                      .rating!
                      .toString(),
                ),
                AppSchoolBody(
                    location:
                        school[index].location!,
                    description: school[index]
                        .description!,
                    price: school[index].price!,
                    students: school[index]
                        .students!
                        .toString(),
                    gender: school[index].gender!)
              ],
            ),
          ),
          SizedBox(
            height: Get.height * 0.1,
          ),
          Row(
            mainAxisAlignment:
                MainAxisAlignment.center,
            children: [
              AppSchoolButton(
                  color: Colors.transparent,
                  bgColor: Colors.transparent,
                  child: Text(
                    "Location".tr,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight:
                            FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    Get.to(
                      () => MapPage(
                        latitude: school[index]
                            .latitude,
                        longitude: school[index]
                            .longitude,
                      ),
                      routeName: '/AppMap',
                      transition:
                          Transition.downToUp,
                      duration: const Duration(
                          milliseconds: 300),
                    );
                  }),
              AppSchoolButton(
                  color: Colors.black,
                  bgColor: Colors.grey,
                  child: Text(
                    "connect with us".tr,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight:
                            FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {}),
            ],
          ),
        ]),
      ),
    );
  }
}
