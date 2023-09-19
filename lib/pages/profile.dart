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
import 'package:insta/pages/archive.dart';
import 'package:insta/pages/closeFriends.dart';
import 'package:insta/pages/editProfile.dart';
import 'package:insta/pages/favourite.dart';
import 'package:insta/pages/listFollowrsAndFollowing.dart';
import 'package:insta/pages/post.dart';
import 'package:insta/pages/qrCode.dart';
import 'package:insta/pages/saved.dart';
import 'package:insta/pages/settings.dart';
import 'package:insta/pages/yourActivity.dart';

class profile extends StatefulWidget {
  profile({Key? key}) : super(key: key);

  static const String page_id = "Profile";

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  int tabID = 1;

  List<Item> categories = <Item>[
    Item('assets/images/s1.jpg'),
    Item('assets/images/s2.jpg'),
    Item('assets/images/s3.jpg'),
    Item('assets/images/s4.jpg'),
    Item('assets/images/s5.jpg'),
    Item('assets/images/s6.jpg'),
    Item('assets/images/s7.jpg'),
    Item('assets/images/s8.jpg'),
    Item('assets/images/s9.jpg'),
    Item('assets/images/s10.jpg'),
    Item('assets/images/s11.jpg'),
    Item('assets/images/s2.jpg'),
    Item('assets/images/s3.jpg'),
    Item('assets/images/s4.jpg'),
    Item('assets/images/s5.jpg'),
    Item('assets/images/s6.jpg'),
    Item('assets/images/s7.jpg'),
    Item('assets/images/s8.jpg'),
    Item('assets/images/s9.jpg'),
    Item('assets/images/s10.jpg'),
    Item('assets/images/s11.jpg'),
    Item('assets/images/s1.jpg'),
  ];
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
      title: InkWell(
        onTap: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            context: context,
            isScrollControlled: true,
            builder: (BuildContext context) {
              return FractionallySizedBox(
                heightFactor: 0.3,
                child: addContainer(),
              );
            },
          );
        },
        child: Row(
          children: [
            Icon(
              Icons.lock_outline,
              size: 20,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'jaydeep_hirani',
              style: TextStyle(
                  fontFamily: 'semi-bold', fontSize: 20, color: Colors.black),
            ),
            Icon(Icons.keyboard_arrow_down),
          ],
        ),
      ),
      actions: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return FractionallySizedBox(
                      heightFactor: 0.6,
                      child: bottomContainer(),
                    );
                  },
                );
              },
              icon: Icon(Icons.add_circle_outline),
            ),
            IconButton(
              onPressed: () {
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return FractionallySizedBox(
                      heightFactor: 0.6,
                      child: menuContainer(),
                    );
                  },
                );
              },
              icon: Icon(Icons.menu),
            ),
          ],
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
            Row(
              children: [
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                        image: AssetImage('assets/images/s1.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              '54',
                              style:
                                  TextStyle(fontFamily: 'medium', fontSize: 16),
                            ),
                            Text('Posts'),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        listFollowersAndFollowimg()));
                          },
                          child: Column(
                            children: [
                              Text(
                                '504',
                                style: TextStyle(
                                    fontFamily: 'medium', fontSize: 16),
                              ),
                              Text('Followers'),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        listFollowersAndFollowimg()));
                          },
                          child: Column(
                            children: [
                              Text(
                                '540',
                                style: TextStyle(
                                    fontFamily: 'medium', fontSize: 16),
                              ),
                              Text('Following'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text('Jaydeep Hirani'),
            Text('Shiva is the truth'),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  flex: 10,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => editProfile(),
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey.shade300)),
                      child: Center(
                        child: Text(
                          'Edit profile',
                          style: TextStyle(fontFamily: 'medium'),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey.shade300)),
                    padding: EdgeInsets.symmetric(vertical: 9),
                    child: Icon(Icons.person_add_outlined),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                child: Row(
                  children: [
                    storyContainer('assets/images/s2.jpg'),
                    storyContainer('assets/images/s3.jpg'),
                    storyContainer('assets/images/s4.jpg'),
                    storyContainer('assets/images/s5.jpg'),
                    storyContainer('assets/images/s2.jpg'),
                    storyContainer('assets/images/s1.jpg'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            _buildSegment(),
            SizedBox(
              height: 20,
            ),
            GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              shrinkWrap: true,
              childAspectRatio: 110 / 100,
              physics: ScrollPhysics(),
              children: categories.map((e) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => post()));
                  },
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(e.img), fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget storyContainer(image) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      child: Column(
        children: [
          Column(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: appColor, width: 3),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 90,
                child: Text(
                  'Highlight',
                  style: TextStyle(fontSize: 12),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  softWrap: false,
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget bottomContainer() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Create',
                style: TextStyle(fontSize: 18, fontFamily: 'medium'),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade200),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  bottomList(Icons.grid_on_rounded, 'Post'),
                  bottomList(Icons.play_circle_fill_outlined, 'Reel'),
                  bottomList(Icons.add_circle_outline, 'Story'),
                  bottomList(Icons.highlight_alt_outlined, 'Srory Highlight'),
                  bottomList(Icons.wifi_tethering, 'Live'),
                  bottomList(Icons.newspaper, 'Guide'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget bottomList(icon, text) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade300),
        ),
      ),
      child: Row(
        children: [
          Icon(icon),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                text,
                style: TextStyle(fontSize: 16, fontFamily: 'medium'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget addContainer() {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
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
                      child: Text(
                        'jaydeep_hirani',
                        style: TextStyle(fontFamily: 'medium', fontSize: 16),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.radio_button_checked,
                    color: appColor,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return FractionallySizedBox(
                        heightFactor: 0.3,
                        child: addaccountContainer(),
                      );
                    },
                  );
                },
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(Icons.add),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Add account',
                          style: TextStyle(fontFamily: 'medium', fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget addaccountContainer() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Center(
              child: Text(
                'Add Account',
                style: TextStyle(fontSize: 18, fontFamily: 'medium'),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade200),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => tabs()));
              },
              child: Text(
                'Log into existing account',
                style: TextStyle(fontFamily: 'medium', fontSize: 16),
              ),
              style: appButton(),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'Create new account',
                style: TextStyle(
                    fontSize: 16, fontFamily: 'medium', color: appColor),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget menuContainer() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 25),
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            menuItem(Icons.settings_outlined, 'Settings', () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => settings()));
            }),
            menuItem(Icons.access_time, 'Archive', () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => archive()));
            }),
            menuItem(Icons.history, 'Your activity', () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => yourActivity()));
            }),
            menuItem(Icons.qr_code, 'Qr code', () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => qrCode()));
            }),
            menuItem(Icons.bookmark_outline, 'Saved', () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => saved()));
            }),
            menuItem(Icons.list_outlined, 'Close Friends', () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => closeFriends()));
            }),
            menuItem(Icons.star_outline, 'Favourites', () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => favourite()));
            }),
            menuItem(Icons.info_outline, 'COVID-19 Information Center', () {}),
          ],
        ),
      ),
    );
  }

  Widget menuItem(icon, text, route) {
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
                  style: TextStyle(fontFamily: 'medium', fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSegment() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    tabID = 1;
                  });
                },
                child: Container(
                  padding: EdgeInsets.only(bottom: 5),
                  decoration: segmentDecoration(1),
                  child: Icon(Icons.grid_on_outlined),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                  onTap: () {
                    setState(() {
                      tabID = 2;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(bottom: 5),
                    decoration: segmentDecoration(2),
                    child: Icon(Icons.play_arrow_outlined),
                  )),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    tabID = 3;
                  });
                },
                child: Container(
                  padding: EdgeInsets.only(bottom: 5),
                  decoration: segmentDecoration(3),
                  child: Icon(
                    Icons.person_outline,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  segmentDecoration(val) {
    return BoxDecoration(
        border: Border(
            bottom: BorderSide(
                width: 1,
                color: tabID == val ? Colors.black : Colors.transparent)));
  }

  segmentText(val) {
    return TextStyle(
        fontFamily: tabID == val ? 'bold' : 'semibold',
        color: tabID == val ? appColor : Colors.grey);
  }
}

class Item {
  const Item(this.img);
  final String img;
}
