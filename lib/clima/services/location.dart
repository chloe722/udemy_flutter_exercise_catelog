import 'package:geolocator/geolocator.dart';

class Location {
  double lat;
  double lng;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getLastKnownPosition(desiredAccuracy: LocationAccuracy.low);
      lat = position.latitude;
      lng = position.longitude;

      print(position);
    } catch (e) {
      print(e);
    }
  }
}
