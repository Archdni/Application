import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
 
class AppCardImage extends StatelessWidget {
    final String image;

  const AppCardImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Container(
                          height:
                              Get.height * 0.15,
                          decoration:
                              BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(
                                        0.5),
                                spreadRadius: 1,
                                blurRadius: 4,
                                offset:
                                    const Offset(
                                        0, 3),
                              ),
                            ],
                            image:
                                  DecorationImage(
                              image:    CachedNetworkImageProvider(image),
                              fit: BoxFit.cover,
                            ),
                            borderRadius:
                                BorderRadius
                                    .circular(10),
                          ),
                        ),
                        
                         
                      ],
                    ),
                  );
  }
}