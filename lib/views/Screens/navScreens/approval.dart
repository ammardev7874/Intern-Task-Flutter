import 'package:flutter/material.dart';
import 'package:interntask/widgets/appbar.dart';

class ApprovalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFF2F2F2),
          appBar: CustomAppBar(
        title: 'Services',
        imagePath: 'assets/images/ProfilePic (1).png',
        leftIcon: null,
         // Optional left icon
        onLeftIconPressed: () {
          // Handle left icon press
          print('Left icon pressed');
        },
        rightIcon1: Icons.search,
        rightIcon2: Icons.notifications_none,
        onRightIcon1Pressed: () {
          // Handle first right icon press
          print('Search icon pressed');
        },
        onRightIcon2Pressed: () {
          // Handle second right icon press
          print('Notifications icon pressed');
        },
      ),
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
