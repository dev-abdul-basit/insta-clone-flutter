/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Grocery Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';

class ads extends StatefulWidget {
  ads({Key? key}) : super(key: key);

  static const String page_id = "Ads";

  @override
  State<ads> createState() => _adsState();
}

class _adsState extends State<ads> {
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
        'Ads',
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
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ad Preferences',
                style: TextStyle(fontFamily: 'medium', fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Ad topics'),
              SizedBox(
                height: 20,
              ),
              Text('Data about your avtivity from partners'),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'General info',
                style: TextStyle(fontFamily: 'medium', fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Ad interests'),
              SizedBox(
                height: 20,
              ),
              Text('Ad activity'),
              SizedBox(
                height: 20,
              ),
              Text('About Ads'),
            ],
          ),
        )
      ],
    );
  }
}
