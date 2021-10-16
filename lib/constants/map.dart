import 'package:google_api_headers/google_api_headers.dart';
import 'package:google_maps_webservice/places.dart';

// const GOOGLE_MAPS_API_KEY = "AIzaSyBqUAHYRrjzyAhJ3AB5rqDNkd8ltot_pts";
const GOOGLE_MAPS_API_KEY = "AIzaSyAjsYeJdhm9P25jn0sQ-TEI7E9ahogXTLU";

GoogleMapsPlaces places = GoogleMapsPlaces(
  apiKey: GOOGLE_MAPS_API_KEY,
  //apiHeaders: GoogleApiHeaders().getHeaders(),
);

place() async {
  GoogleMapsPlaces places = GoogleMapsPlaces(
    apiKey: GOOGLE_MAPS_API_KEY,
    apiHeaders: await GoogleApiHeaders().getHeaders(),
  );
  return places;
}
