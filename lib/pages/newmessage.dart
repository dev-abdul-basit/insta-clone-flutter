/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Grocery Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';

class newMessage extends StatefulWidget {
  newMessage({Key? key}) : super(key: key);

  static const String page_id = "New message";

  @override
  _newMessageState createState() => _newMessageState();
}

class _newMessageState extends State<newMessage> {
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9];

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
        'New messages',
        style:
            TextStyle(fontFamily: 'medium', fontSize: 18, color: Colors.black),
      ),
      actions: [
        TextButton(
          onPressed: () {},
          child: Text(
            'Chat',
            style: TextStyle(
                fontFamily: 'medium',
                fontSize: 16,
                color: Colors.grey.shade800),
          ),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'To',
              style: TextStyle(fontFamily: 'medium', fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration:
                  InputDecoration(border: InputBorder.none, hintText: 'Search'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Suggested',
              style: TextStyle(fontFamily: 'medium', fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            for (var item in list) friendList(item),
          ],
        ),
      ),
    );
  }

  Widget friendList(item) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                  image: AssetImage('assets/images/s1.jpg'), fit: BoxFit.cover),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('rahuljjograna'),
                  Text(
                    'Rahul Jograna',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          Icon(Icons.circle_outlined)
        ],
      ),
    );
  }
}
