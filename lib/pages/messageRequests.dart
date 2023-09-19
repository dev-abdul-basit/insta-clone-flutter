/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Grocery Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';

class messageRequests extends StatefulWidget {
  messageRequests({Key? key}) : super(key: key);

  static const String page_id = "Message requests";

  @override
  _messageRequestsState createState() => _messageRequestsState();
}

class _messageRequestsState extends State<messageRequests> {
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
        'Message requests',
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
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(100)),
                child: Icon(Icons.visibility_off_outlined),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Hidden Requests',
                    style: TextStyle(fontFamily: 'medium'),
                  ),
                ),
              ),
              Row(
                children: [
                  Text('0'),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.chevron_right),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(100)),
                child: Icon(
                  Icons.message_outlined,
                  size: 50,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'No message requests',
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'medium', fontSize: 16),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'You don\'t have any message requests',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}
