import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:klean/app/data/models/loc_model.dart';
import 'package:location/location.dart';
import '../../../routes/pages.dart';
import '../../core/p.dart';
import '../../data/models/user_model.dart';

class LocController extends GetxController {
  String imageurl = '';
  RxBool loadingUpload = false.obs;
  final picker = ImagePicker();
  Map<String, dynamic>? locData;
  Rx<LocModel>? locModel;
  RxBool loading = false.obs;
//  String? get firebaseCurrentUserId => FirebaseAuth.instance.currentUser?.uid;
  BitmapDescriptor sourceIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor currentLocationIcon = BitmapDescriptor.defaultMarker;

  final Completer<GoogleMapController> _controller = Completer();
  late final LocationData? currentLocation;

  void getCurrentLocation() async {
    Location location = Location.instance;
    location.getLocation().then(
      (location) {
        currentLocation = location;
      },
    );

    String lat = currentLocation!.latitude.toString();
    String lon = currentLocation!.longitude.toString();

    GoogleMapController googleMapController = await _controller.future;
    location.onLocationChanged.listen((newLoc) {
      currentLocation = newLoc;

      googleMapController.animateCamera(CameraUpdate.newCameraPosition(
          CameraPosition(
              zoom: 13, target: LatLng(newLoc.latitude!, newLoc.longitude!))));

      //     setState(() {});
    });
  }

  void setCustomMarkerIcon() {
    BitmapDescriptor.fromAssetImage(
            ImageConfiguration.empty, "assets/images/logo.png")
        .then(
      (icon) {
        sourceIcon = icon;
      },
    );

    BitmapDescriptor.fromAssetImage(
            ImageConfiguration.empty, "assets/images/logo.png")
        .then(
      (icon) {
        currentLocationIcon = icon;
      },
    );
  }
}
