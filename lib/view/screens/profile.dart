import 'package:archdni/core/constant/color.dart';
import 'package:archdni/view/widget/simple_padding.dart';
import 'package:archdni/view/widget/textfeild_profile_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.primary,
        body: SafeArea(
            child: Column(children: [
          PaddingSimple(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: AppColor.white, shape: BoxShape.circle),
                      height: 65,
                      width: 65,
                      child: Icon(Ionicons.person_outline, size: 30),
                    ),
                    SizedBox(
                      width: Get.height * 0.03,
                    ),
                    Text(
                      'Ahmed',
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(color: AppColor.white),
                    ),
                  ],
                ),
                // Icon(Icons.arrow_back_ios, size: 30, color: AppColor.white),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: ListView(
                children: [
                  Text("Personal information title".tr,
                      style: Theme.of(context).textTheme.headline1!),
                  SizedBox(
                    height: 40,
                  ),
                  TextFeildProfileInfo(
                    title: "Name".tr,
                    enabled: false,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFeildProfileInfo(
                    title: "Email".tr,
                    enabled: false,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFeildProfileInfo(
                    title: "Password".tr,
                    enabled: false,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFeildProfileInfo(
                    title: "Email".tr,
                    enabled: false,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ])));
  }
}
