import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper{

  NetworkHelper({required this.url});
  final String url;

  Future getData() async {

    http.Response response = await http.get(Uri.parse(url));
    String data = response.body;
    if(response.statusCode == 200){
      return jsonDecode(data);
    }else{
      print(response.statusCode);
    }

  }
}