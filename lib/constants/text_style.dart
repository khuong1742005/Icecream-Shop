import 'package:flutter/material.dart';

TextTheme textStyle() {
  return const TextTheme(
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
      ));
}
