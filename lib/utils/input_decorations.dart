import 'package:flutter/material.dart';

import 'colors.dart';

InputDecoration customInputDecoration({
  required String hintText,
  Icon? suffixIcon,
}) {
  return InputDecoration(
    hintText: hintText,
    hintStyle: TextStyle(
      fontSize: 14,
      color: primaryColor.shade200,
    ),
    filled: true,
    fillColor: primaryColor.shade50,
    border: InputBorder.none,
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: primaryColor, width: 2),
    ),
    suffixIcon: suffixIcon,
  );
}
