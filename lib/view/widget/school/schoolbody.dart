// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:archdni/view/widget/school/schoolicon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class AppSchoolBody extends StatelessWidget {
  final String location;
  final String description;
  const AppSchoolBody({
    Key? key,
    required this.location,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         
          
            Text( location ,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,)),
          
        SizedBox(
          height: Get.height * 0.01,
        ),
        Text(
          "$description  ",
          overflow: TextOverflow.fade,
          maxLines: 5,
          softWrap: true,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: Get.height * 0.03,
        ),
      ],
    );
  }
}
