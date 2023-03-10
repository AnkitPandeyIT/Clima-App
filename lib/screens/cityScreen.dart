import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clima2/utilities/constants.dart';


class CityScreen extends StatefulWidget {
  const CityScreen({Key? key}) : super(key: key);

  @override
  State<CityScreen> createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  String ?cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage('lib/images/city_background.jpg',),
              fit: BoxFit.fill
            )
          ),
          constraints: BoxConstraints.expand(),
          child: SafeArea(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: FlatButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                    child: Icon(Icons.arrow_back, size: 50,),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.black
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      icon: Icon(Icons.location_city,color: Colors.white,
                      size: 50,),
                      hintText: "Enter City Name",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide.none
                      )
                    ),
                    onChanged: (value){
                      cityName = value;
                    },
                  ),
                ),
                FlatButton(onPressed: (){
                  Navigator.pop(context,cityName);

                }, child: Text(
                  "Get Weather",style: kButtonTextStyle,
                ))
              ],
            ),
          ),
        ),
      );
  }
}
