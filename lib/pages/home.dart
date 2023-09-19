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
import 'package:insta/pages/comments.dart';
import 'package:insta/pages/friendProfile.dart';
import 'package:insta/pages/messageScreen.dart';
import 'package:insta/pages/story.dart';

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  static const String page_id = "Home";

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
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
      title: Row(
        children: [
          Text(
            'Instagram',
            style: TextStyle(
                fontFamily: 'bold', fontSize: 24, color: Colors.black),
          ),
          Icon(Icons.keyboard_arrow_down)
        ],
      ),
      actions: [
        Row(
          children: [
            PopupMenuButton(
              padding: EdgeInsets.all(0),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(
                        Icons.grid_on_rounded,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Post',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                    ],
                  ),
                  value: 1,
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(
                        Icons.add_circle_outline,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Story',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                    ],
                  ),
                  value: 1,
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(
                        Icons.play_circle_fill_outlined,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Reel',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                    ],
                  ),
                  value: 1,
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(
                        Icons.wifi_tethering,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Live',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                    ],
                  ),
                  value: 1,
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => messageScreen()));
              },
              icon: Icon(Icons.message_outlined),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StoryScreen()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/s1.jpg'),
                                  fit: BoxFit.cover),
                            ),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: InkWell(
                                onTap: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => editProfile()));
                                },
                                child: CircleAvatar(
                                  radius: 11,
                                  backgroundColor: appColor,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 90,
                            child: Center(
                              child: Text(
                                'Your Story',
                                style: TextStyle(fontSize: 12),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                softWrap: false,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
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
            height: 10,
          ),
          postContainer('assets/images/s11.jpg'),
          postContainer('assets/images/s10.jpg'),
          postContainer('assets/images/s9.jpg'),
          postContainer('assets/images/s8.jpg'),
          postContainer('assets/images/s7.jpg'),
          postContainer('assets/images/s6.jpg'),
          postContainer('assets/images/s5.jpg'),
          postContainer('assets/images/s4.jpg'),
          postContainer('assets/images/s3.jpg'),
          postContainer('assets/images/s2.jpg'),
          postContainer('assets/images/s1.jpg'),
        ],
      ),
    );
  }

  Widget storyContainer(image) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => StoryScreen()));
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
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
                  width: 90,
                  child: Text(
                    'jaydeep_hirani',
                    style: TextStyle(fontSize: 12),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    softWrap: false,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget postContainer(image) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              border: Border(
                // bottom: BorderSide(color: Colors.grey.shade300),
                top: BorderSide(color: Colors.grey.shade300),
              ),
            ),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                          image: AssetImage('assets/images/s8.jpg'),
                          fit: BoxFit.cover)),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => friendProfile()));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'hardikz_rajput',
                            style: TextStyle(
                              fontFamily: 'medium',
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'San Francisco',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  ),
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
                          child: bottomContainer(),
                        );
                      },
                    );
                  },
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => postDetail()));
            },
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_outline),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => comments()));
                    },
                    icon: Icon(Icons.comment_outlined),
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
                            heightFactor: 0.8,
                            child: shareContainer(),
                          );
                        },
                      );
                    },
                    icon: Icon(Icons.near_me_outlined),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.bookmark_outline),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              '88,022 likes',
              style: TextStyle(fontFamily: 'medium'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              width: 320,
              child: RichText(
                text: TextSpan(
                  text: 'Jaydeep_Hirani ',
                  style: TextStyle(
                      color: Colors.black, fontSize: 14, fontFamily: 'medium'),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          ' Lorem Ipsum is simply dummy text of the printing and ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'regular'),
                    ),
                    TextSpan(
                      text: ' more...',
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: Text(
              'View all 542 comments',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                          image: AssetImage('assets/images/s8.jpg'),
                          fit: BoxFit.cover)),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Add a comment...'),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.handshake,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.add_circle_outline,
                      color: Colors.grey,
                      size: 20,
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: Text(
              '7 minutes ago',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }

  Widget bottomContainer() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.share_outlined),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Share')
                  ],
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.link_outlined),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Link')
                  ],
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: IconButton(
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
                                heightFactor: 0.9,
                                child: reportContainer(),
                              );
                            },
                          );
                        },
                        icon: Icon(
                          Icons.report_outlined,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Report',
                      style: TextStyle(color: Colors.red),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 16),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.grey.shade400),
                  bottom: BorderSide(color: Colors.grey.shade400),
                ),
              ),
              child: Text(
                'Why you\'re seeing this post',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 16),
              child: Text(
                'Add to favourites',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 16),
              child: Text(
                'Hide',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 16),
              child: Text(
                'Unfollow',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget reportContainer() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Report',
                style: TextStyle(fontSize: 18, fontFamily: 'medium'),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade300),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Why are you reporting this post?',
                    style: TextStyle(fontSize: 18, fontFamily: 'medium'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('It\'s spam'),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Nudity or sexual activity'),
                  SizedBox(
                    height: 20,
                  ),
                  Text('It\'s spam'),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Nudity or sexual activity'),
                  SizedBox(
                    height: 20,
                  ),
                  Text('It\'s spam'),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Nudity or sexual activity'),
                  SizedBox(
                    height: 20,
                  ),
                  Text('It\'s spam'),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Nudity or sexual activity'),
                  SizedBox(
                    height: 20,
                  ),
                  Text('It\'s spam'),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Nudity or sexual activity'),
                  SizedBox(
                    height: 20,
                  ),
                  Text('It\'s spam'),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Nudity or sexual activity'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget shareContainer() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.grey.shade300))),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage('assets/images/s5.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Write a message...',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
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
                                image: AssetImage('assets/images/s5.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'Add post to your story',
                              style: TextStyle(color: appColor),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                sendList(),
                sendList(),
                sendList(),
                sendList(),
                sendList(),
                sendList(),
                sendList(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget sendList() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => friendProfile()));
        },
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                    image: AssetImage('assets/images/s10.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hardik Rajput',
                      style: TextStyle(fontFamily: 'medium'),
                    ),
                    Text(
                      'hardik_rajput',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: appColor),
              child: Text(
                'Send',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
