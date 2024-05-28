import 'package:flutter/material.dart';
import 'package:taskwise/src/utils/theme/text_theme.dart';
import 'package:taskwise/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:taskwise/src/utils/theme/widget_themes/outlined_button_theme.dart';

class TaskwiseTheme{
  TaskwiseTheme._();

  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
    textTheme:TaskwiseTextTheme.lightTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
    textTheme: TaskwiseTextTheme.darkTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
  );
}
