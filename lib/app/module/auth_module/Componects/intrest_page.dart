import 'dart:async';

import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:flutter/material.dart';
import '../../../core/p.dart';
import '../../../core/theme/color_theme.dart';
import '../../../global_widgets/space.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:klean/app/core/utils/Constant.dart';
import 'package:location/location.dart';

class IntrestPage extends StatefulWidget {
  static const LatLng sourceLocation = LatLng(37.33500926, -122.03272188);

  @override
  State<IntrestPage> createState() => _IntrestPageState();
}

class _IntrestPageState extends State<IntrestPage> {
  final Completer<GoogleMapController> _controller = Completer();

  List<LatLng> polylineCoordinates = [];

  late final LocationData? currentLocation;

  BitmapDescriptor sourceIcon = BitmapDescriptor.defaultMarker;

  BitmapDescriptor currentLocationIcon = BitmapDescriptor.defaultMarker;

  @override
  void initState() {
    // TODO: implement initState
     P.loc.getCurrentLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return
          Obx(
            () => GoogleMap(
              onMapCreated: (mapController) {
                  _controller.complete(mapController);
                },
                initialCameraPosition: CameraPosition(
                  target: LatLng(
                      currentLocation!.latitude!, currentLocation!.longitude!),
                  zoom: 12.5,
                ),
                polylines: {
                  Polyline(
                    polylineId: const PolylineId("route"),
                    points: polylineCoordinates,
                    color: Colors.blueAccent,
                    width: 12,
                  ),
                },
                markers: {
                  Marker(
                    icon: currentLocationIcon,
                    markerId: const MarkerId("currentLocation"),
                    position: LatLng(
                        currentLocation!.latitude!, currentLocation!.longitude!),
                  ),
                  Marker(
                    icon: sourceIcon,
                    markerId: const MarkerId("source"),
                    position: IntrestPage.sourceLocation,
                  ),
                },
                
              ),
          );
  }
}
