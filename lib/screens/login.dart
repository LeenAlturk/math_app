import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:math_app/constants/colors.dart';
import 'package:math_app/widgets/customtextfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  TextEditingController myTextController = TextEditingController();
  TextEditingController passTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: myColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: size.height * 0.3,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: size.height * 0.3 - 30,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(200),
                        bottomRight: Radius.circular(200),
                      ),
                    ),
                    child: Center(
                        child: Text(
                      'Wellcome',
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    )),
                  ),
                ],
              ),
            ),
            Container(
              width: screenWidth * 0.9,
              height: size.height * 0.6, // Adjust the height as needed
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: myColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 7,
                    blurRadius: 10,
                    offset: Offset(0, 8),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 24.0), // Adjust the padding as needed
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                          ),
                        ),
                        Container(
                          width: 120, // Adjust the width of the Container
                          margin: EdgeInsets.only(
                              top:
                                  8), // Adjust the top margin to position the line
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.white,
                                width: 3.0, // Adjust the thickness of the line
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                      hintText: 'Email',
                      controller: myTextController,
                      keyboardType: TextInputType.emailAddress,
                      preffixIcon: Icon(
                        Icons.email,
                        color: kPrimaryColor,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    CustomTextField(
                      hintText: 'password',
                      controller: passTextController,
                      keyboardType: TextInputType.emailAddress,
                      obscureText: true,
                      preffixIcon: Icon(
                        Icons.password,
                        color: kPrimaryColor,
                      ),
                      suffixIcon: Icon(
                        Icons.visibility,
                        color: kPrimaryColor,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "forget password?",
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    ),
                    SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: () {
                        // Handle button press
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white, // Background color
                        backgroundColor: kPrimaryColor, // Text color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              9.0), // Button border radius
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0), // Button padding
                        elevation: 3.0, // Elevation (shadow)
                      ),
                      child: Text(
                        'Submit',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "dont't have an account ? sign in ",
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
