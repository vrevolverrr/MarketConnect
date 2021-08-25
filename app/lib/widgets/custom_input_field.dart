import 'package:flutter/material.dart';

Widget customInputField(
    {required String hintText,
    required TextEditingController controller,
    bool obscureText = false}) {
  return SizedBox(
    width: 330.0,
    height: 42.0,
    child: TextField(
      controller: controller,
      obscureText: obscureText,
      style: TextStyle(height: 1.6),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
        hintStyle: TextStyle(color: Color(0xffCFCFCF)),
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(50)),
      ),
    ),
  );
}
