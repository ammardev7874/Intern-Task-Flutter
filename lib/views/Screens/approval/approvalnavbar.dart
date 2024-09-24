import 'package:flutter/material.dart';
import 'package:interntask/screens/approval/approvals.dart';
import 'package:interntask/widgets/appbar.dart';

class ApprovalNavBar extends StatefulWidget {
  @override
  _ApprovalNavBarState createState() => _ApprovalNavBarState();
}

class _ApprovalNavBarState extends State<ApprovalNavBar> {
  int _selectedIndex = 0; // Track selected container

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: 'Services',
        leftIcon: Icons.arrow_back_sharp,
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
        imagePath: "null",
      ),
      body: Column(
        children: [
          // Full-width container with height 0.05 of the screen height
          SizedBox(
            height: height * 0.04,
          ),
          Card(
            elevation: 5,
            child: Container(
              height: height * 0.05,
              width: width * 0.92,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(height * 0.01),
                color: Color(0xffF3F3F3),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = 0; // Select first container
                        });
                      },
                      child: _selectedIndex == 0
                          ? Container(
                              height: height * 0.05,
                              width: width * 0.3,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(width * 0.02),
                                  color: Colors.white),
                              child: Center(
                                  child: Text(
                                "All",
                                style: TextStyle(
                                    fontSize: height * 0.018,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              )),
                            )
                          : Container(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: width * 0.07,
                                  ),
                                  Container(
                                    height: height * 0.009,
                                    width: width * 0.018,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(height * 0.1),
                                        color: Colors.green),
                                  ),
                                  SizedBox(
                                    width: width * 0.03,
                                  ),
                                  Text(
                                    "All",
                                    style: TextStyle(
                                        fontSize: height * 0.017,
                                        color: Color(0xff898787)),
                                  )
                                ],
                              ),
                            )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = 1; // Select first container
                        });
                      },
                      child: _selectedIndex == 1
                          ? Container(
                              height: height * 0.05,
                              width: width * 0.3,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(width * 0.02),
                                  color: Colors.white),
                              child: Center(
                                  child: Center(
                                      child: Text(
                                "Casual",
                                style: TextStyle(
                                    fontSize: height * 0.018,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ))),
                            )
                          : Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: height * 0.009,
                                    width: width * 0.018,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(height * 0.1),
                                        color: Color(0xffEFB524)),
                                  ),
                                  SizedBox(
                                    width: width * 0.03,
                                  ),
                                  Text(
                                    "Casual",
                                    style: TextStyle(
                                        fontSize: height * 0.017,
                                        color: Color(0xff898787)),
                                  )
                                ],
                              ),
                            )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = 2; // Select first container
                        });
                      },
                      child: _selectedIndex == 2
                          ? Container(
                              height: height * 0.05,
                              width: width * 0.3,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(width * 0.02),
                                  color: Colors.white),
                              child: Center(
                                  child: Text(
                                "Sick",
                                style: TextStyle(
                                    fontSize: height * 0.018,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              )),
                            )
                          : Container(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: width * 0,
                                  ),
                                  Container(
                                    height: height * 0.009,
                                    width: width * 0.018,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(height * 0.1),
                                        color: Color(0xff7C83F6)),
                                  ),
                                  SizedBox(
                                    width: width * 0.03,
                                  ),
                                  Text(
                                    "Sick",
                                    style: TextStyle(
                                        fontSize: height * 0.017,
                                        color: Color(0xff898787)),
                                  ),
                                  SizedBox(
                                    width: width * 0.08,
                                  ),
                                ],
                              ),
                            )),
                ],
              ),
            ),
          ),
          SizedBox(height: 10), // Space between containers and content
          Expanded(
            child: _selectedIndex == 0
                ? Approval()
                : _selectedIndex == 1
                    ? Approval()
                    : Approval(),
          ),
        ],
      ),
    );
  }
}
