import 'package:flutter/material.dart';

abstract class Style{
  static const TextStyle normal01 = TextStyle(
      fontSize: 24, fontWeight: FontWeight.w400,color:Color.fromARGB(255, 55, 27, 52)) ;
  static const TextStyle normal = TextStyle(
      fontSize: 24, fontWeight: FontWeight.w400,color:Colors.black);
  static const TextStyle bold = TextStyle(
      fontSize: 26,fontWeight: FontWeight.w600,
      color: Colors.black);
  static const TextStyle bold01 = TextStyle(
      fontSize: 26,fontWeight: FontWeight.w600,
      color: Color.fromARGB(255, 55, 27, 52));
}