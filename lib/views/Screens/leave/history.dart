import 'package:flutter/material.dart';
import '../controllers/leave_request_controller.dart';
import '../models/leave_request.dart';

class HistoryScreen extends StatefulWidget {
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final LeaveRequestController _controller = LeaveRequestController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final List<LeaveRequest> requests = _controller.getLeaveRequests();

    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height * 0.02), // Top margin
            ...requests.map((request) {
              return Column(
                children: [
                  _buildRequestContainer(
                    width: width,
                    height: height,
                    request: request,
                  ),
                  SizedBox(height: height * 0.02), // Space between containers
                ],
              );
            }).toList(),
          ],
        ),
      ),
    );
  }

  Widget _buildRequestContainer({
    required double width,
    required double height,
    required LeaveRequest request,
  }) {
    return Center(
      child: Container(
        width: width * 0.9, // 90% of screen width
        height: height * 0.24132, // Adjusted height to fit labels and values
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(width * 0.015)),
        child: Center(
          child: Card(
            elevation: width * 0.015,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.006),
                Row(
                  children: [
                    SizedBox(width: width * 0.02), // Space between CircleAvatar and text
                    CircleAvatar(
                      backgroundImage: AssetImage(request.imageUrl),
                      radius: width * 0.05, // Adjusted radius with MediaQuery
                    ),
                    SizedBox(width: width * 0.04), // Space between CircleAvatar and text
                    Expanded(
                      child: Text(
                        maxLines: 1,
                        request.name,
                        style: TextStyle(
                          fontSize: width * 0.04, // Adjusted font size with MediaQuery
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Applied on\n${request.appliedOn}',
                      style: TextStyle(
                        fontSize: height * 0.011, // Adjusted font size
                        color: Color(0xff685F5F),
                      ),
                      textAlign: TextAlign.end,
                    ),
                    SizedBox(width: width * 0.03),
                  ],
                ),
                SizedBox(height: height * 0.006), // Space below row

                // Leave Type Button
                Center(
                  child: SizedBox(
                    width: width * 0.2,
                    height: height * 0.02,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.green, width: 0.6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(width * 0.03),
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                      child: Center(
                        child: Text(
                          maxLines: 1,
                          request.leaveType,
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: width * 0.03, // Adjusted font size with MediaQuery
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: height * 0.01), // Space after button

                // Two Rows: One for labels, one for values
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.07),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Labels
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildLeaveDetailLabel('Leave Date', height),
                            _buildLeaveDetailLabel('Duration', height),
                            _buildLeaveDetailLabel('Leave Balance', height),
                            _buildLeaveDetailLabel('Reason', height),
                          ],
                        ),
                      ),
                      // Values
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildLeaveDetailValue(request.leaveDate, height),
                            _buildLeaveDetailValue(request.duration, height),
                            _buildLeaveDetailValue(request.leaveBalance, height),
                            _buildLeaveDetailValue(request.reason, height),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                // Action Button
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: height * 0.05,
                        color: const Color(0xffD1EFEA),
                        child: Center(
                          child: Text(
                            "APPROVE",
                            style: TextStyle(
                              color: const Color(0xff319582),
                              fontSize: height * 0.013, // Adjusted font size
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLeaveDetailLabel(String title, double height) {
    return Padding(
      padding: EdgeInsets.only(bottom: height * 0.002),
      child: Text(
        '$title:',
        style: TextStyle(
          color: const Color(0xff585B5F),
          fontWeight: FontWeight.w400,
          fontSize: height * 0.012, // Adjusted font size
        ),
      ),
    );
  }

  Widget _buildLeaveDetailValue(String value, double height) {
    return Padding(
      padding: EdgeInsets.only(bottom: height * 0.002),
      child: Text(
        value,
        style: TextStyle(
          fontSize: height * 0.012, // Adjusted font size
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
