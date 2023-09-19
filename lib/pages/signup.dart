/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Grocery Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:insta/helper/style.dart';
import 'package:insta/pages/login.dart';
import 'package:insta/pages/tabs.dart';

class signup extends StatefulWidget {
  signup({Key? key}) : super(key: key);

  static const String page_id = "Sign Up";

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: _buildBody()),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RichText(
              text: TextSpan(
                text: 'have an account? ',
                style: TextStyle(
                    color: Colors.black, fontSize: 14, fontFamily: 'regular'),
                children: <TextSpan>[
                  TextSpan(
                    text: ' Log in.',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontFamily: 'regular'),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => login()));
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Instagram',
                style: TextStyle(fontFamily: 'bold', fontSize: 24),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Sign up to see photos and videos from your friends',
                style: TextStyle(fontFamily: 'semi-bold', fontSize: 18),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    border: OutlineInputBorder(),
                    hintText: 'Mobile number or email'),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    border: OutlineInputBorder(),
                    hintText: 'Full name'),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    border: OutlineInputBorder(),
                    hintText: 'Usename'),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: false,
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.visibility_off_outlined),
                    hintText: 'Password'),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => tabs()));
                },
                child: Text(
                  'Sign up',
                  style: TextStyle(fontFamily: 'medium', fontSize: 18),
                ),
                style: appButton(),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'By signinig up you agree to our ',
                  style: TextStyle(
                      color: Colors.black, fontSize: 14, fontFamily: 'regular'),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Terms, data Policy and Cookies Policy.',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'semi-bold'),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.grey.shade300),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Center(
                      child: Text(
                        'OR',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.grey.shade300),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/insta.png',
                    height: 25,
                    width: 25,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Log in with Facebook',
                    style: TextStyle(
                        color: appColor, fontSize: 16, fontFamily: 'medium'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
