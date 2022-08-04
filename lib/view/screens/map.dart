 import 'package:archdni/view/widget/map/map.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: const Text(
              'Test',
              style:
                  TextStyle(color: Colors.black),
            ),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back,
                  color: Colors.black),
              onPressed: () {
                Get.back();
              },
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation
                  .endFloat,
          floatingActionButton:
              FloatingActionButton(
            onPressed: () {},
            child: const Icon(
                Icons.my_location_outlined),
          ),
          body: const AppMap()),
    );
  }
}