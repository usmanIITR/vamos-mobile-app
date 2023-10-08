import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static const background = Color(0xFFC5C5C5);
  static const white = Color(0xFFFFFFFF);
  static const red = Color(0xFFDE453B);
  static const purple = Color(0xFF542FBC);
  static const darkGrey = Color(0xFF545454);
  static const lightGrey = Color(0xFFC0C0C0);
  static const greyBackground = Color(0xFFF1EDED);
  static const darkGrey2 = Color(0xFF414040);

  static final h1 = TextStyle(
      fontSize: 24.sp, fontWeight: FontWeight.w800, fontFamily: 'Poppins');
  static final h2 = TextStyle(
      fontSize: 20.sp, fontWeight: FontWeight.w500, fontFamily: 'Poppins');
  static final h3 = TextStyle(
      fontSize: 17.sp.sp, fontWeight: FontWeight.w500, fontFamily: 'Poppins');
  static final h4 = TextStyle(
      fontSize: 14.sp, fontWeight: FontWeight.w400, fontFamily: 'Poppins');
  static final h5 = TextStyle(
      fontSize: 12.sp, fontWeight: FontWeight.w300, fontFamily: 'Poppins');
}

class CustomScrollPhysics extends BouncingScrollPhysics {
  // Customize the overscroll color here
  final Color overscrollColor;

  const CustomScrollPhysics({required this.overscrollColor});

  Color get scrollColor => overscrollColor; // Change the color here
}
