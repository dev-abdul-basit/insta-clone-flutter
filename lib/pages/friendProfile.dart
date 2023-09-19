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
import 'package:insta/pages/chatting.dart';
import 'package:insta/pages/listFollowrsAndFollowing.dart';
import 'package:insta/pages/post.dart';

class friendProfile extends StatefulWidget {
  friendProfile({Key? key}) : super(key: key);

  static const String page_id = "Friend Profile";

  @override
  _friendProfileState createState() => _friendProfileState();
}

class _friendProfileState extends State<friendProfile> {
  int tabID = 1;

  bool _switchValue = true;

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
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'hardikz_rajput',
        style:
            TextStyle(fontFamily: 'medium', fontSize: 18, color: Colors.black),
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
                      heightFactor: 0.5,
                      child: bottomContainer(),
                    );
                  },
                );
              },
              icon: Icon(Icons.notifications_outlined),
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
                      heightFactor: 0.5,
                      child: moreContainer(),
                    );
                  },
                );
              },
              icon: Icon(Icons.more_vert),
            ),
          ],
        )
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
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
                            image: AssetImage('assets/images/s3.jpg'),
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
                                  style: TextStyle(
                                      fontFamily: 'medium', fontSize: 16),
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
                Text('Hardik Gohil'),
                Text('Full stack developer at InitAppz'),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                                image: AssetImage('assets/images/s5.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                                image: AssetImage('assets/images/s6.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: RichText(
                          text: TextSpan(
                            text: 'Followed by ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'rahul_jograna, ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'semi-bold'),
                              ),
                              TextSpan(
                                text: ' jaydeep_dodiya',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'semi-bold'),
                              ),
                              TextSpan(
                                text: ' and',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'regular'),
                              ),
                              TextSpan(
                                text: ' 50 others.',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'semi-bold'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.grey.shade300)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Following',
                                style: TextStyle(
                                    fontFamily: 'medium', color: Colors.green),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Colors.green,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 5,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => chatting()));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.grey.shade300)),
                          child: Center(
                            child: Text(
                              'Message',
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
              ],
            ),
          ),
          _buildSegment(),
          SizedBox(
            height: 5,
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
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => post()));
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
                'Notifications',
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
                  bottomList('Stories'),
                  bottomList('Videos'),
                  bottomList('Reels'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Goes live'),
                      Row(
                        children: [
                          Text(
                            'Some',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: Colors.grey,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Get notification when hardik_rajput shares photos or videos.',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget bottomList(text) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
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
    );
  }

  Widget moreContainer() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Report...'),
            SizedBox(height: 20),
            Text('Block'),
            SizedBox(height: 20),
            Text('restricted'),
            SizedBox(height: 20),
            Text('Hide your story'),
            SizedBox(height: 20),
            Text('Remove follower'),
            SizedBox(height: 20),
            Text('Copy profile URL'),
            SizedBox(height: 20),
            Text('Share this profile'),
            SizedBox(height: 20),
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
