import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '/widgets/widgets.dart';
import '/data.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              CupertinoIcons.search,
              size: 28.0,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(
                CupertinoIcons.envelope_open,
                size: 26.0,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                CupertinoIcons.calendar,
                size: 28.0,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                CupertinoIcons.bell,
                size: 28.0,
              ),
              onPressed: () {},
            ),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.fromLTRB(8.0, 10.0, 20.0, 10.0),
                child: UserProfileImage(
                  imageUrl: currentUser.imageUrl,
                  size: 36.0,
                ),
              ),
            )
          ],
        ),
        body: Center(
            child: ListView(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 120.0),
          children: [
            UpcomingRooms(upcomingRooms: upcomingRoomsList),
          ],
        )));
  }
}
