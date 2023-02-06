import 'package:flutter/material.dart';
import 'package:clima2/utilities/location.dart';
import 'package:clima2/utilities/Networking.dart';

const String apiKey = 'e0d212740cf10b421dd6142155ae1419';
class WeatherModel {

  Future<dynamic>getCityWeather(String cityName) async {
    NetworkHelper networkHelper = NetworkHelper(url: 'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apiKey&units=metric');
    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  Future<dynamic>getLocationWeather()async{
    LocationFile location = LocationFile();
    await location.getCurruntLocation(); // we have to wait to complete this function before accecing lat , lon values
    NetworkHelper networkHelper =
    NetworkHelper(url: 'https://api.openweathermap.org/data/2.5/weather?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric');
    var weatherData = await networkHelper.getData();
    return weatherData;
  }
}