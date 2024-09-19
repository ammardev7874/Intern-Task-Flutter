

// import 'package:flutter/material.dart';
// import 'package:interntask/screens/TimeTableScreen.dart';
// import 'package:interntask/screens/service/leave.dart';
// import 'package:interntask/widgets/appbar.dart';

// class PendingReq extends StatefulWidget {
//   const PendingReq({Key? key}) : super(key: key);

//   @override
//   State<PendingReq> createState() => _PendingReqState();
// }

// class _PendingReqState extends State<PendingReq> {
//   @override
//   Widget build(BuildContext context) {
//     // Get the screen dimensions
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;

//     return Scaffold(
//       backgroundColor: Color(0xFFF2F2F2),
//       body: Column(
//         children: [
//           // Search bar with menu icon
//           Padding(
//             padding: EdgeInsets.symmetric(
//               horizontal: width * 0.04, // 4% of screen width
//               vertical: height * 0.02,  // 2% of screen height
//             ),
//             child: Row(
//               children: [
//                 Container(
//                   width: width * 0.77, // 70% of screen width
//                   height: height * 0.047, // 5% of screen height
//                   child: TextField(
//                     decoration: InputDecoration(
//                       prefixIcon: Icon(Icons.search, color: Colors.grey[600]),
//                       hintText: 'Search',
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(width * 0.06), // 6% of screen width
//                         borderSide: BorderSide.none,
//                       ),
//                       filled: true,
//                       fillColor: Colors.white,
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: width * 0.04), // 9% of screen width
//                 Container(
//                   height: height * 0.047, // 5% of screen height
//                   width: width * 0.1, // 5.5% of screen height
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(height * 0.03), // 3% of screen height
//                     color: Colors.white,
//                   ),
//                   child: Center(
//                     child: Image.asset(
//                       "assets/images/Group 1363.png",
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
          
//           // GridView with dynamic spacing
//           Expanded(
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: width * 0.04), // 4% of screen width
//               child: GridView.count(
//                 crossAxisCount: 2,
//                 crossAxisSpacing: width * 0.02, // 2% of screen width
//                 mainAxisSpacing: height * 0.02, // 2% of screen height
//                 children: [
//                   _buildGridItem('PERFORMANCE', 'assets/images/image 6.png'),
//                   _buildGridItem('LEAVE', 'assets/images/image 7.png'),
//                   _buildGridItem('ORGANIZATION', 'assets/images/image 5 (2).png'),
//                   _buildGridItem('TIMESHEET', 'assets/images/image 2.png'),
//                   _buildGridItem('ATTENDANCE', 'assets/images/image 4.png'),
//                   _buildGridItem('FILES', 'assets/images/image 3.png'),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildGridItem(String title, String imagePath) {
//     // Get the screen dimensions
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;

//     return Card(
//       color: Colors.white,
//       elevation: 0,
//       child: InkWell(
//         onTap: () {
//           // Navigate to specific screens based on title
//           if (title == 'LEAVE') {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => LeaveScreen()),
//             );
//           } else if (title == 'TIMESHEET') {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => TimeTableScreen()),
//             );
//           }
//           // Add similar conditions for other titles and screens
//         },
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               imagePath,
//               width: width * 0.17, // 17% of screen width
//               height: height * 0.1, // 10% of screen height
//               fit: BoxFit.cover,
//             ),
//             SizedBox(height: height * 0.01), // 1% of screen height
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: width * 0.04, // 4% of screen width
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
