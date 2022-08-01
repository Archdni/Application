// ignore_for_file: annotate_overrides

import 'package:archdni/data/datasource/firebasedata.dart';
import 'package:archdni/data/models/schoolmodel.dart';
import 'package:get/get.dart';

abstract class SearchController
    extends GetxController {
   
   List< SchoolModel>  foundSchool  =
       [];

  onInit();
 
  filterSchool(String name);
}

  class SearchControllerImp
    extends SearchController {
      late int len = foundSchool.length;
  @override 
  void onInit() {
     foundSchool = listSchools; 
      super.onInit();
  }

 List< SchoolModel> results = [];
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
