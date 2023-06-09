import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.indigoAccent;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primaryColor,
    // scaffoldBackgroundColor: Colors.amberAccent,
    appBarTheme: const AppBarTheme(
      color: primaryColor,
      elevation: 0,
    ),

    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle( color: primaryColor ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: primaryColor,
        ),
        borderRadius: BorderRadius.all( Radius.circular( 20 ) ),
      ),
      // enabledBorder: OutlineInputBorder(
      //   borderSide: BorderSide(
      //     color: Colors.indigo,
      //   ),
      // ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all( Radius.circular( 20 ) ),
      )
    )
  );

}