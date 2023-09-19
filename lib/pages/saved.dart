/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Grocery Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';

class saved extends StatefulWidget {
  saved({Key? key}) : super(key: key);

  static const String page_id = "Saved";

  @override
  State<saved> createState() => _savedState();
}

class _savedState extends State<saved> {
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
        'Saved',
        style:
            TextStyle(fontFamily: 'medium', fontSize: 18, color: Colors.black),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.add),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            GridView.count(
              primary: false,
              crossAxisCount: 2,
              shrinkWrap: true,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 100 / 100,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: GridView.count(
                        primary: false,
                        crossAxisCount: 2,
                        shrinkWrap: true,
                        mainAxisSpacing: 1,
                        crossAxisSpacing: 1,
                        childAspectRatio: 100 / 100,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            child: Image(
                              image: AssetImage('assets/images/s1.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            child: Image(
                              image: AssetImage('assets/images/s2.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            child: Image(
                              image: AssetImage('assets/images/s3.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            child: Image(
                              image: AssetImage('assets/images/s4.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('All Post')
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: GridView.count(
                        primary: false,
                        crossAxisCount: 2,
                        shrinkWrap: true,
                        mainAxisSpacing: 1,
                        crossAxisSpacing: 1,
                        childAspectRatio: 100 / 100,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            child: Image(
                              image: AssetImage('assets/images/s5.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            child: Image(
                              image: AssetImage('assets/images/s6.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            child: Image(
                              image: AssetImage('assets/images/s7.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            child: Image(
                              image: AssetImage('assets/images/s8.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.music_note),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Audio'),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
