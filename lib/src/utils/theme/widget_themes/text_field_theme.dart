import 'package:flutter/material.dart';
import 'package:taskwise/src/constants/colors.dart';

class TTextFormField {
  TTextFormField._();
  static InputDecorationTheme lightInputDecorationTheme =
      InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(color: tAccentDarkColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(color:tAccentDarkColor),
        ),
        prefixIconColor: tAccentDarkColor,
        suffixIconColor: tAccentDarkColor,
      );

  static InputDecorationTheme darkInputDecorationTheme =
  InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30.0),
      borderSide: BorderSide(color: tAccentLightColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30.0),
      borderSide: BorderSide(color:tAccentLightColor),
    ),
    prefixIconColor: tAccentLightColor,
    suffixIconColor: tAccentLightColor,
  );
}

