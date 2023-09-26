import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/model.dart';

class WeatherData {
  Future<Weather> getData(String city) async {
    var uriCall = Uri.parse(
        "http://api.weatherapi.com/v1/current.json?key=9697a3d838e44e6084e91504231109&q=$city&aqi=no");
    var response = await http.get(uriCall);
    var body = await jsonDecode(response.body);
    // print(body.toString());
    print(Weather.fromJson(body).pricipe.toString());
    return Weather.fromJson(body);
  }
}
