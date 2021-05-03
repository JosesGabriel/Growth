import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData customTheme = _buildDefaultTheme();

ThemeData _buildDefaultTheme() {
  final ThemeData base = ThemeData();
  return base.copyWith(
      textTheme: GoogleFonts.poiretOneTextTheme(),
      primaryColor: const Color(0xFFF7E6D1),
      accentColor: const Color(0xFFD1E2F7),
      highlightColor: const Color(0xFFD1F7D3),
      errorColor: const Color(0xFFF7D1F5));
}
