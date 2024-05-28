import 'package:flutter/material.dart';
import 'package:taskwise/src/constants/sizes.dart';

import '../../../constants/colors.dart';
class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15.0),),
        backgroundColor: tPrimaryColor,
        foregroundColor: tWhiteColor,
        side: BorderSide(color: tPrimaryColor),
        padding: EdgeInsets.symmetric(vertical: tButtonHeight),
      ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15.0),),
      backgroundColor: tWhiteColor,
      foregroundColor: tPrimaryColor,
      side: BorderSide(color: tWhiteColor),
      padding: EdgeInsets.symmetric(vertical: tButtonHeight),
  ),
  );
}