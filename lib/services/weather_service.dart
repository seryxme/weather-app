import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/services/base_service.dart';

class WeatherService {
  // final _baseService = BaseService();
  // final apiKey = ;

 getWeatherResultByCity(String city) async {
  try {
    var response = await Dio().get('https://api.openweathermap.org/data/2.5/weather?q=$city&appid=apikey');
    return response;
  } catch (e) {
    print(e);
  }
}

  // getWeatherResultByCity(String city) async {
  //   try {
  //     var response = _baseService
  //         .request('/data/2.5/weather?q=$city&appid=$apiKey', method: 'get');
  //     log(response.toString());
  //     return response;
  //   } catch (e) {
  //     log(e.toString());
  //   }
  // }
}
