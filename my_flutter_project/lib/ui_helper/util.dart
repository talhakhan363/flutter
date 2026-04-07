import 'package:flutter/material.dart';

// --> function to return text with hard coded functionalities.

TextStyle myTextStyle22() {
  return const TextStyle(fontSize: 22, fontWeight: FontWeight.bold);
}
/* [myTextStyle22] function will always return text with font 
 size 22 and font weight bold, we cannot change it because there
 is no parameter in it. but in [myTextStyleCustom] function we 
 can change text color and font weight by passing different 
 values for these parameters while calling this function. */

// --> custom like function.
TextStyle myTextStyleCustom({Color textColor = Colors.black, FontWeight fontWeight = FontWeight.normal}) {
  return TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: textColor);
  /* by setting default parameters we made this funtion to 
  automatically set text color to black and font weight to 
  normal if we do not pass any value for these parameters while
  calling this function. */
}
