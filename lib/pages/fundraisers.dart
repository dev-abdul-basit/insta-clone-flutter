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

class fundraisers extends StatefulWidget {
  fundraisers({Key? key}) : super(key: key);

  static const String page_id = "Fundraisers";

  @override
  _fundraisersState createState() => _fundraisersState();
}

class _fundraisersState extends State<fundraisers> {
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
        'Fundraisers',
        style:
            TextStyle(fontFamily: 'medium', fontSize: 18, color: Colors.black),
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey.shade300),
              top: BorderSide(color: Colors.grey.shade300),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your Fundraisers',
                style: TextStyle(fontFamily: 'medium', fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Off'),
                  Icon(Icons.circle_outlined),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('On'),
                  Icon(
                    Icons.check_circle,
                    color: appColor,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'johnappleseed donate to your fundraiser.',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              )
            ],
          ),
        ),
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
                'Fundraisers by Others',
                style: TextStyle(fontFamily: 'medium', fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Off'),
                  Icon(Icons.circle_outlined),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('On'),
                  Icon(
                    Icons.check_circle,
                    color: appColor,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'johnappleseed started fundraiser.',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Additional options in system settings...',
                style: TextStyle(color: appColor),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
        )
      ],
    );
  }
}
