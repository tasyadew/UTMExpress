import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
// import 'package:location/location.dart';
// import 'package:syncfusion_flutter_maps/maps.dart';
import 'package:utmexpress/pages/home/widgets/location_button.dart';

import '../../widgets/custom_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late final MapController _mapController;

  @override
  void initState() {
    super.initState();

    _mapController = MapController();
    //_initialLocation = currentLocation();

  }

  @override
  void dispose() {
    super.dispose();
  }

  centerOnLocation() async {
    var location = await Geolocator.getCurrentPosition();
    //animatedMapMove(LatLng(location.latitude, location.longitude), 17.5);
  }

  // void animatedMapMove(LatLng destLocation, double destZoom) {
  //   final latTween = Tween<double>(
  //       begin: _mapController.center.latitude, end: destLocation.latitude);
  //   final lngTween = Tween<double>(
  //       begin: _mapController.center.longitude, end: destLocation.longitude);
  //   final zoomTween = Tween<double>(begin: _mapController.zoom, end: destZoom);
  //
  //   final controller = AnimationController(
  //       duration: const Duration(milliseconds: 500), vsync: this);
  //   final Animation<double> animation =
  //   CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn);
  //
  //   controller.addListener(() {
  //     _mapController.move(
  //         LatLng(latTween.evaluate(animation), lngTween.evaluate(animation)),
  //         zoomTween.evaluate(animation));
  //   });
  //
  //   animation.addStatusListener((status) {
  //     if (status == AnimationStatus.completed) {
  //       controller.dispose();
  //     } else if (status == AnimationStatus.dismissed) {
  //       controller.dispose();
  //     }
  //   });
  //
  //   controller.forward();
  // }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children:[
        FlutterMap(
        //mapController: _mapController,
        options: MapOptions(
          center: LatLng(1.55973, 103.63486),
          zoom: 17.0,
          maxZoom: 18.0,
          keepAlive: true,
          scrollWheelVelocity: 0.0025,
          rotation: 0,
          maxBounds: LatLngBounds(
            LatLng(1.57643, 103.61699),
            LatLng(1.53533, 103.66544),
          ),
        ),
        children: [
          TileLayer(
            urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
            userAgentPackageName: 'dev.fleaflet.flutter_map.example',
          ),

        ],
        //nonRotatedChildren: [],
        ),
        Positioned(
          bottom: 30,
          right: 30,
          child: CurrentLocationButton(function: centerOnLocation),
        ),
      ],
    );
  }
}
