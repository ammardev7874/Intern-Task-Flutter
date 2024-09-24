import 'package:flutter/material.dart';
import 'package:interntask/screens/timesheet/TimeTableScreen.dart';
import 'package:interntask/screens/company/organization.dart';
import 'package:interntask/screens/leave/leaveNavbar.dart';
import 'package:interntask/screens/timesheet/addEntry.dart';
import 'package:interntask/widgets/appbar.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({Key? key}) : super(key: key);

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  @override
  Widget build(BuildContext context) {
    // Get the screen dimensions
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Services',
        imagePath: 'assets/images/ProfilePic (1).png',
        leftIcon: null,
         // Optional left icon
        onLeftIconPressed: () {
          // Handle left icon press
          print('Left icon pressed');
        },
        rightIcon1: Icons.search,
        rightIcon2: Icons.notifications_none,
        onRightIcon1Pressed: () {
          // Handle first right icon press
          print('Search icon pressed');
        },
        onRightIcon2Pressed: () {
          // Handle second right icon press
          print('Notifications icon pressed');
        },
      ),
      backgroundColor: Color(0xFFF2F2F2),
      body: Column(
        children: [
          // Search bar with menu icon
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.04, // 4% of screen width
              vertical: height * 0.02,  // 2% of screen height
            ),
            child: Row(
              children: [
                Container(
                  width: width * 0.77, // 77% of screen width
                  height: height * 0.05, // 5% of screen height
                  child: TextField(
  decoration: InputDecoration(
    prefixIcon: Icon(Icons.search, color: Colors.grey[600]),
    hintText: "Search",
    hintStyle: TextStyle(
      fontSize: 14, // Set the hint text size a little smaller
      color: Color(0xFFCCCCCC), // Set hint text color to 0xcccccc
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(width * 0.06), // 6% of screen width
      borderSide: BorderSide.none,
    ),
    filled: true,
    fillColor: Colors.white,
  ),
  style: TextStyle(
    fontSize: height*0.023, // Set the actual input text size a little smaller
    color: Color(0xFFCCCCCC), // Set input text color to 0xcccccc
  ),
),

                ),
                SizedBox(width: width * 0.04), // 4% of screen width
                Container(
                  height: height * 0.047, // 5% of screen height
                  width: width * 0.1, // 10% of screen width
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(height * 0.03), // 3% of screen height
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/images/Group 1363.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          // GridView with dynamic spacing
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04), // 4% of screen width
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: width * 0.02, // 2% of screen width
                mainAxisSpacing: height * 0.02, // 2% of screen height
                children: [
                  _buildGridItem('PERFORMANCE', 'assets/images/image 6.png'),
                  _buildGridItem('LEAVE', 'assets/images/image 7.png'),
                  _buildGridItem('ORGANIZATION', 'assets/images/image 5 (2).png'),
                  _buildGridItem('TIMESHEET', 'assets/images/image 2.png'),
                  _buildGridItem('ATTENDANCE', 'assets/images/image 4.png'),
                  _buildGridItem('FILES', 'assets/images/image 3.png'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGridItem(String title, String imagePath) {
    // Get the screen dimensions
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Card(
      color: Colors.white,
      elevation: 0,
      child: InkWell(
        onTap: () {
          // Navigate to specific screens based on title
          if (title == 'LEAVE') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LeaveNavBar()),
            );
          } else if (title == 'TIMESHEET') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TimeTableScreen()),
            );
          } else if (title == 'ORGANIZATION') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OrganizationNav()),
            );
          } else if (title == 'PERFORMANCE') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddEntry()),
            );
          }
          // Add similar conditions for other titles and screens
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: width * 0.17, // 17% of screen width
              height: height * 0.1, // 10% of screen height
              fit: BoxFit.cover,
            ),
            SizedBox(height: height * 0.01), // 1% of screen height
            Text(
              title,
              style: TextStyle(
                fontSize: width * 0.033, // 4% of screen width
              ),
            ),
          ],
        ),
      ),
    );
  }
}
