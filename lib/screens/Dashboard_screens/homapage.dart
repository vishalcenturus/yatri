import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:yatri/screens/helpers/bottombar.dart';
import 'package:yatri/screens/helpers/color_helpers.dart';
import 'package:yatri/screens/helpers/custom_appbar_helpers.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:yatri/screens/helpers/dropdown_helpers.dart';
import 'package:yatri/screens/helpers/form_field_helpers.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController breakfastController = TextEditingController();
  TextEditingController breakfastInstructionController  = TextEditingController();
  TextEditingController lunchController = TextEditingController();
  TextEditingController lunchInstructionController  = TextEditingController();
  TextEditingController eveningController  = TextEditingController();
  TextEditingController eveningInstructionController  = TextEditingController();
  TextEditingController dinnerController  = TextEditingController();
  TextEditingController dinnerInstructionController  = TextEditingController();

  DateTime formDate = DateTime.now();
  String SubmitDate = 'Date Pick';

  List breakfastItems = ['Liquid', 'Semi-Liquid','Others'];
  var breakfast;
  var lunch;
  var evening;
  var dinner;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: bgColor,
            elevation: 2,
            leading: Padding(
                padding: const EdgeInsets.only(left:10,),
                child: logoAppBar
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
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5, left: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 180,
                        child: Row(
                          children: [
                            Text(
                              "Patient Bed No:-",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: Text(
                                "12345",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: textColor.withOpacity(0.5)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Patient Id:-",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          "123456789",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: textColor.withOpacity(0.5)),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 50,
                    child: Row(
                      children: [
                        Text(
                          "Patient Name:-",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Flexible(
                          child: Text(
                            "Maharana Partap Singh",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: textColor.withOpacity(0.5)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text(
                        "Date:-",
                        style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Container(
                        child: InkWell(
                          onTap: () async {
                            DateTime? _PatientDate = await showDatePicker(
                              context: context,
                              initialDate: formDate,
                              firstDate: DateTime(1980),
                              lastDate: DateTime(2050),
                              builder: (context, picker) {
                                return Theme(
                                  data: ThemeData.dark().copyWith(
                                    colorScheme: ColorScheme.dark(
                                      primary: Colors.blue.withOpacity(0.5),
                                      onPrimary: Colors.black,
                                      surface: Colors.blue.withOpacity(0.3)
                                      onSurface: Colors.black,
                                    ),
                                    dialogBackgroundColor: Colors.white
                                  ),
                                  child: picker!,
                                );
                              },
                            );
                            if (_PatientDate != null) {
                              setState(() {
                                formDate = _PatientDate;
                                SubmitDate =
                                    "${formDate.day}/${formDate.month}/${formDate.year}";
                              });
                              log("last index${formDate}");
                            }
                          },
                          child: Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                SubmitDate,
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
             
             SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Breakfast",
                   style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                            ),
              ),
                  
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 10),
                            child: Row(
                              children: [
                                Text(
                                  "Food Type:-",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Builder(
                                  builder: (context) {
                                    return DropdownButton(
                                      hint: CustomDropDown().customDropDown(context),
                                      underline: Container(
                                        height: 30,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.grey.withOpacity(0.5),
                                        ),
                                      ),
                                      items: breakfastItems.map(
                                        (e) => DropdownMenuItem(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 10),
                                            child: Text(e),
                                          ),
                                          value: e,
                                      )).toList(),
                                      value: breakfast,
                                      onChanged: (value){
                                        setState(() {
                                          breakfast =value;
                                        });
                                      },
                                      );
                                  }
                                ),
                            ],
                            ),
                          ),
                  
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20,),
                            child: TextFormField(
                              controller: breakfastController,
                              style: TextStyle(
                                color: textColor,
                              ),
                              decoration: InputDecoration(
                                hintText: "Food Details",
                                hintStyle: TextStyle(
                                  color: textColor.withOpacity(0.3),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
              SizedBox(height: 10,),
              Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20,),
                            child: TextFormField(
                              controller: breakfastInstructionController,
                              style: TextStyle(
                                color: textColor,
                              ),
                              decoration: InputDecoration(
                                hintText: "Special Instruction",
                                hintStyle: TextStyle(
                                  color: textColor.withOpacity(0.3),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Lunch",
                   style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                            ),
              ),
              Padding(
                            padding: const EdgeInsets.only(left: 10,top: 10),
                            child: Row(
                              children: [
                                Text(
                                  "Food Type:-",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Builder(
                                  builder: (context) {
                                    return DropdownButton(
                                      hint: CustomDropDown().customDropDown(context),
                                      underline: Container(
                                        height: 30,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.grey.withOpacity(0.5),
                                        ),
                                      ),
                                      items: breakfastItems.map(
                                        (e) => DropdownMenuItem(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 10),
                                            child: Text(e),
                                          ),
                                          value: e,
                                      )).toList(),
                                      value: lunch,
                                      onChanged: (value){
                                        setState(() {
                                          lunch =value;
                                        });
                                      },
                                      );
                                  }
                                ),
                            ],
                            ),
                          ),
                  
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20,),
                            child: TextFormField(
                              controller: lunchController,
                              style: TextStyle(
                                color: textColor,
                              ),
                              decoration: InputDecoration(
                                hintText: "Food Details",
                                hintStyle: TextStyle(
                                  color: textColor.withOpacity(0.3),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
              SizedBox(height: 10,),
              Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20,),
                            child: TextFormField(
                              controller: lunchInstructionController,
                              style: TextStyle(
                                color: textColor,
                              ),
                              decoration: InputDecoration(
                                hintText: "Special Instruction",
                                hintStyle: TextStyle(
                                  color: textColor.withOpacity(0.3),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Evening Snacs",
                   style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                            ),
              ),
              Padding(
                            padding: const EdgeInsets.only(left: 10,top: 10),
                            child: Row(
                              children: [
                                Text(
                                  "Food Type:-",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Builder(
                                  builder: (context) {
                                    return DropdownButton(
                                      hint: CustomDropDown().customDropDown(context),
                                      underline: Container(
                                        height: 30,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.grey.withOpacity(0.5),
                                        ),
                                      ),
                                      items: breakfastItems.map(
                                        (e) => DropdownMenuItem(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 10),
                                            child: Text(e),
                                          ),
                                          value: e,
                                      )).toList(),
                                      value: evening,
                                      onChanged: (value){
                                        setState(() {
                                          evening =value;
                                        });
                                      },
                                      );
                                  }
                                ),
                            ],
                            ),
                          ),
                  
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20,),
                            child: TextFormField(
                              controller: eveningController,
                              style: TextStyle(
                                color: textColor,
                              ),
                              decoration: InputDecoration(
                                hintText: "Food Details",
                                hintStyle: TextStyle(
                                  color: textColor.withOpacity(0.3),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20,),
                            child: TextFormField(
                              controller: eveningInstructionController,
                              style: TextStyle(
                                color: textColor,
                              ),
                              decoration: InputDecoration(
                                hintText: "Special Instruction",
                                hintStyle: TextStyle(
                                  color: textColor.withOpacity(0.3),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Dinner",
                   style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                            ),
              ),
              Padding(
                            padding: const EdgeInsets.only(left: 10,top: 10),
                            child: Row(
                              children: [
                                Text(
                                  "Food Type:-",
                                  style: TextStyle(
                                    fontSize: 16,

                                  ),
                                ),
                                SizedBox(width: 20,),
                                
                                Builder(
                                  builder: (context) {
                                    return DropdownButton(
                                      hint: CustomDropDown().customDropDown(context),
                                      underline: Container(
                                        height: 30,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.grey.withOpacity(0.5),
                                        ),
                                      ),
                                      items: breakfastItems.map(
                                        (e) => DropdownMenuItem(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 10,),
                                            child: Text(e),
                                          ),
                                          value: e,
                                      ),
                                      ).toList(),
                                      value: dinner,
                                      onChanged: (value){
                                        setState(() {
                                          dinner =value;
                                        });
                                      },
                                      );
                                  }
                                ),
                            ],
                            ),
                          ),
                  
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20,),
                            child: TextFormField(
                              controller: dinnerController,
                              style: TextStyle(
                                color: textColor,
                              ),
                              decoration: InputDecoration(
                                hintText: "Food Details",
                                hintStyle: TextStyle(
                                  color: textColor.withOpacity(0.3),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20,),
                            child: TextFormField(
                              controller: dinnerInstructionController,
                              style: TextStyle(
                                color: textColor,
                              ),
                              decoration: InputDecoration(
                                hintText: "Special Instruction",
                                hintStyle: TextStyle(
                                  color: textColor.withOpacity(0.3),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 40,),

                           Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children: [
                               Container(
                height: 50,
                width: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: buttonColor,
                ),
                child: Center(
                  child: Text(
                    "View",
                    style: TextStyle(
                      fontSize: 18,
                      letterSpacing: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              InkWell(
                onTap: () {
                  
                  Future.delayed(
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
                          "Submitted Sucessfully",
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
 
                },
                child: Container(
                  height: 50,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: buttonColor,
                  ),
                  child: Center(
                    child: Text(
                      "Submit",
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
SizedBox(height: 20,)
              ],
            ),
          ),
          bottomNavigationBar: customBottombar,
          ),
    );
  }
}
