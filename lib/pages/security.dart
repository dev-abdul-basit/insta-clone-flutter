/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Grocery Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';

class security extends StatefulWidget {
  security({Key? key}) : super(key: key);

  static const String page_id = "Security";

  @override
  _securityState createState() => _securityState();
}

class _securityState extends State<security> {
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
        'Security',
        style:
            TextStyle(fontFamily: 'medium', fontSize: 18, color: Colors.black),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 16),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade300),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login Security',
                  style: TextStyle(fontFamily: 'medium', fontSize: 16),
                ),
                SizedBox(
                  height: 20,
                ),
                settingItem(Icons.key_outlined, 'Password', () {}),
                settingItem(
                    Icons.location_on_outlined, 'Login activity', () {}),
                settingItem(Icons.save_alt_outlined, 'Saved login info', () {}),
                settingItem(Icons.phone_iphone_outlined,
                    'Two factor authentication', () {}),
                settingItem(Icons.mail_outline, 'Emails from instagram', () {}),
                settingItem(Icons.gpp_good_outlined, 'Security Checkup', () {}),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Data and History',
                  style: TextStyle(fontFamily: 'medium', fontSize: 16),
                ),
                SizedBox(
                  height: 20,
                ),
                settingItem(Icons.laptop_chromebook_outlined,
                    'Apps and websites', () {}),
              ],
            ),
          )
        ],
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
