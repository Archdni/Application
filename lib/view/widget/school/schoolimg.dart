import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppSchoolImag extends StatelessWidget {
  final String image;
  const AppSchoolImag({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
              width: double.infinity,
              height: Get.height * 0.35,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: CachedNetworkImageProvider(
                     image),
                  fit: BoxFit.cover,
                ),
                 border:
                    const Border.fromBorderSide(
                        BorderSide(
                            color: Colors.black,
                            width: 0.3)),
                borderRadius:
                    const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
            );
  }
}