// ignore_for_file: non_constant_identifier_names, duplicate_ignore

import 'package:flutter/material.dart';

class MyConstant {
  //gerneral
  static String appname = "blashop";

  //route
  // ignore: non_constant_identifier_names
  static String RouteAuthen = "/authen";
  static String RouteCreateAcount = "/createaccount";
  static String RouteBuyerService = "buyerservice";
  static String RouteSalerService = "salerservice";
  static String RouteRiderService = "riderservice";

  //Image path
  static String imgaccount = "images/account.png";
  static String imgauthen = "images/authen.png";
  static String imgbuyer = "images/buyer.png";
  static String imgrider = "images/rider.png";
  static String imgsaler = "images/saler.png";

  // Color
  static Color primary = Color(0xff25a59a);
  static Color dark = Color(0xff00756c);
  static Color light = Color(0xff63d7cb);

  // TextStyle
  TextStyle h1style() => TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: dark,
      );
  TextStyle h2style() => TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: dark,
      );
  TextStyle h3style() => TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: dark,
      );
}
