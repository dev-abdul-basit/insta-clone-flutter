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
import 'package:insta/pages/about.dart';
import 'package:insta/pages/account.dart';
import 'package:insta/pages/ads.dart';
import 'package:insta/pages/folloAndInvite.dart';
import 'package:insta/pages/help.dart';
import 'package:insta/pages/notification.dart';
import 'package:insta/pages/privacy.dart';
import 'package:insta/pages/security.dart';
import 'package:insta/pages/setTheme.dart';

class settings extends StatefulWidget {
  settings({Key? key}) : super(key: key);

  static const String page_id = "Settings";

  @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {
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
        'Settings',
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
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            settingItem(Icons.person_add_alt, 'Follow and invite friends', () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => followAndInvite()));
            }),
            settingItem(Icons.notifications_outlined, 'Notifications', () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => notifications()));
            }),
            settingItem(Icons.lock_outline, 'Privacy', () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => privacy()));
            }),
            settingItem(Icons.gpp_good_outlined, 'Security', () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => security()));
            }),
            settingItem(Icons.celebration_outlined, 'Ads', () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ads()));
            }),
            settingItem(Icons.account_circle_outlined, 'Account', () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => account()));
            }),
            settingItem(Icons.help_outline, 'Help', () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => help()));
            }),
            settingItem(Icons.info_outline, 'About', () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => about()));
            }),
            settingItem(Icons.color_lens_outlined, 'Theme', () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => setTheme()));
            }),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(
                  Icons.all_inclusive,
                  color: appColor,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Meta',
                  style: TextStyle(fontFamily: 'medium', fontSize: 16),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Accounts Center',
              style: TextStyle(color: appColor, fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Logins',
              style: TextStyle(fontFamily: 'medium', fontSize: 16),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Add account',
              style: TextStyle(fontSize: 16, color: appColor),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Log out',
              style: TextStyle(fontSize: 16, color: appColor),
            ),
          ],
        ),
      ),
    );
  }

  Widget settingItem(icon, text, route) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
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
                  style: TextStyle(fontFamily: 'medium', fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
