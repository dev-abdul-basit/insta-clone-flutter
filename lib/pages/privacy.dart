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
import 'package:insta/pages/limits.dart';

class privacy extends StatefulWidget {
  privacy({Key? key}) : super(key: key);

  static const String page_id = "Privacy";

  @override
  _privacyState createState() => _privacyState();
}

class _privacyState extends State<privacy> {
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
        'Privacy',
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
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade300),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Account Privacy',
                  style: TextStyle(fontFamily: 'medium', fontSize: 16),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(Icons.lock_outline),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text('Privacy account'),
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
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 16, left: 16, right: 16),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade300),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Interactions',
                  style: TextStyle(fontFamily: 'medium', fontSize: 16),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => limits()));
                    },
                    child: Row(
                      children: [
                        Icon(Icons.info_outline_rounded),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text('Limits'),
                          ),
                        ),
                        Text(
                          'Off',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
                rowContainer(Icons.visibility, 'Hidden Words', () {}),
                rowContainer(Icons.comment_outlined, 'Comments', () {}),
                rowContainer(Icons.add_circle_outline, 'Posts', () {}),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Icon(Icons.monetization_on),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text('Mentions'),
                          ),
                        ),
                        Text(
                          'Everyone',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
                rowContainer(Icons.add_circle_outline, 'Story', () {}),
                rowContainer(Icons.wifi_tethering, 'Live', () {}),
                rowContainer(Icons.newspaper_outlined, 'Guides', () {}),
                rowContainer(Icons.person_outline, 'Activity Status', () {}),
                rowContainer(Icons.message_outlined, 'Messages', () {}),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Connections',
                  style: TextStyle(fontFamily: 'medium', fontSize: 16),
                ),
                SizedBox(
                  height: 20,
                ),
                rowContainer(Icons.person_add_disabled_rounded,
                    'Restricted accounts', () {}),
                rowContainer(Icons.close_rounded, 'Blocked accounts', () {}),
                rowContainer(
                    Icons.notifications_off_outlined, 'Muted accounts', () {}),
                rowContainer(
                    Icons.people_outline, 'Accounts you follow', () {}),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget rowContainer(icon, text, route) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: InkWell(
        onTap: route,
        child: Row(
          children: [
            Icon(icon),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(text),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
