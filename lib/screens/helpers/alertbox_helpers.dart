import 'package:flutter/material.dart';


class AlertBox {
  alertBox(BuildContext context){
    var alertBox = Future.delayed(
      Duration(seconds: 0),
      () {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Container(
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          "Thank you!!!",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            letterSpacing: 1,
                          ),
                          textAlign: TextAlign.center,
                        ),
                     SizedBox(height: 20,),
                     Text(
                          "Scan Sucessfully",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            letterSpacing: 1,
                          ),
                          textAlign: TextAlign.center,
                        ),
                    ],
                  ),
                ),
              );
            });
      },
    );
    return alertBox;
  }
}