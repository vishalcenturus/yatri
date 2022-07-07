import 'package:flutter/material.dart';
import 'package:yatri/screens/helpers/alertbox_helpers.dart';
import 'package:yatri/screens/helpers/bottombar.dart';
import 'package:yatri/screens/helpers/color_helpers.dart';
import 'package:yatri/screens/helpers/custom_appbar_helpers.dart';

class ScannerScreen extends StatefulWidget {
  const ScannerScreen({Key? key}) : super(key: key);

  @override
  State<ScannerScreen> createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 2,
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 10,
          ),
          child: logoAppBar,
        ),
        title: Center(
          child: Text(
            "Food provider Name & ID",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 10,
            ),
            child: customAppBar,
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("assets/takingfood.jpg"),
                        fit: BoxFit.cover),
                        ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,right: 20,left: 20),
                child: Column(
                  children: [
                    Text(
                      "Scan the Bar-Code at dispatch from kitchen",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: textColor),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () => AlertBox().alertBox(context),
                      child: Container(
                        height: 40,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: buttonColor,
                        ),
                        child: Center(
                          child: Text(
                            "Scan",
                            style: TextStyle(
                              fontSize: 18,
                              letterSpacing: 1,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: buttonColor.withOpacity(0.3),
                thickness: 1,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("assets/givingtray.jpg"),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,right: 20,left: 20),
                child: Column(
                  children: [
                    Text(
                      "Scan the Bar-Code at patient by handover the food tray",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: textColor),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () => AlertBox().alertBox(context),
                      child: Container(
                        height: 40,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: buttonColor,
                        ),
                        child: Center(
                          child: Text(
                            "Scan",
                            style: TextStyle(
                              fontSize: 18,
                              letterSpacing: 1,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: buttonColor.withOpacity(0.3),
                thickness: 1,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("assets/takingtray.jpg"),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,right: 20,left: 20,bottom: 20),
                child: Column(
                  children: [
                    Text(
                      "Scan the Bar-Code at patient by collecting the food tray",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: textColor),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () => AlertBox().alertBox(context),
                      child: Container(
                        height: 40,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: buttonColor,
                        ),
                        child: Center(
                          child: Text(
                            "Scan",
                            style: TextStyle(
                              fontSize: 18,
                              letterSpacing: 1,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
            ],
          ),
        ],
      ),
      bottomNavigationBar: customBottombar,
    );
  }
}
