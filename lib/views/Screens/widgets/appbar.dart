import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String imagePath; // Path for the image
  final IconData? leftIcon; // Optional left icon
  final IconData? rightIcon1; // Optional first right icon
  final IconData? rightIcon2; // Optional second right icon
  final Function? onLeftIconPressed; // Action for left icon
  final Function? onRightIcon1Pressed; // Action for first right icon
  final Function? onRightIcon2Pressed; // Action for second right icon

  const CustomAppBar({
    Key? key,
    required this.title,
    required this.imagePath,
    this.leftIcon,
    this.rightIcon1,
    this.rightIcon2,
    this.onLeftIconPressed,
    this.onRightIcon1Pressed,
    this.onRightIcon2Pressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFF2F2F2),
      title: Text(
        title,
        style: const TextStyle(color: Color(0xff0D0D0D),fontWeight: FontWeight.bold,fontSize: 20),
      ),
    leading: Row(
  mainAxisSize: MainAxisSize.min, // Adjust the row to wrap content
  children: [
    const SizedBox(width: 12), // Space from the edge
    if (leftIcon != null) // Show icon if leftIcon is provided
      GestureDetector(
        onTap: onLeftIconPressed as void Function()?,
        child: Icon(leftIcon, color: const Color(0xff0D0D0D)),
      ),
    if (leftIcon == null) // Show image only if leftIcon is not provided
      Image.asset(
        imagePath,
        height: 40, // Adjust height as needed
        width: 35, // Adjust width as needed
      ),
  ],
),

      actions: [
        if (rightIcon1 != null)
          IconButton(
            icon: Icon(rightIcon1, color: Color(0xff0D0D0D)),
            onPressed: onRightIcon1Pressed as void Function()?,
          ),
        if (rightIcon2 != null)
          IconButton(
            icon: Icon(rightIcon2, color: Color(0xff0D0D0D)),
            onPressed: onRightIcon2Pressed as void Function()?,
          ),
        Container(width: 10,)
      ],
      
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0); // Height of the AppBar
}
