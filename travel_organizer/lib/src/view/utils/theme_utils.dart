import 'package:flutter/material.dart';

class ThemeUtils {
  static const Color _primary = Color(0XFF800080);
  static const Color _secondary = Color(0XFF008080);
  static const Color _secondaryBackground = Color(0XFFFAFAFA);

  static ThemeData get light => ThemeData(
        useMaterial3: true,
        primaryColor: _primary,
        brightness: Brightness.light,
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white.withOpacity(0.8),
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: _primary,
          secondary: _secondary,
          brightness: Brightness.light,
        ),
        tooltipTheme: _tooltipLight,
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            titleTextStyle: TextStyle(
              color: _primary,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
            centerTitle: false,
            iconTheme: IconThemeData(
              color: _primary,
              size: 25,
            )),
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.all(_primary),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
            ),
          ),
        ),
        scaffoldBackgroundColor: _secondaryBackground,
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontSize: 16,
            color: Colors.grey[800],
          ),
          headlineSmall: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            height: 1,
          ),
          headlineMedium: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            height: 1,
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: _primary,
        ),
      );

  static TooltipThemeData get _tooltipLight => TooltipThemeData(
      decoration: BoxDecoration(
          color: Colors.grey[50],
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                offset: Offset(0, 2), blurRadius: 4, color: Colors.black26)
          ]),
      textStyle: TextStyle(
        color: Colors.grey[900],
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ));
}
