import 'package:flutter/material.dart';

class AppWidget{
  static TextStyle boldTextFieldStyle() {
    return TextStyle(
                color: Colors.black, 
                fontSize: 20.0, 
                fontWeight: FontWeight.bold, 
                fontFamily: 'Ubuntu');
  }

  static TextStyle headLineTextFieldStyle() {
    return TextStyle(
                color: Colors.black, 
                fontSize: 24.0, 
                fontWeight: FontWeight.bold, 
                fontFamily: 'Ubuntu');
  }


  static TextStyle lightTextFieldStyle() {
    return TextStyle(
                color: Colors.black54, 
                fontSize: 15.0, 
                fontWeight: FontWeight.w500, 
                fontFamily: 'Ubuntu');
  }

  static TextStyle semiBoldTextFieldStyle() {
    return TextStyle(
                color: Colors.black87, 
                fontSize: 18.0, 
                fontWeight: FontWeight.w500, 
                fontFamily: 'Ubuntu');
  }

}