import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';
class TOutlinedButtonTheme {
  TOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15.0),),
        foregroundColor: tPrimaryColor,
        side: BorderSide(color: tPrimaryColor),
        padding: EdgeInsets.symmetric(vertical: tButtonHeight),
      ),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15.0),),
  foregroundColor: tWhiteColor,
  side: BorderSide(color: tWhiteColor),
  padding: EdgeInsets.symmetric(vertical: tButtonHeight),
  ),
  );
}