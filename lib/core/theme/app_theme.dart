import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    // useMaterial3: true,
    // textTheme: GoogleFonts.outfitTextTheme().apply(
    //   bodyColor: Colors.black87,
    //   displayColor: Colors.black87,
    // ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
        backgroundColor: Color(0xff6200EE),
        foregroundColor: Colors.white,
        textStyle: GoogleFonts.outfit(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
        elevation: 3,
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: Colors.blueAccent, width: 1.5),
        foregroundColor: Colors.blueAccent,
        textStyle: GoogleFonts.outfit(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.r),
        ),
        padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 20.w),
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Color(0xffF7F7F7),
      contentPadding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide.none,
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(width: 1.5, color: Colors.red),
      ),
      hintStyle: GoogleFonts.outfit(
        fontSize: 14.sp,
        fontWeight: FontWeight.normal,
        color: Colors.grey.shade500,
      ),
      labelStyle: GoogleFonts.outfit(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        color: Colors.grey.shade700,
      ),
    ),
  );
}
