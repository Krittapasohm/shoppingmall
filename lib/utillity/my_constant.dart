import 'dart:ui';

import 'package:flutter/material.dart';

class MyConstant {
  //Genernal
  static String appName = 'Delivery';

  //Route
  static String routeAuthen = '/authen';
  static String routeCreateAccount = '/createAccount';
  static String routeBuyerSiver = '/buyerService';
  static String routeSalerService = '/salerService';
  static String routeRiderService = '/riderService';

  // Image
  static String image1 = 'images/image1.jpg';
  static String image2 = 'images/image2.png';
  static String image3 = 'images/image3.png';
  static String image4 = 'images/image4.png';

  //color
  static Color primary = Color(0xffb3e5fc);
  static Color dark = Color(0xff82b3c9);
  static Color light = Color(0xffe6ffff);

  //style
  TextStyle h1Style() => TextStyle(
        fontSize: 44,
        color: dark,
        fontWeight: FontWeight.bold,
      );
  TextStyle h2Style() => TextStyle(
        fontSize: 18,
        color: dark,
        fontWeight: FontWeight.w700,
      );
  TextStyle h3Style() => TextStyle(
        fontSize: 14,
        color: dark,
        fontWeight: FontWeight.normal,
      );

  ButtonStyle myButtonStyle() => ElevatedButton.styleFrom(
        primary: MyConstant.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      );
}
