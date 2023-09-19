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
import 'package:insta/pages/signup.dart';
import 'package:insta/pages/tabs.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  static const String page_id = "Login";

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: SafeArea(child: _buildBody()),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RichText(
              text: TextSpan(
                text: 'Don\'t have an account? ',
                style: TextStyle(
                    color: Colors.black, fontSize: 14, fontFamily: 'regular'),
                children: <TextSpan>[
                  TextSpan(
                    text: ' Sign up.',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontFamily: 'regular'),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => signup()));
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

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'English (United States)',
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.black,
          )
        ],
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
              TextField(
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    border: OutlineInputBorder(),
                    hintText: 'Phone number, email or username'),
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
                  'Log in',
                  style: TextStyle(fontFamily: 'medium', fontSize: 18),
                ),
                style: appButton(),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  text: 'Forgot your login details? ',
                  style: TextStyle(
                      color: Colors.black, fontSize: 14, fontFamily: 'regular'),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Get help logging in.',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontFamily: 'regular'),
                      // recognizer: TapGestureRecognizer()..onTap = () {},
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
