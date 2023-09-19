/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Grocery Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta/helper/style.dart';

class emailNotification extends StatefulWidget {
  emailNotification({Key? key}) : super(key: key);

  static const String page_id = "Email Notifications";

  @override
  _emailNotificationState createState() => _emailNotificationState();
}

class _emailNotificationState extends State<emailNotification> {
  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppbar(),
        body: _buildBody(),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'Email notifications',
        style:
            TextStyle(fontFamily: 'medium', fontSize: 18, color: Colors.black),
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          allNotifications('Feedback Emails'),
          allNotifications('Reminder Emails'),
          allNotifications('Product Emails'),
          allNotifications('News Emails'),
          allNotifications('Support Emails'),
        ],
      ),
    );
  }

  Widget allNotifications(text) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(fontFamily: 'medium', fontSize: 16),
                ),
                Text(
                  'Lorem Ipsum is simply dummy',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          Transform.scale(
            scale: 0.8,
            child: CupertinoSwitch(
              activeColor: appColor,
              value: _switchValue,
              onChanged: (value) {
                setState(() {
                  _switchValue = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
