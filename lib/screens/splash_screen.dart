import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/screens/home/home_screen.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const ScreenHome(),
      ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image:
                  AssetImage('lib/assets/image/weather_app_night_image.jpg'))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'lib/assets/icons/rainbow_icon.png',
            width: 70,
          ),
          Text(
            'Weather App',
            style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: GoogleFonts.josefinSans().fontFamily,
                color: Colors.white),
          )
        ],
      ),
    );
  }
}
