import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class AppTextCard extends StatelessWidget {
  final String name;
  final String address;
  final double rating;
  final String price;
  const AppTextCard(
      {Key? key,
      required this.name,
      required this.address,
      required this.rating,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 3,
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            Text(  name,
                style: TextStyle(
                    fontSize: Get.height * 0.03,
                    fontWeight: FontWeight.w400)),
            Text("${"address :".tr} $address",
                style: TextStyle(
                    fontSize: Get.height * 0.022,
                    fontWeight: FontWeight.w400)),
            Text("${"price :".tr} $price",
                style: TextStyle(
                    fontSize: Get.height * 0.022,
                    fontWeight: FontWeight.w400)),
             Row(
              children: [
                Text(
                   "rating :".tr ,
                  style: TextStyle(
                      fontSize:
                          Get.height * 0.024,
                      fontWeight:
                          FontWeight.w500),
                ),
              const   Icon(Ionicons.star_outline,
                    color:    Color.fromARGB(
                        255, 220, 184, 25),
                    size:  20),
                SizedBox(
                  width: Get.height * 0.005,
                ),
                Text(
                    rating.toString(),
                  style: TextStyle(
                      fontSize:
                          Get.height * 0.024,
                      fontWeight:
                          FontWeight.w500),
                ),
              ],
            ),

            
          ],
        ));
  }
}
