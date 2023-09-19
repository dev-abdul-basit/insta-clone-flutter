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

class favourite extends StatefulWidget {
  favourite({Key? key}) : super(key: key);

  static const String page_id = "Favorite";

  @override
  _favouriteState createState() => _favouriteState();
}

class _favouriteState extends State<favourite> {
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppbar(),
        body: _buildBody(),
        bottomNavigationBar: ElevatedButton(
          onPressed: () {},
          child: Text(
            'Confirm favourites',
            style: TextStyle(fontSize: 16, fontFamily: 'medium'),
          ),
          style: appButton(),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(230),
      child: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Close friends',
          style: TextStyle(
              fontFamily: 'medium', fontSize: 18, color: Colors.black),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey.shade300),
            ),
          ),
          margin: EdgeInsets.only(top: 60),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            children: [
              Text(
                'Posts from your favourite are shown higher in feed. We don\'t send notification when you edit your favorite.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
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
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
        ],
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Favorites',
                  style: TextStyle(fontFamily: 'medium', fontSize: 16),
                ),
                Text(
                  'Remove all',
                  style: TextStyle(
                      fontFamily: 'medium', fontSize: 16, color: appColor),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'To get startesd, you can confirm these suggested favourites based on your activity on instagram',
              style: TextStyle(color: Colors.grey, fontSize: 12),
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
            height: 50,
            width: 50,
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
                  Text('hardik_rajput'),
                  Text(
                    'H@rdik',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Text('Remove'),
          )
        ],
      ),
    );
  }
}
