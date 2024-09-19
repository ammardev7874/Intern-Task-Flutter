// // lib/screens/service/service.dart
// import 'package:flutter/material.dart';
// import 'package:interntask/screens/service/leave.dart';
// import 'package:interntask/screens/service/history.dart';
// import 'package:interntask/screens/pendinqReq.dart';
// import 'package:interntask/widgets/appbar.dart';
// import 'package:interntask/widgets/selecteditem.dart';

// class ServiceScreen extends StatefulWidget {
//   @override
//   _ServiceScreenState createState() => _ServiceScreenState();
// }

// class _ServiceScreenState extends State<ServiceScreen> {
//   int _selectedIndex = 0;

//   void _onTabSelected(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBarWidget(),
//       body: Column(
//         children: [
//           CustomTabBar(
//             selectedIndex: _selectedIndex,
//             onTabSelected: _onTabSelected,
//             tabs: ['Pending Requests', 'History'], // Tabs for navigation
//             containerColor: Colors.grey[200]!, // Custom container color
//             selectedTextStyle: TextStyle(
//               fontSize: 18.0,
//               color: Colors.black,
//               fontWeight: FontWeight.bold,
//             ),
//             unselectedTextStyle: TextStyle(
//               fontSize: 16.0,
//               color: Colors.black,
//             ),
//             indicatorColor: Colors.black,
//             indicatorHeight: 4.0,
//             indicatorWidth: 80.0,
//           ),
//           Expanded(
//             child: IndexedStack(
//               index: _selectedIndex,
//               children: [
//                 LeaveScreen(), // Ensure PendingReq is correctly implemented and imported
//                 HistoryScreen(), // Ensure HistoryScreen is correctly implemented and imported
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
