// lib/widgets/custom_tab_bar.dart
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabSelected;
  final List<String> tabs;
  final Color containerColor;
  final TextStyle selectedTextStyle;
  final TextStyle unselectedTextStyle;
  final Color indicatorColor;
  final double indicatorHeight;
  final double indicatorWidth;

  CustomTabBar({
    required this.selectedIndex,
    required this.onTabSelected,
    required this.tabs,
    required this.containerColor,
    required this.selectedTextStyle,
    required this.unselectedTextStyle,
    required this.indicatorColor,
    required this.indicatorHeight,
    required this.indicatorWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: containerColor,
      padding: EdgeInsets.symmetric(vertical: 8.0), // Padding for better appearance
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(tabs.length, (index) => _buildTab(index)),
      ),
    );
  }

  Widget _buildTab(int index) {
    return GestureDetector(
      onTap: () => onTabSelected(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            tabs[index],
            style: selectedIndex == index ? selectedTextStyle : unselectedTextStyle,
          ),
          Container(
            height: indicatorHeight,
            width: indicatorWidth,
            color: selectedIndex == index ? indicatorColor : Colors.transparent,
          ),
        ],
      ),
    );
  }
}
