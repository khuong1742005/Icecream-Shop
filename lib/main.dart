import 'package:flutter/material.dart';
import 'package:ice_cream_shop/started_page/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xffFF4F80),
          primary: const Color(0xffFF4F80),
          primaryContainer: const Color(0xffF1F1F1),
          secondary: const Color(0xfff5a7bc),
          secondaryContainer: const Color(0xff6C3D20),
          tertiary: const Color(0xffF884A5),
        ),
        textTheme: const TextTheme(
            // Heading : đậm to
            headlineMedium: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            titleLarge: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w900,
            ),
            // label 1 : nhỏ và hơi đậm
            labelLarge: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            labelSmall: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            )),
      ),
      debugShowCheckedModeBanner: false,
      home: const WelcomePage(),
    );
  }
}
