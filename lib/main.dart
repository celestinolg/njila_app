import 'package:flutter/material.dart';
import 'package:njila_app/feature/onboarding/onboarding_screen.dart';
import 'feature/splash/splash_screen.dart';
import 'feature/home/home_screen.dart';
import 'package:njila_app/core/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App',
      theme: AppTheme.darkTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/onboarding': (context) => const OnboardingScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
