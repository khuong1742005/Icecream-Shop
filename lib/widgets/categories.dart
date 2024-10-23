import 'package:flutter/material.dart';

Widget buildCategories({Icon? icon}) {
  return Container(
    width: 56,
    height: 56,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: icon,
  );
}
