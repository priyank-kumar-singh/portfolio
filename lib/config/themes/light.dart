import 'package:flutter/material.dart';

import 'constants.dart';
import 'theme.dart';

class LightTheme extends MyTheme with KTheme {
  @override
  Color? get primaryColor => null;

  @override
  Color? get secondaryColor => const Color(0xFFF0EFEF);

  @override
  TextStyle get titleTextStyle => super.titleTextStyle.copyWith(
    color: Colors.grey.shade900,
  );

  @override
  TextTheme get textTheme => lightTextTheme.copyWith(
    bodyText1: baseTextStyle.copyWith(
      color: Colors.grey.shade800,
    ).merge(KTheme.bodyText1),
    headline3: baseTextStyle.copyWith(
      color: Colors.grey.shade800,
    ).merge(KTheme.headline3),
    headline4: baseTextStyle.copyWith(
      color: Colors.grey.shade800,
    ).merge(KTheme.headline4),
    headline5: baseTextStyle.copyWith(
      color: Colors.grey.shade800,
    ).merge(KTheme.headline5),
    headline6: baseTextStyle.copyWith(
      color: Colors.grey.shade600,
    ).merge(KTheme.headline6),
    subtitle2: baseTextStyle.copyWith(
      color: Colors.grey.shade800,
    ).merge(KTheme.subtitle2),
  );

  @override
  IconThemeData get actionsIconTheme => super.actionsIconTheme.copyWith(
    color: Colors.grey.shade800,
  );

  @override
  ThemeData get themeData => ThemeData.light().copyWith(
    appBarTheme: appBarTheme.copyWith(
      backgroundColor: Colors.white,
      iconTheme: actionsIconTheme,
    ),

    bottomNavigationBarTheme: bottomNavigationBarTheme.copyWith(
      selectedItemColor: Colors.blue.shade700,
      unselectedItemColor: Colors.grey.shade600,
    ),

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

    dividerTheme: dividerTheme.copyWith(
      color: Colors.grey.shade600,
    ),

    inputDecorationTheme: inputDecorationTheme.copyWith(
      fillColor: const Color(0xFFEEEEEE)
    ),

    scaffoldBackgroundColor: Colors.white,

    snackBarTheme: snackBarTheme,
    textTheme: textTheme,
    primaryTextTheme: primaryTextTheme,
  );
}
