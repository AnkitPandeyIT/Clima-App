import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationFile{

  double ?latitude;
  double ?longitude;

  Future<void>getCurruntLocation()async{

    LocationPermission permission ;
    permission = await Geolocator.checkPermission();
    if(permission == LocationPermission.denied){
      permission = await Geolocator.requestPermission();
    }
    try{
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      latitude =  position.latitude;
      longitude = position.longitude;

    } catch(e){
      print(e);
    }
  }
}