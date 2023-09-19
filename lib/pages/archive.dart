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
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class archive extends StatefulWidget {
  archive({Key? key}) : super(key: key);

  static const String page_id = "Archive";

  @override
  State<archive> createState() => _archiveState();
}

class _archiveState extends State<archive> {
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

  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('Id-1'),
          position: LatLng(21.5397106, 71.8215543),
        ),
      );
    });
  }

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
                heightFactor: 0.2,
                child: catContainer(),
              );
            },
          );
        },
        child: Row(
          children: [
            Text(
              'Stories archive',
              style: TextStyle(
                  fontFamily: 'semi-bold', fontSize: 20, color: Colors.black),
            ),
            Icon(Icons.keyboard_arrow_down),
          ],
        ),
      ),
      actions: [
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
                  heightFactor: 0.2,
                  child: menuContainer(),
                );
              },
            );
          },
          icon: Icon(Icons.more_vert_outlined),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildSegment(),
          if (tabID == 1)
            archiveContainer()
          else if (tabID == 2)
            calenderContainer()
          else if (tabID == 3)
            mapContainer()
        ],
      ),
    );
  }

  Widget archiveContainer() {
    return SingleChildScrollView(
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        shrinkWrap: true,
        childAspectRatio: 65 / 100,
        physics: ScrollPhysics(),
        children: categories.map((e) {
          return InkWell(
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => videoDetail()));
            },
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(e.img), fit: BoxFit.cover),
                    ),
                    child: Container(
                      height: 50,
                      width: 50,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '14',
                            style:
                                TextStyle(fontSize: 16, fontFamily: 'medium'),
                          ),
                          Text(
                            'Apr',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget calenderContainer() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: SfCalendar(
          view: CalendarView.month,
        ),
      ),
    );
  }

  Widget mapContainer() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              markers: _markers,
              initialCameraPosition: CameraPosition(
                  target: LatLng(21.5397106, 71.8215543), zoom: 15),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSegment() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
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
                  child: Icon(Icons.circle_outlined),
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
                    child: Icon(Icons.calendar_month_outlined),
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
                    Icons.location_on_outlined,
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

  Widget catContainer() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {},
              child: Text('Stories archive'),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: Text('Posts archive'),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: Text('Live archive'),
            ),
          ],
        ),
      ),
    );
  }

  Widget menuContainer() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey),
              ),
            ),
            child: Text(
              'More options',
              style: TextStyle(fontFamily: 'medium'),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Create highlights'),
                SizedBox(
                  height: 20,
                ),
                Text('Settings')
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Item {
  const Item(this.img);
  final String img;
}
