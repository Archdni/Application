import 'package:archdni/controller/school_controller.dart';
import 'package:archdni/data/models/schoolmodel.dart';
import 'package:archdni/view/widget/school/schoolbody.dart';
import 'package:archdni/view/widget/school/schoolbutton.dart';
import 'package:archdni/view/widget/school/schoolimg.dart';
import 'package:archdni/view/widget/school/schooltitel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class School extends StatelessWidget {
  const School({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SchoolControllerImp controller =
        Get.put(SchoolControllerImp());
    late SchoolModel school = controller.school;
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
          AppSchoolImag(image: school.imageUrl!),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 15, vertical: 10),
            child: Column(
              children: [
                AppSchoolTitel(
                  name: school.name!,
                  rating:
                      school.rating!.toString(),
                ),
                AppSchoolBody(
                    location: school.location!,
                    description:
                        school.description!,
                    price: school.price!,
                    students: school.students!
                        .toString(),
                    gender: school.gender!)
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
                  onPressed: () {}),
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
