import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height * 0.02), // Top margin

            // First Request Container
            _buildRequestContainer(
              width: width,
              height: height,
              name: 'Abhay Kumar',
              appliedOn: '19 Nov 2022',
              leaveType: 'Sick Leave',
              leaveDate: '19 Nov 2022',
              duration: '1 day(s)',
              leaveBalance: '0 day(s)',
              reason: 'High fever',
              imageUrl: 'assets/images/Ellipse 48.png',
            ),

            SizedBox(height: height * 0.02), // Space between containers

            // Second Request Container
            _buildRequestContainer(
              width: width,
              height: height,
              name: 'Neha',
              appliedOn: '19 Nov 2022',
              leaveType: 'Unpaid Leave',
              leaveDate: '19 Nov 2022',
              duration: '1 day(s)',
              leaveBalance: '0 day(s)',
              reason: 'Going to village',
              imageUrl: 'assets/images/Ellipse 49.png',
            ),

            SizedBox(height: height * 0.02), // Space between containers

            // Third Request Container
            _buildRequestContainer(
              width: width,
              height: height,
              name: 'Neha',
              appliedOn: '19 Nov 2022',
              leaveType: 'Unpaid Leave',
              leaveDate: '19 Nov 2022',
              duration: '1 day(s)',
              leaveBalance: '0 day(s)',
              reason: 'High fever',
              imageUrl: 'assets/images/Ellipse 50.png',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRequestContainer({
    required double width,
    required double height,
    required String name,
    required String appliedOn,
    required String leaveType,
    required String leaveDate,
    required String duration,
    required String leaveBalance,
    required String reason,
    required String imageUrl,
  }) {
    return Center(
      child: Container(
        width: width * 0.9,
        height: height * 0.24132, // Adjusted height to fit labels and values
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(width*0.015)),
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
                      backgroundImage: AssetImage(imageUrl),
                      radius: 23,
                    ),
                    SizedBox(width: width * 0.04), // Space between CircleAvatar and text
                    Expanded(
                      child: Text(
                        name,
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Applied on\n$appliedOn',
                      style: TextStyle(fontSize: height * 0.011, color: Color(0xff685F5F)),
                      textAlign: TextAlign.end,
                    ),
                    SizedBox(width: width * 0.03),
                  ],
                ),
                SizedBox(height: height * 0.006), // Space below row
                
                // OutlinedButton with fixed dimensions
               

                // Two Rows: One for labels, one for values
                Row(
                  children: [
                                        SizedBox(width: width * 0.07),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           SizedBox(
                  width: width * 0.23, // Set width
                  height: height * 0.02, // Set height
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.green, width: 0.6), // Green border
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // Circular border
                      ),
                      backgroundColor: Colors.transparent, // Transparent background
                    ),
                    child: Text(
                      leaveType,
                      style: TextStyle(color: Colors.green, fontSize: height * 0.011, fontWeight: FontWeight.w400), // Green text
                    ),
                  ),
                ),
                SizedBox(height: height*0.01,),
                          _buildLeaveDetailLabel('Leave Date'),
                          _buildLeaveDetailLabel('Duration'),
                          _buildLeaveDetailLabel('Leave Balance'),
                          _buildLeaveDetailLabel('Reason'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           SizedBox(
                  width: width * 0.23, // Set width
                  height: height*0.023,
                
                ),
                          _buildLeaveDetailValue(leaveDate),
                          _buildLeaveDetailValue(duration),
                          _buildLeaveDetailValue(leaveBalance),
                          _buildLeaveDetailValue(reason),
                        ],
                      ),
                    ),
                    SizedBox(width: width*0.16,)
                  ],

                ),
                
                // Action Buttons
                Expanded(
                  child: Container(height: height*0.059,width: width,color: Color(0xffD1EFEA),child: Center(child: Text("APPROVED",style:TextStyle(color: Color(0xff319582),fontSize: height*0.013) ,)),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLeaveDetailLabel(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2.0),
      child: Text(
        '$title:',
        style: TextStyle(
          color: Color(0xff585B5F),
          fontWeight: FontWeight.w400, 
          fontSize: 15,// Normal weight for labels
        ),
      ),
    );
  }

  Widget _buildLeaveDetailValue(String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2.0),
      child: Text(
        value,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500, // Bold weight for values
        ),
      ),
    );
  }
}
