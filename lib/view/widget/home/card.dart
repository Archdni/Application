import 'package:archdni/controller/search_conroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart'; 
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
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Get.height * 0.001,
          vertical: Get.height * 0.005),
      child: InkWell(
        onTap: () => {},
        child: Container(
          height: Get.height * 0.16,
          width: Get.width * 0.87,
          decoration: BoxDecoration(
            color: const Color.fromARGB(
                255, 255, 255, 255),
            borderRadius:
                BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                  blurRadius: 0.5,
                  blurStyle: BlurStyle.outer,
                  color: Color.fromARGB(
                      255, 0, 0, 0))
            ],
          ),
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            children: [
              //image of school
              Container(
                height: Get.height * 0.16,
                width: Get.width * 0.3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.cover,
                  ),
                  borderRadius:
                      BorderRadius.circular(20),
                ),
              ),
              //info of school
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Get.height * 0.01,
                    vertical: Get.height * 0.01),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: ThemeData()
                          .textTheme
                          .headline1!
                          .copyWith(
                              color: Colors.black,
                              fontSize:
                                  Get.height *
                                      0.03,
                              height: 1.4),
                    ),
                    Text(
                      address,
                      style: ThemeData()
                          .textTheme
                          .headline1!
                          .copyWith(height: 1.2),
                    ),
                    Text(
                      price,
                      style: ThemeData()
                          .textTheme
                          .headline1!
                          .copyWith(height: 1.2),
                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    // rating of school
                    Row(children: [
                      Text(
                        rating.toString(),
                      ),
                      SizedBox(
                        width: Get.width * 0.01,
                      ),
                      const Icon(
                          Ionicons.star_outline,
                          color: Colors.yellow,
                          size: 20),
                    ]),
                  ],
                ),
              ), 
              //add to favorite
              Padding(
                padding:
                    const EdgeInsets.all(10.0),
                child: IconButton(
                  icon: const Icon(
                    Ionicons.heart_outline,
                    color: Colors.grey,
                    size: 35,
                  ),
                  onPressed: () {
                    print("favorite");
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
