// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:archdni/view/widget/school/schoolicon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class AppSchoolBody extends StatelessWidget {
  final String location;
  final String description;
  final String price;
  final String students;
  final String gender;
  const AppSchoolBody(
      {Key? key,
      required this.location,
      required this.description,
      required this.price,
      required this.students,
      required this.gender})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("${"address :".tr} ${location} ",
                style: TextStyle(
                    fontSize: Get.height * 0.023,
                    fontWeight: FontWeight.w600)),
          ],
        ),
        SizedBox(
          height: Get.height * 0.01,
        ),
        Text(
          "$description  ",
          overflow: TextOverflow.fade,
          maxLines: 5,
          softWrap: true,
        ),
        SizedBox(
          height: Get.height * 0.03,
        ),
        Row(children: [
          AppSchoolIcon(
            icon: Ionicons.cash_outline,
            text: "",
            data: price,
          ),
          SizedBox(
            width: Get.width * 0.06,
          ),
          AppSchoolIcon(
              icon: Ionicons.people_outline,
              text: "number of students :",
              data: students.toString()),
          SizedBox(
            width: Get.width * 0.06,
          ),
          AppSchoolIcon(
              icon: Ionicons.person_outline,
              text: "",
              data: gender)
        ]),
      ],
    );
  }
}
