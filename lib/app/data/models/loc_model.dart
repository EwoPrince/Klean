
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocModel {
  LatLng? loc;

  LocModel({
    this.loc,
  });

  LocModel.fromData(Map<String, dynamic>? dataMap)
      : loc = dataMap!['loc'];

  Map<String, dynamic> toData() {
    return {
      'loc': loc,
    };
  }
}
