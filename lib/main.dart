
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:googlesign/account.dart';
import 'package:googlesign/dash.dart';
import 'package:googlesign/demo.dart';
import 'package:googlesign/feat.dart';
import 'package:googlesign/home.dart';
import 'package:googlesign/kyc.dart';
import 'package:googlesign/kyc2.dart';
import 'package:googlesign/kyc3.dart';
import 'package:googlesign/kyc4.dart';
import 'package:googlesign/kyc5.dart';

import 'package:googlesign/personal.dart';
import 'package:googlesign/profile.dart';
import 'package:googlesign/spcl.dart';
import 'package:googlesign/wishlist.dart';

import 'archi.dart';
import 'bottom.dart';
import 'business.dart';
import 'businessdetails.dart';
import 'businessdetails2.dart';
import 'businessset.dart';
import 'cat.dart';
import 'digital.dart';
import 'google.dart';
import 'lang.dart';
import 'login.dart';
import 'new product.dart';

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
      home: bot(),
    );
  }
}


