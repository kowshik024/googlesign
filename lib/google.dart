import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen ',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _navigateToHomeScreen();
  }

  _navigateToHomeScreen() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Choose your background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200,
              width: 250,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('logo2.jpeg'))
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child:

        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("logo3.jpeg")),

                ),
              ),
            ),
            SizedBox(height:10),
            Text("Select Your Language To Get Started"),
            SizedBox(height: 30,),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Container(
                    width: 100,
                    height: 90,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.purple, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('A',
                            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text("English",
                            style: TextStyle(fontSize: 18),
                          ),
                        ]
                    ),
                  ),
                ),
                SizedBox(width: 30,),
                Container(
                  width: 100,
                  height: 90,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(' அ ',
                          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text("தமிழ்",
                          style: TextStyle(fontSize: 15),
                        ),
                      ]
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(right: 90),
              child: Container(
                      width: 100,
                      height: 90,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text('हैं',
                        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text("हिन्दी",
                        style: TextStyle(fontSize: 18),
                      ),
                ]
                    ),
                    ),
            ),
            SizedBox(height: 170),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    minimumSize: Size(double.infinity,50),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))

                  ),
                  onPressed: (){}, child: Text("Countinue",style: TextStyle(color: Colors.white),)),
            )
          ]
    ),
    ),
    );
  }
}
