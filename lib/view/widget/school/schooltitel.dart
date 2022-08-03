import 'package:archdni/view/widget/home/stare.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class AppSchoolTitel extends StatelessWidget {
  final String name;
  final String rating;
  const AppSchoolTitel(
      {Key? key,
      required this.name,
      required this.rating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              name,
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              width: Get.width * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 4,
              ),
              child: Text(
                rating.toString(),
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            const AppStar(
              color: Color.fromARGB(
                  255, 255, 204, 0),
            ),
          ],
        ),
        IconButton(
          icon: const Icon(
            Ionicons.heart_outline,
            color:
                Color.fromARGB(255, 95, 5, 44),
            size: 30,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
