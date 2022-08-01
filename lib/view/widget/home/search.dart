import 'package:archdni/controller/search_conroller.dart';
import 'package:archdni/view/widget/home/listeofschool.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppSearchHome extends StatelessWidget {
  const AppSearchHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder <SearchControllerImp>(
      init: SearchControllerImp() ,
      
      builder: (controller)=>  Column(
         children: [
           
          TextField(
            onChanged: (value) {
            controller.filterSchool(value);
              
            },
            decoration: InputDecoration(
              labelText: 'Sarch',
              border: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(20),
              ),
              suffixIcon:
                  const Icon(Icons.search),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
       AppListSchool(controller: controller),
         
          
        ],
      ),
     );
  }
}