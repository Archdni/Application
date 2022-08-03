import 'package:archdni/controller/search_conroller.dart';
import 'package:archdni/core/constant/color.dart';
import 'package:archdni/view/widget/home/cardbutton.dart';
import 'package:archdni/view/widget/home/cardimage.dart';
import 'package:archdni/view/widget/home/cardtext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppCard
    extends GetView<SearchControllerImp> {
  final String name;
  final String image;
  final String address;
  final double rating;
  final String price;
  const AppCard(this.name, this.image,
      this.address, this.rating, this.price,
      {Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () => {
        Get.toNamed('/school', arguments: name , ) ,
        
     
      },
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
                      address: address,
                      name: name,
                      rating: rating,
                      price: price,
                    ),
                    AppCardImage(
                      image: image,
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
                        onPressed: () {}),
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
                        onPressed: () {}),
                      
                  ],
                ) , SizedBox(
                          height: Get.width * 0.02,
                      
                        )
              ],
            ),
          )),
    );
  }
}
