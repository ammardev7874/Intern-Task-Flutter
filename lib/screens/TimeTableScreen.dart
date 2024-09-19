import 'package:flutter/material.dart';
import 'package:interntask/widgets/appbar.dart';

class TimeTableScreen extends StatefulWidget {
  const TimeTableScreen({Key? key}) : super(key: key);

  @override
  State<TimeTableScreen> createState() => _TimeTableScreenState();
}

class _TimeTableScreenState extends State<TimeTableScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor:Color(0xFFF2F2F2) ,
      appBar: AppBarWidget(        leadingImagePath: "assets/images/ProfilePic (1).svg", title: 'Home',
        searchIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search_sharp)), notificationIcon: IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none_sharp)),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader('Total: 40:00', height, width),
            _buildHeader('TOTAL BY DAY', height, width),
            _buildDaysRow(height, width, const ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']),
            _buildHoursRow(height, width, const ['8:00', '8:00', '8:00', '8:00', '8:00', '8:00', '8:00']),
            _buildCard('Project x ''- Development', '16:00', Colors.purple, 
                const ['4:00', '6:00', '6:00', '--:--', '--:--', '--:--', '--:--'], height, width),
            _buildCard('Vacation', '16:00', Colors.orange, 
                const ['--:--', '--:--', '--:--', '8:00', '8:00', '--:--', '--:--'], height, width),
            _buildCard('Break', '4:00', Colors.blue, 
                const ['1:30', '1:00', '1:30', '--:--', '--:--', '--:--', '--:--'], height, width),
            _buildCard('Office', '4:00', Colors.green, 
                const ['--:--', '--:--', '--:--', '--:--', '--:--', '--:--', '--:--'], height, width),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(String text, double height, double width) {
    return Container(
      height: height * 0.03,
      color: Colors.amber,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
      child: Text(
        text,
        style: TextStyle(
          fontSize: width * 0.04,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildDaysRow(double height, double width, List<String> days) {
    return Container(
      height: height * 0.02,
      color: Colors.red,
      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: days.map((day) => Text(day)).toList(),
      ),
    );
  }

  Widget _buildHoursRow(double height, double width, List<String> hours) {
    return Container(
      height: height * 0.03,
      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: hours.map((hour) => Text(hour)).toList(),
      ),
    );
  }

  Widget _buildCard(String title, String totalHours, Color color, List<String> hours, double height, double width) {
    return Container(
      width: width*0.94,
      child: Card(
        
        elevation: 4,
        color: Colors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: color,
                    fontWeight: FontWeight.bold,
                    fontSize: width * 0.04,
                  ),
                ),
                Text(
                  totalHours,
                  style: TextStyle(
                    fontSize: width * 0.04,
                    fontWeight: FontWeight.bold,
        
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert),
                ),
              ],
            ),
            SizedBox(height: height * 0.02),
            _buildDaysRow(height, width, const ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']),
            SizedBox(height: height * 0.01),
            _buildHoursRow(height, width, hours),
          ],
        ),
      ),
    );
  }
}
