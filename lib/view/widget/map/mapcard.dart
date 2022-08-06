import 'package:archdni/controller/home.controller.dart';
import 'package:archdni/view/widget/map/detaile.dart';
 import 'package:flutter/material.dart';
import 'package:get/get.dart';
 import 'package:sliding_up_panel/sliding_up_panel.dart';

class AppMapCartInfo
    extends GetView<HomeControllerImp> {
  final int index;
  const AppMapCartInfo({ Key? key ,required this.index,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller = Get.put(HomeControllerImp());
    return Scaffold(
      body: SlidingUpPanel(
        body: Container(
          height: 0,
        ),
         backdropTapClosesPanel: false,
        // panel with centered text
        panel:   Center(
          child: AppDetaillesMap(index: index),
               
                
              
        ),
        // collapsed with container
        collapsed: Container(
          color: Colors.blueGrey,
          child:   Center(
            child: Text(
             controller.wordList[index].name!,
              style:
            const      TextStyle(color: Colors.white , fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
