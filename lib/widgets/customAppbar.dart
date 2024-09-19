import 'package:flutter/material.dart';

class CustomAppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Home'),
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Container(height: 50,width: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),),child: Image.asset("assets/images/ProfilePic.png",),),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            // Navigate to SearchPage if needed
          },
        ),
        IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {
            // Navigate to NotificationsPage if needed
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
