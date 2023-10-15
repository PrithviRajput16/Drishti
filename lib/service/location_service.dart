import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class LocationService {
  final String key = 'AIzaSyDIU---aTeL3OyuMvIGbROFy_hlw7A4EGc';

  Future<String> getPlaceId(String input) async {
    // print(input);
    var url =
        'https://maps.googleapis.com/maps/api/place/details/json?input=$input&inputtype=textquery&key=$key';
    print(url);
    var response = await http.get(Uri.parse(url));
    var json = convert.jsonDecode(response.body);
    // print(json);

    var placeId = json['candidates'][0]['place_id'] as String;

    print(placeId);

    return placeId;
  }

  Future<Map<String, dynamic>> getPlace(String input) async {
    final placeId = await getPlaceId(input);
    print(input);
    var url =
        'https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=$key';

    var response = await http.get(Uri.parse(url));
    print(response);
    var json = convert.jsonDecode(response.body);
    var results = json['result'] as Map<String, dynamic>;

    print(results);
    return results;
  }
}
