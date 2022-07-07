import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class ShowToast {
  void showToast(message){
    Fluttertoast.showToast(msg: message, toastLength: Toast.LENGTH_LONG);
  }
}