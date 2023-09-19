/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Grocery Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:insta/helper/style.dart';
import 'package:insta/pages/about.dart';
import 'package:insta/pages/account.dart';
import 'package:insta/pages/activity.dart';
import 'package:insta/pages/ads.dart';
import 'package:insta/pages/archive.dart';
import 'package:insta/pages/calls.dart';
import 'package:insta/pages/chatting.dart';
import 'package:insta/pages/closeFriends.dart';
import 'package:insta/pages/comments.dart';
import 'package:insta/pages/editProfile.dart';
import 'package:insta/pages/emailNotification.dart';
import 'package:insta/pages/explore.dart';
import 'package:insta/pages/favourite.dart';
import 'package:insta/pages/folloAndInvite.dart';
import 'package:insta/pages/followingAndFollowers.dart';
import 'package:insta/pages/friendProfile.dart';
import 'package:insta/pages/fundraisers.dart';
import 'package:insta/pages/help.dart';
import 'package:insta/pages/home.dart';
import 'package:insta/pages/limits.dart';
import 'package:insta/pages/listFollowrsAndFollowing.dart';
import 'package:insta/pages/liveAndVideoNotification.dart';
import 'package:insta/pages/login.dart';
import 'package:insta/pages/messageRequests.dart';
import 'package:insta/pages/messageScreen.dart';
import 'package:insta/pages/messagesAndCallNotification.dart';
import 'package:insta/pages/newmessage.dart';
import 'package:insta/pages/notification.dart';
import 'package:insta/pages/notificationFromInstagram.dart';
import 'package:insta/pages/post.dart';
import 'package:insta/pages/postsStoryComments.dart';
import 'package:insta/pages/privacy.dart';
import 'package:insta/pages/profile.dart';
import 'package:insta/pages/qrCode.dart';
import 'package:insta/pages/reels.dart';
import 'package:insta/pages/saved.dart';
import 'package:insta/pages/search.dart';
import 'package:insta/pages/security.dart';
import 'package:insta/pages/setTheme.dart';
import 'package:insta/pages/settings.dart';
import 'package:insta/pages/shopping.dart';
import 'package:insta/pages/signup.dart';
import 'package:insta/pages/tabs.dart';
import 'package:insta/pages/yourActivity.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.black, // navigation bar color
      statusBarColor: Colors.black, // status bar color
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: appColor,
        fontFamily: 'regular',
      ),
      home: login(),
      routes: {
        login.page_id: (context) => login(),
        tabs.page_id: (context) => tabs(),
        home.page_id: (context) => home(),
        search.page_id: (context) => search(),
        reels.page_id: (context) => reels(),
        activity.page_id: (context) => activity(),
        profile.page_id: (context) => profile(),
        settings.page_id: (context) => settings(),
        followAndInvite.page_id: (context) => followAndInvite(),
        notifications.page_id: (context) => notifications(),
        emailNotification.page_id: (context) => emailNotification(),
        shopping.page_id: (context) => shopping(),
        fundraisers.page_id: (context) => fundraisers(),
        fromInstagram.page_id: (context) => fromInstagram(),
        liveAndVideoNotification.page_id: (context) =>
            liveAndVideoNotification(),
        messagesAndCallNotification.page_id: (context) =>
            messagesAndCallNotification(),
        followingAndFollowers.page_id: (context) => followingAndFollowers(),
        privacy.page_id: (context) => privacy(),
        limits.page_id: (context) => limits(),
        security.page_id: (context) => security(),
        account.page_id: (context) => account(),
        ads.page_id: (context) => ads(),
        help.page_id: (context) => help(),
        about.page_id: (context) => about(),
        setTheme.page_id: (context) => setTheme(),
        archive.page_id: (context) => archive(),
        qrCode.page_id: (context) => qrCode(),
        saved.page_id: (context) => saved(),
        closeFriends.page_id: (context) => closeFriends(),
        editProfile.page_id: (context) => editProfile(),
        messageScreen.page_id: (context) => messageScreen(),
        chatting.page_id: (context) => chatting(),
        newMessage.page_id: (context) => newMessage(),
        calls.page_id: (context) => calls(),
        messageRequests.page_id: (context) => messageRequests(),
        listFollowersAndFollowimg.page_id: (context) =>
            listFollowersAndFollowimg(),
        friendProfile.page_id: (context) => friendProfile(),
        post.page_id: (context) => post(),
        explore.page_id: (context) => explore(),
        comments.page_id: (context) => comments(),
        signup.page_id: (context) => signup(),
        yourActivity.page_id: (context) => yourActivity(),
        postStoryComments.page_id: (context) => postStoryComments(),
        favourite.page_id: (context) => favourite(),
      },
    );
  }
}
