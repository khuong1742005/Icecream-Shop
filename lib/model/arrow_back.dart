import 'package:flutter/material.dart';

Widget buildArrow({
  Function()? onTap,
  Color color = Colors.black,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Icon(
      Icons.arrow_back,
      color: color,
    ),
  );
}
