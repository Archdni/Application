import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppMapAppbar extends StatelessWidget {
  const AppMapAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              'Test',
              style: TextStyle(color: Colors.black),
            ),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Get.back();
              },
            ),
          );
  }
}