import 'package:flutter/material.dart';
import 'package:interntask/screens/approval/approvalnavbar.dart';
import 'package:interntask/screens/approval/approvals.dart';
import 'package:interntask/screens/approval/newleave.dart';
import 'package:interntask/screens/home.dart';
import 'package:interntask/screens/moremenu.dart';
import 'package:interntask/screens/service.dart';
import 'package:interntask/screens/timesheet/addEntry.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    ServiceScreen(),     // Services Screen (index 0)
    MyHomePage(),        // Home Screen (index 1)
    ApprovalNavBar(),    // Approval Screen (index 2)
    LeaveRequestPage(),        // More Screen (index 3)
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final double height = mediaQuery.size.height;
    final double width = mediaQuery.size.width;
    final double navBarHeight = height * 0.09; // Height of the nav bar
    final double availableHeight = height - mediaQuery.padding.top - navBarHeight; // Available height for body

    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2), // Set background color for the entire scaffold
      body: SizedBox(
        child: _screens[_selectedIndex], // Use the selected screen directly
      ),
      bottomNavigationBar: Container(
        height: navBarHeight,
        color: const Color(0xFF272341), // Color for the bottom nav bar
        child: BottomNavigationBar(
          backgroundColor: const Color(0xFF272341),
          type: BottomNavigationBarType.fixed,
          selectedFontSize: width * 0.025, // Dynamic font size
          unselectedFontSize: width * 0.02, // Dynamic font size
          items: [
            _buildBottomNavigationBarItem(
              height: height,
              width: width,
              imagePathInactive: 'assets/images/menu (2).png',
              imagePathActive: 'assets/images/main-menu.png',
              label: 'Services',
              index: 0,
            ),
            _buildBottomNavigationBarItem(
              height: height,
              width: width,
              imagePathInactive: 'assets/images/hut.png',
              imagePathActive: 'assets/images/home (2).png',
              label: 'Home',
              index: 1,
            ),
            _buildBottomNavigationBarItem(
              height: height,
              width: width,
              imagePathInactive: 'assets/images/maps-and-flags.png',
              imagePathActive: 'assets/images/approval.png',
              label: 'Approval',
              index: 2,
            ),
            _buildBottomNavigationBarItem(
              height: height,
              width: width,
              imagePathInactive: 'assets/images/sort.png',
              imagePathActive: 'assets/images/sort (1).png',
              label: 'More',
              index: 3,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: const Color(0xFFF2994A),
          unselectedItemColor: Colors.white,
          onTap: _onItemTapped,
          elevation: 0,
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem({
    required double height,
    required double width,
    required String imagePathInactive,
    required String imagePathActive,
    required String label,
    required int index,
  }) {
    final double iconSize = width * 0.065; // Adjusted icon size
    final double activeTextSize = width * 0.025; // Active text size
    final double inactiveTextSize = width * 0.02; // Inactive text size

    bool isSelected = _selectedIndex == index;

    return BottomNavigationBarItem(
      backgroundColor: const Color(0xFF272341),
      icon: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            isSelected ? imagePathActive : imagePathInactive,
            width: iconSize,
            height: iconSize,
            color: isSelected ? const Color(0xFFF2994A) : null,
          ),
          if (isSelected)
            Container(
              margin: EdgeInsets.only(top: width * 0.01), // Dynamic margin
              width: width * 0.015,
              height: width * 0.015,
              decoration: const BoxDecoration(
                color: Color(0XFFF2994A),
                shape: BoxShape.circle,
              ),
            ),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? const Color(0xFFF2994A) : Colors.white,
              fontSize: isSelected ? activeTextSize : inactiveTextSize,
            ),
          ),
        ],
      ),
      label: '', // Use empty string if you don’t want to show label text
    );
  }
}
