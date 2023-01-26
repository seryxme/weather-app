import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:weather_app/services/weather_service.dart';

class NightUIController extends GetxController {
  String? description;
  double? temp;

  TextEditingController city = TextEditingController();
  final WeatherService _service = WeatherService();
  getWeatherResultByCity() async {
    var res = await _service.getWeatherResultByCity(city.text);
    res.data['weather'][0]['main'];
    description = res.data['weather'][0]['description'];
    temp = res.data['main']['temp'];
    print(description);
    print(temp);
    update();
  }
}
