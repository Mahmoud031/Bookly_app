import 'package:flutter/material.dart';
 //variables is static to access it without creating an object of the class 
 // static and global variables do the same thing but statis is more efficient but use it only in neccassry 
abstract class Styles {
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );
  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const textStyle30 = TextStyle(
      fontSize: 30, fontWeight: FontWeight.w600, fontFamily: 'Sectra');
}
