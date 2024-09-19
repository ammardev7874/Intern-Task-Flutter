// lib/screens/service/service.dart
import 'package:flutter/material.dart';
import 'package:interntask/screens/leave/history.dart';
import 'package:interntask/screens/leave/pendingReq.dart';
import 'package:interntask/widgets/appbar.dart';
import 'package:interntask/widgets/selecteditem.dart';

class LeaveNavBar extends StatefulWidget {
  @override
  _LeaveNavBarState createState() => _LeaveNavBarState();
}

class _LeaveNavBarState extends State<LeaveNavBar> {
  int _selectedIndex = 0;

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBarWidget(
        leadingImagePath: "assets/images/ProfilePic (1).png",
        title: 'Home',
        searchIcon: IconButton(onPressed: () {}, icon: Icon(Icons.search_sharp)),
        notificationIcon: IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none_sharp)),
      ),
      body: Column(
        children: [
          CustomTabBar(
            selectedIndex: _selectedIndex,
            onTabSelected: _onTabSelected,
            tabs: ['PENDING REQUESTS', 'HISTORY'], // Tabs for navigation
            containerColor: Color(0xFFF2F2F2), // Custom container color
            selectedTextStyle: TextStyle(
              fontSize: height * 0.018, // Responsive font size
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            unselectedTextStyle: TextStyle(
              fontSize: height * 0.016, // Responsive font size
              color: Colors.black,
            ),
            indicatorColor: Colors.black,
            indicatorHeight: height * 0.002, // Responsive height
            indicatorWidth: width * 0.5, // Responsive width
          ),
          Expanded(
            child: IndexedStack(
              index: _selectedIndex,
              children: [
                PendingReq(), // Ensure PendingReq is correctly implemented and imported
                HistoryScreen() // Ensure HistoryScreen is correctly implemented and imported
              ],
            ),
          ),
        ],
      ),
    );
  }
}
