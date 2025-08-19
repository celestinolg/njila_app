import 'package:flutter/material.dart';

class AppColors {
  // Paleta de cores Njila - Dark
  static const Color vermelhoEnergia = Color(0xFFE63946);
  static const Color amareloVitalidade = Color(0xFFFFD60A);
  static const Color pretoElegante = Color(0xFF121212);
  static const Color cinzaEscuro = Color(0xFF1E1E1E);
  static const Color verdeSucesso = Color(0xFF06D6A0);
  static const Color textoClaro = Colors.white;
}

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.pretoElegante,
      primaryColor: AppColors.vermelhoEnergia,

      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.cinzaEscuro,
        foregroundColor: AppColors.textoClaro,
        elevation: 0,
        titleTextStyle: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: AppColors.textoClaro,
        ),
      ),

      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.bold,
          fontSize: 32,
          color: AppColors.textoClaro,
        ),
        headlineMedium: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: AppColors.textoClaro,
        ),
        titleMedium: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          fontSize: 18,
          color: AppColors.textoClaro,
        ),
        bodyLarge: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          color: AppColors.textoClaro,
        ),
        bodyMedium: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 14,
          color: Colors.white70,
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.vermelhoEnergia,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          textStyle: const TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),

      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.verdeSucesso,
        foregroundColor: Colors.white,
      ),

      colorScheme: const ColorScheme.dark(
        primary: AppColors.vermelhoEnergia,
        secondary: AppColors.amareloVitalidade,
        background: AppColors.pretoElegante,
        surface: AppColors.cinzaEscuro,
        onPrimary: Colors.white,
        onSecondary: Colors.black,
        onBackground: Colors.white,
        onSurface: Colors.white,
      ),
    );
  }
}
