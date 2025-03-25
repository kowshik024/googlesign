
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'google.dart';

/*
  This is the main file that will be used to run the app
  It will be the entry point of the app
  It will be the firstimport 'package:flox/Bottom_Navigation.dart';
import 'package:flox/Login/Login_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Login/Sign_Up_Screen.dart';

/*
  This is the main file that will be used to run the app
  It will be the entry point of the app
  It will be the first file that will be executed when the app is run
  It will be the main class that will be used to run the app
  created by: @jeeva
  created on: 05/03/2025
  updated on: 05/03/2025
*/
void main() {
  //this is the main function that will be used to run the app
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent
  ));
  runApp(const MyApp());
}

//myapp is the main class that will be used to run the app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Bottomnavbar(cusId: "1",),
      home: SignUpScreen(),
    );
  }
}


 file that will be executed when the app is run
  It will be the main class that will be used to run the app
  created by: @jeeva
  created on: 05/03/2025
  updated on: 05/03/2025
*/
void main() {
  //this is the main function that will be used to run the app
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent
  ));
  runApp(const MyApp());
}

//myapp is the main class that will be used to run the app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Bottomnavbar(cusId: "1",),
      home: SplashScreen(),
    );
  }
}


