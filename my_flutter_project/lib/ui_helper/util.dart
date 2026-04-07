import 'package:flutter/material.dart';

// --> function to return text with hard coded functionalities.
TextStyle myTextStyle22() {
  return const TextStyle(fontSize: 22, fontWeight: FontWeight.bold);
}

// --> custom like function.
TextStyle myTextStyleCustom({Color textColor = Colors.black, FontWeight fontWeight = FontWeight.normal}) {
  return TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: textColor);
}
