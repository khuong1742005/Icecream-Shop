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
            secondary: const Color(0xfff5a7bc),
            tertiary: const Color(0xffF884A5)),
        textTheme: const TextTheme(
            headlineMedium: TextStyle(
          fontSize: 32,
        )),
      ),
      debugShowCheckedModeBanner: false,
      home: const WelcomePage(),
    );
  }
}
