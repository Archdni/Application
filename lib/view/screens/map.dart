


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../core/constant/color.dart';
import '../../controller/map_controller.dart';

class ArchedniMap extends StatefulWidget {
  final String cityname;
  final double latitude;
  final double longitude;
  const ArchedniMap({
    Key? key,
    required this.latitude,
    required this.longitude,
    required this.cityname,
  }) : super(key: key);

  @override
  State<ArchedniMap> createState() => _ArchedniMapState();
}

class _ArchedniMapState extends State<ArchedniMap> {
  late final CameraPosition _initialLocation = CameraPosition(
      zoom: 10.0, target: LatLng(widget.latitude, widget.longitude));
  late GoogleMapController mapController;

  late Position _currentPosition;

  late BitmapDescriptor activityIcon;
  final SchoolListViewModel _activitieslistVM = SchoolListViewModel();

  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
  String googleAPiKey = "";

  _getMarkersactivity() async {
    final activity = await _activitieslistVM.getAllActvities(widget.cityname);
    for (int i = 0; i < activity.length; i++) {
      _activityMarkers(activity[i]);
    }
  }


  void _activityMarkers(SchoolListViewModel school) {
    var markerIdVal = school.name;
    final MarkerId markerId = MarkerId(markerIdVal);

    // creating a new MARKER
    // debugPrint(school.latitude.toString());
    final Marker marker = Marker(
      markerId: markerId,
      position: LatLng(school.latitude, school.longitude),
      infoWindow: InfoWindow(title: school.name),
      icon: activityIcon,
    );
    setState(() {
      // adding a new marker to map
      markers[markerId] = marker;
    });
  }


  void activitypin() async {
    activityIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(devicePixelRatio: 2.5), 'assets/images/mosque.png');
  }

  _getCurrentLocation() async {
    // ignore: unused_local_variable
    LocationPermission permission = await Geolocator.requestPermission();
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) async {
      setState(() {
        _currentPosition = position;
        debugPrint('CURRENT POS: $_currentPosition');
        mapController.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: LatLng(position.latitude, position.longitude),
              zoom: 18.0,
            ),
          ),
        );
      });
      // await _getAddress();
    }).catchError((e) {
      debugPrint(e);
    });
  }

  @override
  void initState() {

    activitypin();
    super.initState();
    _getMarkersactivity();
    //_getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: AppColor.bluecell,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(CupertinoIcons.chevron_back),
            color: AppColor.plainwhite,
            iconSize: 30,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          //Add some pic or a text to the center later
         /* title: const Image(
            image: AssetImage("assets/img/buttonlogo.png"),
            height: 30,
            width: 30,
          )*/
          ),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            GoogleMap(
              markers: Set<Marker>.of(markers.values),
              initialCameraPosition: _initialLocation,
              myLocationEnabled: true,
              myLocationButtonEnabled: false,
              mapType: MapType.normal,
              zoomGesturesEnabled: true,
              zoomControlsEnabled: false,
              onMapCreated: (GoogleMapController controller) {
                mapController = controller;
              },
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ClipOval(
                      child: Material(
                        color: AppColor.bluecell // button color
                        child: InkWell(
                          splashColor: Colors.blue, // inkwell color
                          child: const SizedBox(
                            width: 50,
                            height: 50,
                            child: Icon(Icons.add),
                          ),
                          onTap: () {
                            mapController.animateCamera(
                              CameraUpdate.zoomIn(),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ClipOval(
                      child: Material(
                        color: AppColor.bluecell // button color
                        child: InkWell(
                          splashColor: Colors.blue, // inkwell color
                          child: const SizedBox(
                            width: 50,
                            height: 50,
                            child: Icon(Icons.remove),
                          ),
                          onTap: () {
                            mapController.animateCamera(
                              CameraUpdate.zoomOut(),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SafeArea(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0, bottom: 90.0),
                  child: ClipOval(
                    child: Material(
                      color: AppColor.bluecell // button color
                      child: InkWell(
                        splashColor: AppColor.skygrey // inkwell color
                        child: const SizedBox(
                          width: 50,
                          height: 50,
                          child: Icon(
                            Icons.my_location,
                            color: AppColor.skygrey
                          ),
                        ),
                        onTap: () {
                          _getCurrentLocation();
                          mapController.animateCamera(
                            CameraUpdate.newCameraPosition(
                              CameraPosition(
                                target: LatLng(
                                  _currentPosition.latitude,
                                  _currentPosition.longitude,
                                ),
                                zoom: 18.0,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

