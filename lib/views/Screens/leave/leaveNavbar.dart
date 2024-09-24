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
     appBar: CustomAppBar(
        title: 'Company Requests',
        imagePath: 'null',
        leftIcon: Icons.arrow_back_sharp,
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
