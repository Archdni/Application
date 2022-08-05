import 'package:archdni/controller/search_conroller.dart';
import 'package:archdni/core/constant/color.dart';
import 'package:archdni/view/screens/map.dart';
import 'package:archdni/view/screens/school.dart';
import 'package:archdni/view/widget/home/card/cardbutton.dart';
import 'package:archdni/view/widget/home/card/cardimage.dart';
import 'package:archdni/view/widget/home/card/cardtext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppCard
    extends GetView<SearchControllerImp> {
  final int? index;
  final String? name;
  final String? image;
  final String? city;
  final double? rating;
  final String? price;
  final double? latitude;
  final double? longitude;
  final void Function()? onTap;
  const AppCard(
      {this.latitude,
      this.longitude,
      this.index,
      this.name,
      this.image,
      this.city,
      this.rating,
      this.price,
      this.onTap,
      Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
                BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color:
                    Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 4,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: Get.height * 0.01,
                horizontal: Get.width * 0.04),
            child: Column(
              children: [
                Row(
                  children: [
                    AppTextCard(
                      city: city!,
                      name: name!,
                      rating: rating!,
                      price: price!,
                    ),
                    AppCardImage(
                      image: image!,
                    )
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Row(
                  children: [
                    AppButtonCard(
                        color: Colors.transparent,
                        textColor: Colors.black,
                        bgColor:
                            Colors.transparent,
                        child: Text(
                          "Location".tr,
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight:
                                  FontWeight
                                      .w500),
                          textAlign:
                              TextAlign.center,
                        ),
                        onPressed: () {
                          Get.to(
                            () => MapPage(
                              latitude: latitude,
                              longitude:
                                  longitude,
                            ),
                            routeName: '/AppMap',
                            transition: Transition
                                .downToUp,
                            duration:
                                const Duration(
                                    milliseconds:
                                        300),
                          );
                        }),
                    AppButtonCard(
                        color: AppColor.primary,
                        textColor: Colors.white,
                        bgColor: Colors.grey,
                        child: Text(
                          "Explore".tr,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight:
                                  FontWeight
                                      .w500),
                          textAlign:
                              TextAlign.center,
                        ),
                        onPressed: () {
                          Get.to(
                            () => School(
                              index: index!,
                            ),
                            routeName: '/school',
                            transition: Transition
                                .downToUp,
                            duration:
                                const Duration(
                                    milliseconds:
                                        300),
                          );
                        }),
                  ],
                ),
                SizedBox(
                  height: Get.width * 0.02,
                )
              ],
            ),
          )),
    );
  }
}
