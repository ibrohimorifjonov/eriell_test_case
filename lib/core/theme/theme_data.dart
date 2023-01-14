import 'dart:io';
import 'package:flutter/material.dart';

import '../utils/app_utils.dart';
import 'colors/theme_colors.dart';


final appTheme = ThemeData(
  useMaterial3: true,
  applyElevationOverlayColor: true,
  errorColor: ThemeColors.errorColor,
  disabledColor: ThemeColors.disabledColor,
  splashColor: ThemeColors.primaryColor.withOpacity(0.01),
  focusColor: ThemeColors.primaryColor,
  primaryColor: ThemeColors.primaryColor,
  visualDensity: VisualDensity.standard,
  materialTapTargetSize: MaterialTapTargetSize.padded,
  // fontFamily: 'SF-Pro-Display',
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        EdgeInsets.zero,
      ),
    ),
  ),
  dividerTheme: const DividerThemeData(thickness: 1),
);

final lightTheme = appTheme.copyWith(
  backgroundColor: ThemeColors.backgroundColor,
  scaffoldBackgroundColor: ThemeColors.scaffoldBackgroundColor,
  brightness: Brightness.light,
  dividerTheme: appTheme.dividerTheme.copyWith(
    color: ThemeColors.dividerColor,
  ),
  colorScheme: const ColorScheme.light(
    primary: ThemeColors.primaryColor,
    secondary: Colors.black,
  ),
  listTileTheme: const ListTileThemeData(
    minVerticalPadding: 12,
    minLeadingWidth: 12,
    horizontalTitleGap: 8,
    tileColor: ThemeColors.white,
    selectedColor: ThemeColors.white,
    selectedTileColor: ThemeColors.white,
    shape: RoundedRectangleBorder(
      borderRadius: AppUtils.kBorderRadius4,
    ),
  ),
  tabBarTheme: const TabBarTheme(
    labelColor: ThemeColors.black,
    unselectedLabelColor: ThemeColors.black,
    labelPadding: EdgeInsets.zero,
    labelStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
    unselectedLabelStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
    indicator: BoxDecoration(
      borderRadius: AppUtils.kBorderRadius12,
      color: ThemeColors.white,
    ),
  ),
  cardTheme: const CardTheme(
    color: ThemeColors.white,
    surfaceTintColor: ThemeColors.white,
    elevation: 0.1,
    shape: RoundedRectangleBorder(
      borderRadius: AppUtils.kBorderRadius4,
    ),
  ),
  primaryTextTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.37,
      color: Colors.black,
    ),
    headline2: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.41,
      color: Colors.black,
    ),
    headline3: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.01,
      color: Colors.black,
    ),
    headline4: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.38,
      color: Colors.black,
    ),
    headline6: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.38,
      color: Colors.black,
    ),
    bodyText1: TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    bodyText2: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  ),
  appBarTheme: const AppBarTheme(
    elevation: 0,
    scrolledUnderElevation: 1,
    foregroundColor: ThemeColors.white,
    backgroundColor: ThemeColors.white,
    surfaceTintColor: ThemeColors.white,
    shadowColor: Colors.black,
    titleTextStyle: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w700,
      color: ThemeColors.black1,
    ),
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.35,
      color: Colors.black,
    ),
    headline2: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.38,
      color: Colors.black,
    ),
    headline3: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.38,
      color: Colors.black,
    ),
    headline4: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.01,
      color: Colors.black,
    ),
    headline5: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.41,
      color: Colors.black,
    ),
    headline6: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.41,
      color: Colors.black,
    ),
    bodyText1: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    bodyText2: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    subtitle1: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: Colors.black,
      letterSpacing: -0.24,
    ),
    subtitle2: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: Colors.black,
      letterSpacing: -0.24,
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    alignLabelWithHint: true,
    hintStyle: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: Color(0xff9AA6AC),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ThemeColors.primaryColor, width: 1),
      borderRadius: AppUtils.kBorderRadius12,
    ),
    enabledBorder: OutlineInputBorder(
      borderSide:
          BorderSide(color: Color.fromRGBO(110, 139, 183, 0.3), width: 1),
      borderRadius: AppUtils.kBorderRadius12,
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ThemeColors.errorColor, width: 1),
      borderRadius: AppUtils.kBorderRadius12,
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ThemeColors.midGrey, width: 1),
      borderRadius: AppUtils.kBorderRadius12,
    ),
    border: OutlineInputBorder(
      borderRadius: AppUtils.kBorderRadius12,
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: AppUtils.kBorderRadius12,
      borderSide: BorderSide(color: Color(0xFFf5f5f5), width: 1),
    ),
    filled: true,
    isDense: true,
    fillColor: ThemeColors.white,
    floatingLabelAlignment: FloatingLabelAlignment.start,
    floatingLabelBehavior: FloatingLabelBehavior.always,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      splashFactory:
          Platform.isIOS ? NoSplash.splashFactory : InkRipple.splashFactory,
      elevation: MaterialStateProperty.all<double>(0),
      backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (states.contains(MaterialState.disabled)) {
          return ThemeColors.disabledColor;
        } else {
          return ThemeColors.primaryColor;
        }
      }),
      foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (states.contains(MaterialState.disabled)) {
          return ThemeColors.disabledButtonTextColor;
        } else {
          return ThemeColors.white;
        }
      }),
      maximumSize: MaterialStateProperty.all<Size>(
        const Size(double.infinity, 54),
      ),
      minimumSize: MaterialStateProperty.all<Size>(
        const Size(double.infinity, 54),
      ),
      fixedSize: MaterialStateProperty.all<Size>(
        const Size(double.infinity, 54),
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          height: 20 / 15,
        ),
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
    splashFactory:
        Platform.isIOS ? NoSplash.splashFactory : InkRipple.splashFactory,
    elevation: MaterialStateProperty.all<double>(0),
    backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
      if (states.contains(MaterialState.disabled)) {
        return ThemeColors.disabledColor;
      } else {
        return ThemeColors.primaryColor;
      }
    }),
    foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
      if (states.contains(MaterialState.disabled)) {
        return ThemeColors.disabledButtonTextColor;
      } else {
        return ThemeColors.white;
      }
    }),
    maximumSize: MaterialStateProperty.all<Size>(
      const Size(double.infinity, 52),
    ),
    textStyle: MaterialStateProperty.all<TextStyle>(
      const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        height: 20 / 15,
      ),
    ),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
    ),
  )),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: ThemeColors.white,
    type: BottomNavigationBarType.fixed,
    showSelectedLabels: true,
    selectedLabelStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
    unselectedLabelStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
    selectedIconTheme: IconThemeData(size: 24),
    unselectedIconTheme: IconThemeData(size: 24),
  ),
);

