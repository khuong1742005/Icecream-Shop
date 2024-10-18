import 'package:flutter/material.dart';

Widget buildTextField({String hinttext = "", bool isPass = false}) {
  return TextField(
    decoration: InputDecoration(
      hintText: hinttext,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: Colors.white,
          width: 1,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: Color(0xffFF0047),
          width: 2,
        ),
      ),
      fillColor: const Color(0xffF1F4FF),
      filled: true,
      contentPadding: const EdgeInsets.only(top: 40, left: 20),
    ),
    obscureText: isPass,
  );
}
