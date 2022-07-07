import 'package:flutter/material.dart';


class CustomDropDown {
  customDropDown(BuildContext context) {
    var padding = Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Text(
        "Items",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
    return padding;
  }
}
