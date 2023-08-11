import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color/custom_colors.dart';

ThemeData lightThemeData() {
  return ThemeData(
    useMaterial3: true,
    fontFamily: 'Roboto',
    brightness: Brightness.light,
    primaryColor: const Color(0xff28C76F),
    canvasColor: const Color(0xff00D179),
    primaryColorDark: Colors.black,

    textTheme: TextTheme(
      //display
      displayLarge: TextStyle(
          fontSize: 50.sp, fontWeight: FontWeight.bold, color: Colors.black),
      displayMedium: TextStyle(
          fontSize: 40.sp, fontWeight: FontWeight.bold, color: Colors.black),
      displaySmall: TextStyle(
          fontSize: 30.sp, fontWeight: FontWeight.bold, color: Colors.black),
      //body
      bodyLarge: TextStyle(fontSize: 20.sp),
      bodyMedium: TextStyle(fontSize: 18.sp, color: Colors.grey[900]),
      bodySmall: TextStyle(fontSize: 16.sp),
      //title
      titleLarge: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
      titleMedium: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
      titleSmall: TextStyle(fontSize: 20.sp),
    ),
    //
    iconTheme: IconThemeData(color: Colors.red, size: 24.sp),
    //
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: myPrimeColor,
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 0.w),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
          elevation: 5,
          textStyle: GoogleFonts.roboto(fontSize: 19.sp)),
    ),
    // AppBar
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: Colors.red,
        size: 24.sp,
      ),
    ),
    tabBarTheme: const TabBarTheme(labelColor: Colors.red),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.all<Color?>(Colors.red),
    ),

    //
  );
}

ThemeData darkThemeData() => ThemeData(
      useMaterial3: true,
      fontFamily: 'Roboto',
      brightness: Brightness.dark,
      primaryColor: lightThemeData().primaryColor,
      canvasColor: lightThemeData().canvasColor,
  primaryColorDark: Colors.black,

      textTheme: TextTheme(
        displayLarge: TextStyle(
            fontSize: 50.sp, fontWeight: FontWeight.bold, color: Colors.white),
        displayMedium: TextStyle(
            fontSize: 40.sp, fontWeight: FontWeight.bold, color: Colors.white),
        displaySmall: TextStyle(
            fontSize: 30.sp, fontWeight: FontWeight.bold, color: Colors.white),
        bodyLarge: TextStyle(fontSize: 20.sp),
        bodyMedium: TextStyle(fontSize: 18.sp),
        bodySmall: TextStyle(fontSize: 16.sp),
        //title
        titleLarge: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
        titleMedium: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
        titleSmall: GoogleFonts.roboto(fontSize: 20.sp),
      ),
      //
      iconTheme: IconThemeData(color: Colors.red, size: 24.sp),
      //
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: myPrimeColor,
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 0.w),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
      ),
      //
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 24.sp,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(
          color: Colors.red,
          size: 24.sp,
        ),
      ),
      tabBarTheme:
          const TabBarTheme(labelColor: Colors.red, indicatorColor: Colors.red),
      radioTheme: RadioThemeData(
          fillColor: MaterialStateProperty.all<Color?>(Colors.red)),
    );
