import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
        //background color
        background: Color.fromARGB(255, 177, 211, 245),
        //text color
        primary: Color.fromARGB(255, 89, 23, 182),
        secondary: Color.fromARGB(255, 255, 255, 255)),
    appBarTheme:
        const AppBarTheme(backgroundColor: Color.fromARGB(255, 73, 101, 128)));

ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      background: Color(0xFF121212), // Dark background
      primary:
          Color(0xFFBB86FC), // Used for buttons (ElevatedButton, TextButton)
      secondary: Color.fromARGB(
          255, 21, 22, 22), // Used for FAB and other accent elements
      surface: Color(0xFF1E1E1E), // AppBar and card backgrounds
      onBackground: Colors.white, // Text color on background
      onPrimary: Colors.black, // Text color on primary button
      onSurface: Colors.white, // Default text color
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 35, 0, 70))));
