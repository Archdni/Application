import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppHomaText extends StatelessWidget {
  const AppHomaText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
              children: [
                Text(
                  "${"Hello".tr} Ahmad",
                  style: ThemeData()
                      .textTheme
                      .bodyText1!
                      .copyWith(
                        fontSize:
                            Get.height * 0.04,
                        fontWeight:
                            FontWeight.w400,
                      ),
                )
              ],
            ),
            
            Row(
              children: [
                Text(
                  "Welcome to Archdni , browse and discover the best Quran school.".tr,
                  style: ThemeData()
                      .textTheme
                      .bodyText1!
                      .copyWith(
                        fontSize:
                            Get.height * 0.022,
                            height: 1.7,
                              
                          color: Colors.grey),
                )
              ],
            )
      ],
    );
  }
}