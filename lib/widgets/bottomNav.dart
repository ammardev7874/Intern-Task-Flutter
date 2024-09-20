import 'package:flutter/material.dart';
import 'package:interntask/screens/approval/approvalnavbar.dart';
import 'package:interntask/screens/approval/approvals.dart';
import 'package:interntask/screens/home.dart';
import 'package:interntask/screens/moremenu.dart';
import 'package:interntask/screens/service.dart';

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
    MoreScreen(),        // More Screen (index 3)
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final double navBarHeight = mediaQuery.size.height * 0.087; // Height of the nav bar
    final double availableHeight = mediaQuery.size.height - mediaQuery.padding.top - navBarHeight; // Available height

    return Scaffold(
      backgroundColor:Color(0xFFF2F2F2) ,
      body: Container(
        height: availableHeight,
        child: _screens[_selectedIndex],
      ),
      bottomNavigationBar: SafeArea(
        child: SizedBox(
          height: navBarHeight,
          child: BottomNavigationBar(
            backgroundColor: const Color(0xFF272341),
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 10,
            unselectedFontSize: 8,
            items: [
              _buildBottomNavigationBarItem(
                mediaQuery: mediaQuery,
                imagePathInactive: 'assets/images/menu (2).png',
                imagePathActive: 'assets/images/main-menu.png',
                label: 'Services',
                index: 0,
              ),
              _buildBottomNavigationBarItem(
                mediaQuery: mediaQuery,
                imagePathInactive: 'assets/images/hut.png',
                imagePathActive: 'assets/images/home (2).png',
                label: 'Home',
                index: 1,
              ),
              _buildBottomNavigationBarItem(
                mediaQuery: mediaQuery,
                imagePathInactive: 'assets/images/maps-and-flags.png',
                imagePathActive: 'assets/images/mark (1).png',
                label: 'Approval',
                index: 2,
              ),
              _buildBottomNavigationBarItem(
                mediaQuery: mediaQuery,
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
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem({
    required MediaQueryData mediaQuery,
    required String imagePathInactive,
    required String imagePathActive,
    required String label,
    required int index,
  }) {
    final double activeIconSize = mediaQuery.size.width * 0.065; // Adjusted active icon size
    final double inactiveIconSize = mediaQuery.size.width * 0.05; // Adjusted inactive icon size
    final double activeTextSize = mediaQuery.size.width * 0.025; // Adjusted active text size
    final double inactiveTextSize = mediaQuery.size.width * 0.02; // Adjusted inactive text size

    bool isSelected = _selectedIndex == index;

    return BottomNavigationBarItem(
      backgroundColor: const Color(0xFF272341),
      icon: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            isSelected ? imagePathActive : imagePathInactive,
            width: isSelected ? activeIconSize : inactiveIconSize,
            height: isSelected ? activeIconSize : inactiveIconSize,
            color: isSelected ? const Color(0xFFF2994A) : null,
          ),
          if (isSelected)
            Container(
              margin: const EdgeInsets.only(top: 3),
              width: 6,
              height: 6,
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
