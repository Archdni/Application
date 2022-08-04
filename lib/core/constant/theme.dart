
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color.dart';

class Dirtheme {

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.ghostwhite,
    colorScheme: const ColorScheme.dark(),
    textTheme: TextTheme(
      headline4: GoogleFonts.openSans(
          fontSize: 30, fontWeight: FontWeight.w400, letterSpacing: 0.25),
      headline5: GoogleFonts.openSans(
          fontSize: 24, fontWeight: FontWeight.w400, color: AppColor.black),
      headline6: GoogleFonts.openSans(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.15,
          color: AppColor.black),
      subtitle1: GoogleFonts.openSans(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.15,
          color: AppColor.black),
      subtitle2: GoogleFonts.openSans(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.1,
          color:  AppColor.ghostwhite,),
      bodyText1: GoogleFonts.openSans(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5,
          color: AppColor.black),
      bodyText2: GoogleFonts.openSans(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
          color: AppColor.black),
      button: GoogleFonts.openSans(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.25,
          color: AppColor.black),
      caption: GoogleFonts.openSans(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.4,
          color: AppColor.black),
      overline: GoogleFonts.openSans(
          fontSize: 10,
          fontWeight: FontWeight.w400,
          letterSpacing: 1.5,
          color: AppColor.black),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor:  AppColor.bluecell,
      elevation: 1,
      toolbarTextStyle:GoogleFonts.openSans(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.15,
          color: AppColor.skygrey),
      titleTextStyle: GoogleFonts.openSans(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.15,
          color: AppColor.skygrey),
      shadowColor: AppColor.plainwhite,
      centerTitle: true,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      //selectedIconTheme: IconThemeData(size: 30),
      backgroundColor: AppColor.plainwhite,
      type: BottomNavigationBarType.fixed,
      elevation: 12.0,
      selectedItemColor: AppColor.bluecell,
      unselectedItemColor: AppColor.skygrey,
      selectedLabelStyle: TextStyle(color: AppColor.bluecell, height: 1),
      unselectedLabelStyle: TextStyle(color: AppColor.ghostwhite, height: 1),
    ),
  );
}
