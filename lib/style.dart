import 'package:flutter/material.dart';

class Style {
  static var appBarTheme = const AppBarTheme(
      titleSpacing: 0,
      elevation: 0,
      backgroundColor: Colors.white,
      toolbarHeight: 80);
  static var textTheme = const TextTheme(
      headlineLarge: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
      headlineSmall: TextStyle(fontSize: 15, fontWeight: FontWeight.bold));

  static var tabbarTheme = const TabBarTheme(
      indicator: UnderlineTabIndicator(
          insets: EdgeInsets.only(right: 60.0, left: 16, top: 50),
          borderSide:
              BorderSide(width: 10, color: Color.fromRGBO(253, 109, 142, 1))),
      indicatorSize: TabBarIndicatorSize.label,
      labelColor: Colors.black,
      unselectedLabelColor: Colors.black26,
      unselectedLabelStyle: TextStyle(fontSize: 30),
      labelStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold));

  static var themeData = ThemeData(
      textTheme: Style.textTheme,
      appBarTheme: Style.appBarTheme,
      tabBarTheme: Style.tabbarTheme,
      primaryColor: Colors.white,
      scaffoldBackgroundColor: Colors.white);
}
