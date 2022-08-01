// ignore_for_file: annotate_overrides

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:archdni/data/datasource/firebasedata.dart';
import 'package:archdni/data/models/schoolmodel.dart';
import 'package:get/get.dart';

abstract class SearchController
    extends GetxController {
  List foundSchool = [];

  onInit();

  filterSchool(String name);
  
}

class SearchControllerImp
    extends SearchController {
  late int len = foundSchool.length;
  List<SchoolModel> results = [];
   



  @override
  void onInit() {
    foundSchool = [];
      super.onInit();
  }

  
  void filterSchool(String name) {
    if (name.isEmpty) {
      results = listSchools;
    } else {
      results = listSchools
          .where((element) => element.name
              .toString()
              .toLowerCase()
              .contains(name.toLowerCase()))
          .toList();
    }
    foundSchool = results;
    update();
  }
}
