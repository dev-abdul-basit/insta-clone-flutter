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
import 'package:insta/pages/friendProfile.dart';

class activity extends StatefulWidget {
  activity({Key? key}) : super(key: key);

  static const String page_id = "Activity";

  @override
  _activityState createState() => _activityState();
}

class _activityState extends State<activity> {
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
      elevation: 0,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'Activity',
        style: TextStyle(fontFamily: 'bold', fontSize: 22, color: Colors.black),
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
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                        image: AssetImage('assets/images/s1.jpg'),
                        fit: BoxFit.cover),
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () {},
                      child: CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.red,
                          child: Text(
                            '6',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          )),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Follow requests',
                          style: TextStyle(fontFamily: 'medium'),
                        ),
                        Text(
                          'Approve or ignor requests',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Today',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                        image: AssetImage('assets/images/s2.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: RichText(
                      text: TextSpan(
                        text: 'Hardik_gohil, ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'semi-bold'),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => friendProfile()));
                          },
                        children: <TextSpan>[
                          TextSpan(
                            text: 'rahul_jograna ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'semi-bold'),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => friendProfile()));
                              },
                          ),
                          TextSpan(
                            text: ' and 5 others',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'semi-bold'),
                          ),
                          TextSpan(
                            text: ' started following you.',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'regular'),
                          ),
                          TextSpan(
                            text: ' 23h.',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontFamily: 'regular'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'This Week',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            activityContainer(),
            activityContainer(),
            activityContainer(),
            activityContainer(),
            activityContainer(),
            activityContainer(),
            activityContainer(),
            activityContainer(),
            activityContainer(),
            activityContainer(),
          ],
        ),
      ),
    );
  }

  Widget activityContainer() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                  image: AssetImage('assets/images/s4.jpg'), fit: BoxFit.cover),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Hardik_gohil, ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'semi-bold'),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => friendProfile()));
                        },
                      children: <TextSpan>[
                        TextSpan(
                          text: 'mentioned you in a comment: ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'regular'),
                        ),
                        TextSpan(
                          text: ' @jaydeep_hirani ❤️',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 14,
                              fontFamily: 'regular'),
                        ),
                        TextSpan(
                          text: ' 2d.',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontFamily: 'regular'),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.favorite_outline,
                        size: 20,
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: 'Reply'),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 55,
            width: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  image: AssetImage('assets/images/s3.jpg'), fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}
