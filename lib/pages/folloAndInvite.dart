/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Grocery Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';

class followAndInvite extends StatefulWidget {
  followAndInvite({Key? key}) : super(key: key);

  static const String page_id = "Follow and invite friends";

  @override
  _followAndInviteState createState() => _followAndInviteState();
}

class _followAndInviteState extends State<followAndInvite> {
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
        'Follow and invite friends',
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
          children: [
            settingItem(Icons.person_add_alt, 'Follow contacts', () {}),
            settingItem(Icons.mail_outline, 'Invite friends by email', () {}),
            settingItem(Icons.sms_outlined, 'Invite friends by SMS', () {}),
            settingItem(Icons.share_outlined, 'Invite friends by...', () {}),
          ],
        ),
      ),
    );
  }

  Widget settingItem(icon, text, route) {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      child: InkWell(
        onTap: route,
        child: Row(
          children: [
            Icon(icon),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  text,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
