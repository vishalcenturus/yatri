import 'package:flutter/material.dart';
import 'package:yatri/Scaner/scanscree.dart';
import 'package:yatri/screens/helpers/color_helpers.dart';
import 'package:yatri/screens/helpers/form_field_helpers.dart';

class SignInScreen2 extends StatefulWidget {
  const SignInScreen2({Key? key}) : super(key: key);

  @override
  State<SignInScreen2> createState() => _SignInScreen2State();
}

class _SignInScreen2State extends State<SignInScreen2> {
  TextEditingController EmployeeIdController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  bool logintype = true;
  bool isVisible = false;
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      "I'm Food Provider",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        letterSpacing: 1,
                        color: buttonColor,
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20,left: 15,right: 15),
                      child: Container(
                        height: 250,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.7),
                              blurRadius: 10
                            )
                          ],
                          image: DecorationImage(
                            image: AssetImage("assets/kitchen.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Form(
                      key: _formkey,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10,top: 30,bottom: 30),
                        child: Column(
                          children: [
                            TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Enter Emp. Id";
                                } else {
                                  return null;
                                }
                              },
                              controller: PasswordController,
                              style: TextStyle(
                                color: textColor,
                              ),
                              decoration: InputDecoration(
                                hintText: "Enter Employee Id",
                                hintStyle: TextStyle(
                                  color: textColor.withOpacity(0.3),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                                enabledBorder: myDecorationField,
                                focusedBorder: myDecorationField,
                                errorBorder: myDecorationField,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Enter Password";
                                } else {
                                  return null;
                                }
                              },
                              controller: EmployeeIdController,
                              style: TextStyle(
                                color: textColor,
                              ),
                              obscureText: !isVisible,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isVisible = !isVisible;
                                    });
                                  },
                                  icon: isVisible
                                      ? Icon(
                                          Icons.visibility,
                                          color: buttonColor,
                                        )
                                      : Icon(
                                          Icons.visibility_off,
                                          color: buttonColor,
                                        ),
                                ),
                                hintText: "Enter Password",
                                hintStyle: TextStyle(
                                  color: textColor.withOpacity(0.3),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                                enabledBorder: myDecorationField,
                                focusedBorder: myDecorationField,
                                errorBorder: myDecorationField,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ScannerScreen()));
                      },
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: buttonColor,
                        ),
                        child: Center(
                          child: Text(
                            "Sign In",
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
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    
    );
 
  }
}
