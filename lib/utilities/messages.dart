import 'package:flutter/material.dart';

class Messages{

  String getMessage(int temp){
    if(temp>25){
      return "Time to get an icecream";
    }else if(temp>20){
      return "it's time to wear shorts";
    }else if(temp<10){
      return "it's freezing cold in here";
    }else{
      return "keep a rainCoat just in case";
    }
  }

}