import 'dart:async';
import 'package:ayesha/ui_design/login_screen.dart';
import 'package:ayesha/ui_design/signup_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override

  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB3E5FC), // Light blue shade (diff from logo dark blue)
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              child: Image.asset(
                "assets/images/sec_logo.png", // Apka logo path
                width: 250,
                fit: BoxFit.contain,
              ),
            ),

            SizedBox( height: 8),

            Text(
              "Smart Community",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0D47A1), // Darker blue for contrast
                fontFamily: 'Poppins', // Font family aapko add karni hogi
              ),
            ),


            SizedBox(height: 6),

            Text(
              "Safety App",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF0D47A1),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),

    );
  }
}