// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.white,
        canvasColor: creamColor,
        backgroundColor: MyTheme.darkBluishColor,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: darkBluishColor,
        ),
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontFamily: GoogleFonts.lato().fontFamily,
            fontWeight: FontWeight.w900,
            fontSize: 18,
          ),
          centerTitle: true,
        ),
      );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.poppins().fontFamily,
        backgroundColor: Colors.white,
        cardColor: Colors.black,
        canvasColor: darkGrayColor,
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: lightBluishColor),
        appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontFamily: GoogleFonts.lato().fontFamily,
            fontWeight: FontWeight.w900,
            fontSize: 18,
          ),
          centerTitle: true,
        ),
      );

// colors

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkGrayColor = Vx.gray900;
  static Color darkBluishColor = Color(0xff403b58);
  static Color lightBluishColor = Vx.indigo500;
}
