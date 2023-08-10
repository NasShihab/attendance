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
    primaryColorDark: Colors.white.withOpacity(.3),

    textTheme: TextTheme(
      //display
      displayLarge: GoogleFonts.roboto(
          fontSize: 50.sp, fontWeight: FontWeight.bold, color: Colors.black),
      displayMedium: GoogleFonts.roboto(
          fontSize: 40.sp, fontWeight: FontWeight.bold, color: Colors.black),
      displaySmall: GoogleFonts.roboto(
          fontSize: 30.sp, fontWeight: FontWeight.bold, color: Colors.black),
      //body
      bodyLarge: GoogleFonts.roboto(fontSize: 20.sp),
      bodyMedium: GoogleFonts.roboto(fontSize: 18.sp, color: Colors.grey[900]),
      bodySmall: GoogleFonts.roboto(fontSize: 15.sp),
      //title
      titleLarge:
          GoogleFonts.roboto(fontSize: 24.sp, fontWeight: FontWeight.bold),
      titleMedium:
          GoogleFonts.roboto(fontSize: 22.sp, fontWeight: FontWeight.bold),
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
          elevation: 5,
          textStyle: GoogleFonts.roboto(fontSize: 19.sp)),
    ),
    // AppBar
    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      titleTextStyle: GoogleFonts.roboto(
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
      primaryColorDark: Colors.black.withOpacity(.3),

      textTheme: TextTheme(
        displayLarge: GoogleFonts.roboto(
            fontSize: 50.sp, fontWeight: FontWeight.bold, color: Colors.white),
        displayMedium: GoogleFonts.roboto(
            fontSize: 40.sp, fontWeight: FontWeight.bold, color: Colors.white),
        displaySmall: GoogleFonts.roboto(
            fontSize: 30.sp, fontWeight: FontWeight.bold, color: Colors.white),
        bodyLarge: GoogleFonts.roboto(fontSize: 20.sp),
        bodyMedium: GoogleFonts.roboto(fontSize: 18.sp),
        bodySmall: GoogleFonts.roboto(fontSize: 15.sp),
        //title
        titleLarge:
            GoogleFonts.roboto(fontSize: 24.sp, fontWeight: FontWeight.bold),
        titleMedium:
            GoogleFonts.roboto(fontSize: 22.sp, fontWeight: FontWeight.bold),
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
            textStyle: GoogleFonts.roboto()),
      ),
      //
      appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        titleTextStyle: GoogleFonts.roboto(
          color: Colors.white,
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
