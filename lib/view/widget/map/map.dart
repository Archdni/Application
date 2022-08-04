// ignore_for_file: depend_on_referenced_packages

import 'package:archdni/controller/home.controller.dart';
import 'package:archdni/data/models/schoolmodel.dart';
import 'package:flutter/material.dart';
import 'package:archdni/view/widget/mapcard.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

class AppMap extends StatelessWidget {
  const AppMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllerImp homeController =
        Get.put(HomeControllerImp());
    late List<SchoolModel> data =
        homeController.wordList;
    return FlutterMap(
      options: MapOptions(
        center: LatLng(35.943540, 0.099473),
        maxZoom: 19.0,
        zoom: 13.0,
        maxBounds: LatLngBounds(
          LatLng(-90, -180.0),
          LatLng(90.0, 180.0),
        ),
      ),
      layers: [
        TileLayerOptions(
            urlTemplate:
                "https://api.mapbox.com/styles/v1/abdo215/cl6e4b180001h16nz8urb3vmx/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiYWJkbzIxNSIsImEiOiJjbDZlNDNsYXoxN3h1M2lxbDVweDZmeWl5In0.JIrAUT6QTzIyw4t116KKZA",
            additionalOptions: {
              'accessToken':
                  'pk.eyJ1IjoiYWJkbzIxNSIsImEiOiJjbDZlNDNsYXoxN3h1M2lxbDVweDZmeWl5In0.JIrAUT6QTzIyw4t116KKZA',
              'id': 'mapbox.mapbox-streets-v8',
            }),
        MarkerLayerOptions(
          markers: List<Marker>.generate(
              data.length, (int index) {
            return Marker(
              height: 200.0,
              rotate: true,
              width: 200.0,
              point: LatLng(data[index].latitude!,
                  data[index].longitude!),
              builder: (ctx) {
                return IconButton(
                  icon: const Icon(
                    Icons.location_on,
                    size: 40,
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (builder) {
                          return const AppMapCartInfo();
                        });
                  },
                );
              },
            );
          }, growable: true),
        )
      ],
    );
  }
}
