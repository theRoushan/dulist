import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Styles {
  static TextStyle link = TextStyle(
    color: Colors.blue,
    fontSize: 10.sp,
    fontFamily: GoogleFonts.inter().fontFamily,
  );

  static TextStyle kCalloutLabel = TextStyle(
    color: Colors.grey,
    fontSize: 10.sp,
    fontFamily: GoogleFonts.inter().fontFamily,
  );

  static TextStyle kTitle = TextStyle(
    color: Colors.black,
    fontSize: 12.sp,
    fontFamily: GoogleFonts.inter(
      fontWeight: FontWeight.w600,
    ).fontFamily,
  );

  static TextStyle text = TextStyle(
    color: Colors.black,
    fontSize: 10.sp,
    fontFamily: GoogleFonts.inter().fontFamily,
  );

  static TextStyle kHeadline = TextStyle(
    color: Colors.black,
    fontSize: 13.sp,
    fontFamily: GoogleFonts.inter(
      fontWeight: FontWeight.w600,
    ).fontFamily,
  );

  static TextStyle headline3 = TextStyle(
    color: Colors.black,
    fontSize: 14.sp,
    fontFamily: GoogleFonts.inter(
      fontWeight: FontWeight.w500,
    ).fontFamily,
  );
}
