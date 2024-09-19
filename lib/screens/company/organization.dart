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
      appBar: AppBarWidget(        leadingImagePath: "assets/images/ProfilePic (1).png", title: 'Home',
        searchIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search_sharp)), notificationIcon: IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none_sharp)),),
      body: Column(
        children: [
          CustomTabBar(
            selectedIndex: _selectedIndex,
            onTabSelected: _onTabSelected,
            tabs: ['Reports', 'Downloads'], // Tabs for navigation
            containerColor: Color(0xFFF2F2F2), // Custom container color
            selectedTextStyle: TextStyle(
              fontSize: 20.0,
              color: Color(0xff4FB59C),
              fontWeight: FontWeight.bold,
            ),
            unselectedTextStyle: TextStyle(
              fontSize: 17.0,
              color: Color(0xffC1B9B9),
            ),
            indicatorColor: Color(0xff4FB59C),
            indicatorHeight: 3.0,
            indicatorWidth: 200.0,
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
