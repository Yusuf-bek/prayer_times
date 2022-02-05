import 'package:flutter/material.dart';

class ThemeInputFormField {
  static getInputTheme() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
      borderSide: BorderSide(
        color: Color(0xFFFFFFFF),
      ),
    );
  }
}
