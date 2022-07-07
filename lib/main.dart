import 'package:flutter/material.dart';
import 'package:yatri/screens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       scaffoldBackgroundColor:  Color.fromARGB(255, 224, 248, 236) 
      ),
      home: SplashScreen()
    );
  }
}

