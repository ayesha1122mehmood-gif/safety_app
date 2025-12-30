import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'signup_screen.dart';
import 'dashboard_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailtext = TextEditingController();
  final passtext = TextEditingController();

  final Color primaryColor = const Color(0xFF0D47A1);
  final Color fieldBackground = const Color(0xFFE1F5FE);
  //final FirebaseAuth _auth = FirebaseAuth.instance;

  /*Future<void> loginUser() async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: emailtext.text.trim(),
        password: passtext.text.trim(),
      );

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Login Successful")),
      );

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => DashboardScreen()),
      );

    } on FirebaseAuthException catch (e) {

      String message;

      // ✅ ACCOUNT EXIST NAHI
      if (e.code == 'user-not-found' ||
          e.code == 'invalid-credential' ||
          e.code == 'invalid-login-credentials') {
        message = "First create an account";
      }

      // ✅ PASSWORD GALAT
      else if (e.code == 'wrong-password') {
        message = "Incorrect password";
      }

      // ✅ EMAIL FORMAT GALAT
      else if (e.code == 'invalid-email') {
        message = "Invalid email address";
      }

      // ❌ FALLBACK
      else {
        message = "Login Failed";
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: Colors.red,
        ),
      );
    }
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB3E5FC),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              width: 360,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  Image.asset(
                    "assets/images/sec_logo.png",
                    height: 110,
                  ),

                  const SizedBox(height: 12),

                  Text(
                    "Smart Community",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                      fontFamily: 'Poppins',
                    ),
                  ),

                  const SizedBox(height: 4),

                  Text(
                    "Safety App Login",
                    style: TextStyle(
                      fontSize: 16,
                      color: primaryColor,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  const SizedBox(height: 24),

                  TextField(
                    controller: emailtext,
                    keyboardType: TextInputType.emailAddress,
                    decoration:
                    _inputDecoration("Email", Icons.email),
                  ),

                  const SizedBox(height: 16),

                  TextField(
                    controller: passtext,
                    obscureText: true,
                    decoration:
                    _inputDecoration("Password", Icons.lock),
                  ),

                  const SizedBox(height: 24),

                  SizedBox(
                    width: 200,
                    height: 52,
                    child: ElevatedButton(
                      onPressed: () {
                        if (emailtext.text.isEmpty ||
                            passtext.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Please fill all fields"),
                              backgroundColor: Colors.red,
                            ),
                          );
                        } /*else {
                          loginUser();
                        }*/
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: const Text(
                        "LOGIN",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Make an account? ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => SignupScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: primaryColor,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration _inputDecoration(String label, IconData icon) {
    return InputDecoration(
      labelText: label,
      labelStyle: TextStyle(color: primaryColor),
      prefixIcon: Icon(icon, color: primaryColor),
      filled: true,
      fillColor: fieldBackground,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(color: primaryColor, width: 2),
      ),
    );
  }
}