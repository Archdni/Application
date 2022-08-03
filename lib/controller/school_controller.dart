import 'package:get/get.dart';

abstract class SchoolController
    extends GetxController {}

class SchoolControllerImp
    extends SchoolController {
  late String? name;

  @override
  void onInit() {
     
    name = Get.arguments;
      
    super.onInit();
  }
}
