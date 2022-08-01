import 'package:archdni/view/widget/home/stare.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CardController extends GetxController {
  rating(int rating);
}
class CardControllerImp extends CardController {
   

  @override
  rating(int rating) {
    List<Widget> star = [];
    for (int i = 0; i < 5; i++) {
      if (i <  rating) {
        star.add(
            const AppStar(color: Color(0xFFFDCC0D)));
      } else {
        star.add(
            const AppStar(color: Colors.grey));
      }
    }
    return star;
  }
}