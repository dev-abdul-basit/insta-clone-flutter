/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Grocery Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';
import 'package:insta/helper/style.dart';

class account extends StatefulWidget {
  account({Key? key}) : super(key: key);

  static const String page_id = "Account";

  @override
  _accountState createState() => _accountState();
}

class _accountState extends State<account> {
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
        'Account',
        style:
            TextStyle(fontFamily: 'medium', fontSize: 18, color: Colors.black),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            linkContainer('Personal information', () {}),
            linkContainer('saved', () {}),
            linkContainer('Close Friends', () {}),
            linkContainer('Account Status', () {}),
            linkContainer('Language', () {}),
            linkContainer('Captions', () {}),
            linkContainer('Browser Settings', () {}),
            linkContainer('Sensitive content control', () {}),
            linkContainer('Contacts syncing', () {}),
            linkContainer('Sharing to other apps', () {}),
            linkContainer('Cellular data use', () {}),
            linkContainer('Original posts', () {}),
            linkContainer('Request verification', () {}),
            linkContainer('Review activity', () {}),
            linkContainer('Branded content', () {}),
            Text(
              'Switch to professional account',
              style: TextStyle(color: appColor),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Add new professional account',
              style: TextStyle(color: appColor),
            ),
          ],
        ),
      ),
    );
  }

  Widget linkContainer(text, route) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: InkWell(
        onTap: route,
        child: Text(text),
      ),
    );
  }
}
