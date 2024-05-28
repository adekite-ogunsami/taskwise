// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskwiseTextTheme {
  TaskwiseTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
      headline6:GoogleFonts.poppins(
        color: Color(0xFF020007),
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      ),
    headline4:GoogleFonts.dmSans(
    color: Color(0xFF020007),
      fontWeight: FontWeight.w600,
      fontSize: 16.0,
    ),
    headline3:GoogleFonts.dmSans(
      color: Color(0xFF020007),
      fontWeight: FontWeight.w700,
      fontSize: 24.0,
    ),
    headline2:GoogleFonts.dmSans(
      color: Color(0xFF020007),
      fontWeight: FontWeight.w700,
      fontSize: 24.0,
    ),
    headline1: GoogleFonts.dmSans(
      color: Color(0xFF020007),
      fontWeight: FontWeight.bold,
      fontSize: 28.0,
    ),
    bodyText1: GoogleFonts.dmSans(
        color: Color(0xFF020007),
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
    ),
    bodyText2: GoogleFonts.dmSans(
      color: Color(0xFF020007),
      fontWeight: FontWeight.normal,
      fontSize: 14.0,
    )
  );


  static TextTheme darkTextTheme = TextTheme(
      headline6:GoogleFonts.poppins(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      ),
      headline4:GoogleFonts.dmSans(
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
      ),
      headline3:GoogleFonts.dmSans(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: 24.0,
      ),
      headline2:GoogleFonts.dmSans(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: 24.0,
      ),
      headline1: GoogleFonts.dmSans(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 28.0,
      ),
      bodyText1: GoogleFonts.dmSans(
        color: Colors.white,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      ),
      bodyText2: GoogleFonts.dmSans(
        color: Colors.white,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      )
  );
}