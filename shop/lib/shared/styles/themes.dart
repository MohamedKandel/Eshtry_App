import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData lightThemeData() {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
    appBarTheme: AppBarTheme(
      titleSpacing: 20.0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white10,
        statusBarIconBrightness: Brightness.dark,
      ),
      color: Colors.white,

      titleTextStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 18.0,
      ),
      iconTheme: IconThemeData(color: Colors.black54),
    ),
    scaffoldBackgroundColor: HexColor('ffffff'),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 20.0,
      backgroundColor: HexColor('fafafa'),
      selectedIconTheme: IconThemeData(color: HexColor('195b91')),
      unselectedItemColor: Colors.black54,
    ),
    textTheme: TextTheme(
      bodySmall: TextStyle(
        color: HexColor("545454"),
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        overflow: TextOverflow.ellipsis,
        fontFamily: "AdobeArabic",
      ),
      bodyMedium: TextStyle(
        color: HexColor("4f4f4f"),
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        overflow: TextOverflow.ellipsis,
        fontFamily: "AdobeArabic",
      ),
      bodyLarge: TextStyle(
        color: Colors.black,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        overflow: TextOverflow.ellipsis,
        fontFamily: "AdobeArabicBold",
      ),
      labelLarge: TextStyle(
        color: Colors.black,
        fontSize: 28.0,
        fontWeight: FontWeight.bold,
        fontFamily: "AdobeArabicBold",
      ),
      labelMedium: TextStyle(
        color: HexColor("4f4f4f"),
        fontSize: 18.0,
        fontWeight: FontWeight.normal,
        fontFamily: "AdobeArabic",
      ),
      labelSmall: TextStyle(
        color: Colors.black,
        fontSize: 12.0,
      )
    ),
  );
}

ThemeData darkThemeData() {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
    appBarTheme: AppBarTheme(
      titleSpacing: 20.0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: HexColor('333739'),
        statusBarIconBrightness: Brightness.light,
      ),
      color: HexColor('333739'),

      titleTextStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 18.0,
      ),
      iconTheme: IconThemeData(color: Colors.white60),
    ),
    scaffoldBackgroundColor: HexColor('333739'),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 20.0,
      backgroundColor: HexColor('333739'),
      selectedIconTheme: IconThemeData(color: HexColor('1f73b8')),
      unselectedItemColor: Colors.white60,
    ),
    textTheme: TextTheme(
      bodySmall: TextStyle(
        color: HexColor("c7c7c7"),
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        overflow: TextOverflow.ellipsis,
        fontFamily: "AdobeArabic",
      ),
      bodyMedium: TextStyle(
        color: HexColor("d6d6d6"),
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        overflow: TextOverflow.ellipsis,
        fontFamily: "AdobeArabic",
      ),
      bodyLarge: TextStyle(
        color: Colors.white,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        overflow: TextOverflow.ellipsis,
        fontFamily: "AdobeArabicBold",
      ),
      labelLarge: TextStyle(
        color: Colors.white,
        fontSize: 28.0,
        fontWeight: FontWeight.bold,
        fontFamily: "AdobeArabicBold",
      ),
      labelMedium: TextStyle(
        color: HexColor("d6d6d6"),
        fontSize: 18.0,
        fontWeight: FontWeight.normal,
        fontFamily: "AdobeArabic",
      ),
        labelSmall: TextStyle(
          color: Colors.white,
          fontSize: 12.0,
        )
    ),
  );
}
