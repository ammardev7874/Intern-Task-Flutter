import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String leadingImagePath;
  final IconButton searchIcon;
  final IconButton notificationIcon;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight); // Standard toolbar height

  const AppBarWidget({
    Key? key,
    required this.title,
    required this.leadingImagePath,
    required this.searchIcon,
    required this.notificationIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get media query data
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    // Define sizes based on the screen dimensions
    final double leadingWidth = width * 0.15; // Leading widget width as a percentage of screen width
    final double titleFontSize = width * 0.05; // Title font size as a percentage of screen width

    return AppBar(
      backgroundColor: const Color(0xFFF2F2F2), // Set your desired background color
      leadingWidth: leadingWidth, // Use dynamic width for leading widget
      leading: Image.asset(
        leadingImagePath,
        width: leadingWidth, // Adjust width of leading image
        height: leadingWidth, // Maintain aspect ratio
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontSize: titleFontSize, // Dynamic font size based on screen width
        ),
      ),
      actions: [
        searchIcon,
        notificationIcon,
      ],
    );
  }
}
