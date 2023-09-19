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

class yourActivity extends StatefulWidget {
  yourActivity({Key? key}) : super(key: key);

  static const String page_id = "Your Activity";

  @override
  _yourActivityState createState() => _yourActivityState();
}

class _yourActivityState extends State<yourActivity> {
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
        'Your Activity',
        style:
            TextStyle(fontFamily: 'medium', fontSize: 18, color: Colors.black),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.grey.shade300))),
            child: Column(
              children: [
                Text(
                  'One place to manage your activity',
                  textAlign: TextAlign.center,
                  style: headText(),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
                  style: TextStyle(color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          mainContainer(Icons.access_time_rounded, 'Time Spent', () {}),
          mainContainer(Icons.photo_album, 'Photos and videos', () {}),
          mainContainer(Icons.compare_arrows_outlined, 'Interactions', () {}),
          mainContainer(
              Icons.calendar_month_outlined, 'Account history', () {}),
          mainContainer(Icons.search, 'Recent Searches', () {}),
          mainContainer(Icons.link_rounded, 'Links you\'ve visited', () {}),
          mainContainer(Icons.archive_outlined, 'Archived', () {}),
          mainContainer(Icons.delete_outline, 'Recently deleted', () {}),
          mainContainer(
              Icons.download_outlined, 'Download your information', () {}),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }

  Widget mainContainer(icon, text, route) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade300))),
      child: InkWell(
        onTap: route,
        child: Row(
          children: [
            Icon(icon),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: TextStyle(fontFamily: 'medium', fontSize: 16),
                    ),
                    Text(
                      'See how much time usually spend on instagram each day.',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
