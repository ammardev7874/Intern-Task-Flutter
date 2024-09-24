// import 'package:flutter/material.dart';
// import 'package:interntask/screens/approval/approvals.dart';

// class Custombottomnav2 extends StatefulWidget {
//   const Custombottomnav2({super.key});

//   @override
//   _Custombottomnav2State createState() => _Custombottomnav2State();
// }

// class _Custombottomnav2State extends State<Custombottomnav2> {
//   int _selectedIndex = 0; // Track selected index

//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;

//     return Container(
//       height: height * 0.7, // Set container height to 70% of screen height
//       width: width,
//       color: Colors.grey,
//       child: Column(
//         children: [
//           // Full-width container with height 0.05 of the screen height for the navigation bar
//           Card(
//             elevation: 5,
//             child: Container(
//               height: height * 0.05,
//               width: width * 0.92,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(height * 0.01),
//                 color: Color(0xffF3F3F3),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   _buildNavItem("All", 0, Colors.white, Color(0xff898787), Colors.green),
//                   _buildNavItem("Casual", 1, Colors.white, Color(0xff898787), Color(0xffEFB524)),
//                   _buildNavItem("Sick", 2, Colors.white, Color(0xff898787), Color(0xff7C83F6)),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(height: 10), // Space between navigation and content
//           Expanded(
//             child: _getSelectedPage(), // Content based on selected index
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildNavItem(String title, int index, Color activeColor, Color textColor, Color indicatorColor) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           _selectedIndex = index; // Select tapped index
//         });
//       },
//       child: _selectedIndex == index
//           ? Container(
//               height: MediaQuery.of(context).size.height * 0.05,
//               width: MediaQuery.of(context).size.width * 0.3,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width * 0.02),
//                 color: activeColor,
//               ),
//               child: Center(
//                 child: Text(
//                   title,
//                   style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.018, fontWeight: FontWeight.w500, color: Colors.black),
//                 ),
//               ),
//             )
//           : Row(
//               children: [
//                 Container(
//                   height: MediaQuery.of(context).size.height * 0.009,
//                   width: MediaQuery.of(context).size.width * 0.018,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height * 0.1),
//                     color: indicatorColor,
//                   ),
//                 ),
//                 SizedBox(width: MediaQuery.of(context).size.width * 0.03),
//                 Text(
//                   title,
//                   style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.017, color: textColor),
//                 ),
//               ],
//             ));
//   }

//   Widget _getSelectedPage() {
//     switch (_selectedIndex) {
//       case 0:
//         return Approval(); // Replace with the appropriate widget
//       case 1:
//         return Approval(); // Replace with the appropriate widget
//       case 2:
//         return Approval(); // Replace with the appropriate widget
//       default:
//         return Approval(); // Default case
//     }
//   }
// }
