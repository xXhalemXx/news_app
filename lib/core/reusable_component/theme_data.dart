import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lightThemData() {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 22.0,
        ),
        actionsIconTheme: IconThemeData(color: Colors.black)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.deepPurple[400],
        elevation: 30.0),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        fontSize: 15.0,
        color: Colors.black38,
      ),
      bodyLarge: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w500,
        color: Colors.grey,
      ),
    ),
    searchBarTheme: SearchBarThemeData(
        backgroundColor:
            MaterialStateProperty.resolveWith((states) => Colors.black45)),
  );
}

ThemeData darkThemData() {
  return ThemeData(
    colorScheme: const ColorScheme.dark(),
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.black45,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white),
      foregroundColor: Colors.black45,
      backgroundColor: Colors.black45,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 22.0,
      ),
      actionsIconTheme: IconThemeData(color: Colors.white),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.black45,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.deepPurple,
      elevation: 30.0,
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontSize: 15.0,
        color: Colors.grey,
      ),
      bodyLarge: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    ),
  );
}
