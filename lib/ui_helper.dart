
import 'package:flutter/material.dart';

class UIHelper{

  static InputDecoration mDecoration(
  { required String mlabel,
    required String hint,
    double borderRadius = 21,
    Color bColor = Colors.black,
    double bWidth=1,
  }
      ){
    return InputDecoration(
      label: Text(mlabel),
      hintText : hint,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(
          color: bColor,
          width: bWidth,
        )
      )
    );
  }
}