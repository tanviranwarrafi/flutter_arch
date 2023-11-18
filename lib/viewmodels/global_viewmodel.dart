import 'package:flutter/cupertino.dart';

class GlobalViewModel with ChangeNotifier {
  /*Future<void> getCurrentCountry() async {
    if (countryCode != null) return;
    var location = await sl<Locations>().getCurrentLocation();
    if (location == null) return;
    var coordinates = LatLng(location.latitude!, location.longitude!);
    var code = await sl<GeoCodingLocation>().getCountryCode(coordinates);
    countryCode = code!;
    notifyListeners();
  }*/

  /*Future<PlaceItem?> getCurrentPlace() async {
    location ??= await sl<Locations>().getCurrentLocation();
    notifyListeners();
    var isLatLng = location?.latitude != null && location?.longitude != null;
    if (!isLatLng) return null;
    var latLng = LatLng(location!.latitude!, location!.longitude!);
    var place = await sl<GeoCodingLocation>().placeFromCoordinates(latLng);
    return place;
  }*/
}
