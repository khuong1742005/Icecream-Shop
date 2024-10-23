import 'package:flutter/material.dart';
import 'package:ice_cream_shop/constants/color.dart';
import 'package:ice_cream_shop/constants/text_style.dart';
import 'package:ice_cream_shop/pages/welcome_page.dart';

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
        colorScheme: colorTheme(),
        textTheme: textStyle(),
      ),
      debugShowCheckedModeBanner: false,
      home: const WelcomePage(),
    );
  }
}
