
import 'package:flutter/material.dart';
import 'package:interntask/widgets/appbar.dart';

class ApprovalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFF2F2F2),
        appBar: AppBarWidget(        leadingImagePath: "assets/images/ProfilePic (1).png", title: 'Home',
        searchIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search_sharp)), notificationIcon: IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none_sharp)),),
        body: GridView.count(
          crossAxisCount: 2,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.emoji_events_outlined, size: 50.0),
                  Text('PERFORMANCE'),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.calendar_today_outlined, size: 50.0),
                  Text('LEAVE'),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star_outlined, size: 50.0),
                  Text('ORGANIZATION'),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.access_time_filled_outlined, size: 50.0),
                  Text('TIMESHEET'),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.calendar_view_day_outlined, size: 50.0),
                  Text('ATTENDANCE'),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.folder_outlined, size: 50.0),
                  Text('FILES'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}