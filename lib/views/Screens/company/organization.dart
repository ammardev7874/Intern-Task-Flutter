// lib/screens/service/service.dart
import 'package:flutter/material.dart';
import 'package:interntask/screens/company/Reports.dart';
import 'package:interntask/screens/company/download.dart';
import 'package:interntask/widgets/appbar.dart';
import 'package:interntask/widgets/selecteditem.dart';

class OrganizationNav extends StatefulWidget {
  @override
  _OrganizationNavState createState() => _OrganizationNavState();
}

class _OrganizationNavState extends State<OrganizationNav> {
  int _selectedIndex = 0;

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
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
            tabs: ['Reports', 'Downloads'], // Tabs for navigation
            containerColor: Color(0xFFF2F2F2), // Custom container color
            selectedTextStyle: TextStyle(
              fontSize: 18.0,
              color: Color(0xff4FB59C),
              fontWeight: FontWeight.bold,
            ),
            unselectedTextStyle: TextStyle(
              fontSize: 14.0,
              color: Color(0xffC1B9B9),
            ),
            indicatorColor: Color(0xff4FB59C),
            indicatorHeight: 2.0,
            indicatorWidth: 150.0,
          ),
          Expanded(
            child: IndexedStack(
              index: _selectedIndex,
              children: [
                ReportsScreen(),
               DownloadScreen() // Ensure HistoryScreen is correctly implemented and imported
              ],
            ),
          ),
        ],
      ),
    );
  }
}
