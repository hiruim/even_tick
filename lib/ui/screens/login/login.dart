import 'package:even_tick/config/app_assets.dart';
import 'package:even_tick/config/text_styles.dart';
import 'package:even_tick/ui/screens/home/home.dart';
import 'package:even_tick/ui/screens/login/forgot_password.dart';
import 'package:even_tick/ui/screens/login/sign_up.dart';
import 'package:even_tick/widgets/custom_widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  AppAssets.logo,
                  height: 120,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft, // Aligns to the right side
                child: Text(
                  'Log In',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Wellcome to Even Tick !!',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 30),
              CustomTextField(
                heading: 'Username',
                hintText: 'Enter Your Username',
                onChangeFunction: (val) {
                  print(val);
                },
              ),
              const SizedBox(
                height: 25,
              ),
              CustomTextField(
                heading: 'Password',
                hintText: 'Enter Your Password',
                isObscure: true,
                onChangeFunction: (val) {
                  print(val);
                },
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgotPasswordScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Forget Password ?',
                    style: blueTextStyle,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF2052A4),
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'or',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpScreen(),
                    ),
                  );
                },
                child: Text(
                  'sign up',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF2052A4),
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
