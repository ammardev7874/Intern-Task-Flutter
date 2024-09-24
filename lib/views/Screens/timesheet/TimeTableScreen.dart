import 'package:flutter/material.dart';
import 'package:interntask/widgets/appbar.dart';

class TimeTableScreen extends StatefulWidget {
  const TimeTableScreen({Key? key}) : super(key: key);

  @override
  State<TimeTableScreen> createState() => _TimeTableScreenState();
}

class _TimeTableScreenState extends State<TimeTableScreen> {
  final List<Map<String, dynamic>> _timeTableItems = [
    {
      'title': 'Project x ',
      'totalHours': '16:00',
      'color': Colors.purple,
      'hours': const ['4:00', '6:00', '6:00', '--:--', '--:--', '--:--', '--:--'],
    },
    {
      'title': 'Vacation',
      'totalHours': '16:00',
      'color': Colors.orange,
      'hours': const ['--:--', '--:--', '--:--', '8:00', '8:00', '--:--', '--:--'],
    },
    {
      'title': 'Break',
      'totalHours': '4:00',
      'color': Colors.blue,
      'hours': const ['1:30', '1:00', '1:30', '--:--', '--:--', '--:--', '--:--'],
    },
    {
      'title': 'Office',
      'totalHours': '4:00',
      'color': Colors.green,
      'hours': const ['--:--', '--:--', '--:--', '--:--', '--:--', '--:--', '--:--'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
        appBar: CustomAppBar(
        title: 'Time Sheet',
        imagePath: 'null',
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
      ),
      body: Container(
        width: width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: width,
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  color: Color(0xFFF2F2F2),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(height: height * 0.01,),
                              Container(
                                height: height * 0.04,
                                color: Color(0xFFF2F2F2),
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                                child: Text(
                                  "Dec 1 - Dec 7",
                                  style: TextStyle(
                                    fontSize: width * 0.04,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Container(
                                height: height * 0.03,
                                color: Color(0xFFF2F2F2),
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.symmetric(horizontal: width * 0.002),
                                child: Text(
                                  "Total: 40:00",
                                  style: TextStyle(
                                    fontSize: width * 0.035,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: width * 0.3),

                          Icon(Icons.star_border_outlined, size: height * 0.035,),
                          SizedBox(width: width * 0.06,),

                          Icon(Icons.arrow_back_ios, size: height * 0.022, color: Color(0xff27AE60),),
                          SizedBox(width: width * 0.06,),

                          Icon(Icons.arrow_forward_ios_sharp, size: height * 0.022, color: Color(0xff27AE60),)
                        ],
                      ),
                      Divider(thickness: height * 0.0004,),
                      Container(
                        height: height * 0.05,
                        color: Color(0xFFF2F2F2),
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                        child: Text(
                          "TOTAL BY DAY",
                          style: TextStyle(
                            fontSize: width * 0.034,
                            fontWeight: FontWeight.w300,
                            color: Colors.black
                          ),
                        ),
                      ),
                      _buildDaysRow(height, width, const ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']),
                      _buildHoursRow(height, width, const ['8:00', '8:00', '8:00', '8:00', '8:00', '8:00', '8:00']),
                      SizedBox(height: height * 0.005,)
                    ],
                  ),
                  
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: _timeTableItems.length,
                itemBuilder: (context, index) {
                  return _buildCard(
                    _timeTableItems[index]['title'],
                    _timeTableItems[index]['totalHours'],
                    _timeTableItems[index]['color'],
                    _timeTableItems[index]['hours'],
                    height,
                    width,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDaysRow(double height, double width, List<String> days) {
    return Container(
      height: height * 0.03,
      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: days.map((day) => Text(day,style: TextStyle(fontSize: height*0.018),)).toList(),
      ),
    );
  }

  Widget _buildHoursRow(double height, double width, List<String> hours) {
    return Container(
      height: height * 0.03,
      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: hours.map((hour) => Text(hour,style: TextStyle(fontSize: height*0.018),)).toList(),
      ),
    );
  }

  Widget _buildCard(
      String title,
      String totalHours,
      Color color,
      List<String> hours,
      double height,
      double width) {
    return Container(
      width: width * 0.97,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(height * 0.008),
        ),
        elevation: 4,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: height * 0.01),
            Row(
              children: [
                SizedBox(width: width * 0.05,),
                Container(
                  width: width * 0.2,
                  child: Text(
                    title,
                    style: TextStyle(
                      color: color,
                      fontWeight: FontWeight.w500,
                      fontSize: width * 0.043,
                    ),
                  ),
                ),
                SizedBox(width: width * 0.43,),
                Container(
                  width: width * 0.12,
                  child: Text(
                    totalHours,
                    style: TextStyle(
                      fontSize: width * 0.043,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(width: width * 0.033,),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert, size: height * 0.033,),
                ),
              ],
            ),
            SizedBox(height: height * 0.01),
            _buildDaysRow(height, width, const ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']),
            SizedBox(height: height * 0.01),
            _buildHoursRow(height, width, hours),
            SizedBox(height: height * 0.02),
          ],
        ),
      ),
    );
  }
}
