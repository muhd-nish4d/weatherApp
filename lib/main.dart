import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: GoogleFonts.josefinSans().fontFamily,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white, fontSize: 20),
          bodyMedium: TextStyle(color: Colors.white, fontSize: 20),
          bodySmall: TextStyle(color: Colors.white, fontSize: 20),
        ),
        primarySwatch: Colors.blue,
      ),
      home: const ScreenSplash(),
    );
  }
}
