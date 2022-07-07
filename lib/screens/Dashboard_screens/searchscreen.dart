import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:yatri/screens/Dashboard_screens/homapage.dart';
import 'package:yatri/screens/helpers/bottombar.dart';
import 'package:yatri/screens/helpers/color_helpers.dart';
import 'package:yatri/screens/helpers/custom_appbar_helpers.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 2,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: logoAppBar,
        ),
        title: Center(
          child: Text(
            "Dietitian Name & ID",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10,),
            child: customAppBar,
          ),
        ],
      ),
      body: Container(
        height: height,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Center(
            child: Container(
              height: 50,
              width: 280,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Patient Bed Number",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                    },
                    child: Icon(
                      Icons.search,
                      size: 40,
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
      bottomNavigationBar: customBottombar
    );
  }
}
