import 'package:flutter/material.dart';

import 'constants.dart';
import 'theme.dart';

class DarkTheme extends MyTheme {
  @override
  Color? get primaryColor => const Color(0xFFA19CEA);

  @override
  Color? get secondaryColor => null;

  @override
  TextTheme get textTheme => darkTextTheme.copyWith(
    bodyText1: baseTextStyle.copyWith(
      color: Colors.white,
    ).merge(KTheme.bodyText1),
    headline3: baseTextStyle.copyWith(
      color: Colors.white,
    ).merge(KTheme.headline3),
    headline4: baseTextStyle.copyWith(
      color: Colors.white,
    ).merge(KTheme.headline4),
    headline5: baseTextStyle.copyWith(
      color: Colors.white,
    ).merge(KTheme.headline5),
    headline6: baseTextStyle.copyWith(
      color: Colors.grey.shade600,
    ).merge(KTheme.headline6),
    subtitle2: baseTextStyle.copyWith(
      color: Colors.white,
    ).merge(KTheme.subtitle2),
  );

  @override
  TextStyle get titleTextStyle => super.titleTextStyle.copyWith(
    color: Colors.white,
  );

  @override
  ThemeData get themeData => ThemeData.dark().copyWith(
    appBarTheme: appBarTheme,
    bottomNavigationBarTheme: bottomNavigationBarTheme,

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(const Color(0xFF27447f)),
        padding: MaterialStateProperty.all(const EdgeInsets.all(16.0)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        )),
      ),
    ),

    errorColor: errorColor,
    dialogTheme: dialogTheme,
    dividerTheme: dividerTheme,
    inputDecorationTheme: inputDecorationTheme,
    snackBarTheme: snackBarTheme,
    textTheme: textTheme,
    primaryTextTheme: primaryTextTheme,
  );
}
