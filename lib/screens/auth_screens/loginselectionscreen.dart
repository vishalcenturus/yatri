import 'package:flutter/material.dart';
import 'package:yatri/screens/auth_screens/loginscreen.dart';
import 'package:yatri/screens/auth_screens/signinscreen.dart';
import 'package:yatri/screens/auth_screens/singinscreen2.dart';
import 'package:yatri/screens/helpers/color_helpers.dart';

class LoginSelection extends StatefulWidget {
  const LoginSelection({Key? key}) : super(key: key);

  @override
  State<LoginSelection> createState() => _LoginSelectionState();
}

class _LoginSelectionState extends State<LoginSelection> {


   
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/yatri-LOGO.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                "YATRI CORPORATE SERVICES\n PRIVATE LIMITED",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image(
                image: AssetImage("assets/hospital1.png"),
                height: 130,
              ),
              SizedBox(
                height: 80,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SignInScreen()),);
                },
                child: Container(
                  height: 50,
                  width: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: buttonColor,
                  ),
                  child: Center(
                    child: Text(
                      "I'm a Dietitian",
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SignInScreen2()),);
                },
                child: Container(
                  height: 50,
                  width: 260,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: buttonColor,
                  ),
                  child: Center(
                    child: Text(
                      "I'm a Food Provider",
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
    );
  }
}
