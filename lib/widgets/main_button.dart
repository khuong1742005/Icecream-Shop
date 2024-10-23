import 'package:flutter/material.dart';

Widget buildMainButton({
  Function()? onPressed,
  Color backgroudColor = Colors.white,
  double height = 0,
  double width = 0,
  String text = "",
  Color textColor = Colors.white,
  double fontSize = 0,
  FontWeight? fontWeight,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
        backgroundColor: backgroudColor,
        minimumSize: Size(width, height),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    child: Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    ),
  );
}
