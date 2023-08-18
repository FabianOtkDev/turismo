import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color.fromARGB(255, 112, 163, 53),
        textTheme: GoogleFonts.latoTextTheme(ThemeData().textTheme),
      );
}
