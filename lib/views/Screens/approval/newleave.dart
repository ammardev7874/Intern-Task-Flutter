import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:interntask/widgets/button.dart';

class LeaveRequestPage extends StatefulWidget {
  const LeaveRequestPage({Key? key}) : super(key: key);

  @override
  State<LeaveRequestPage> createState() => _LeaveRequestPageState();
}

class _LeaveRequestPageState extends State<LeaveRequestPage> {
  DateTime _selectedDate = DateTime.now();
  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now().add(const Duration(days: 1));
  final CalendarController _calendarController = CalendarController();

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2), // Set background color to F2F2F2
      appBar: AppBar(
        title: const Text('Leave Request'),
        backgroundColor: const Color(0xFFF2F2F2), // AppBar background color
        elevation: 0, // Optional: remove AppBar shadow
        iconTheme: const IconThemeData(color: Colors.black), // Icon color for AppBar
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 20), // Title text color
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: height * 0.8,
                width: width * 0.9,
                decoration: BoxDecoration(
                  color: const Color(0xFFF2F2F2), // Box container background color
                  border: Border.all(width: width * 0.001, color: const Color(0xff333333)),
                  borderRadius: BorderRadius.circular(width * 0.01),
                ),
                child: Column(
                  children: [
                    SizedBox(height: height * 0.015),
                    Container(
                      height: height * 0.07,
                      width: width,
                      child: Row(
                        children: [
                          SizedBox(width: width * 0.025),
                          Container(
                            height: height * 0.05,
                            width: width * 0.1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width * 0.02),
                              color: const Color(0xff5C63D6),
                            ),
                            child: Center(
                              child: Icon(Icons.add_box_rounded, color: Colors.white, size: width * 0.07),
                            ),
                          ),
                          SizedBox(width: width * 0.025),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: height * 0.009),
                              Text(
                                'Type',
                                style: TextStyle(fontSize: width * 0.04),
                              ),
                              Text(
                                'Casual',
                                style: TextStyle(fontSize: width * 0.038, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(endIndent: width * 0.03, indent: width * 0.03),
                    SizedBox(height: height * 0.015),
                    Container(
                      height: height * 0.07,
                      width: width,
                      child: Row(
                        children: [
                          SizedBox(width: width * 0.025),
                          Container(
                            height: height * 0.05,
                            width: width * 0.1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width * 0.02),
                              color: const Color(0xff5C63D6),
                            ),
                            child: Center(
                              child: Icon(Icons.edit_sharp, color: Colors.white, size: width * 0.07),
                            ),
                          ),
                          SizedBox(width: width * 0.025),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: height * 0.009),
                              Text(
                                'Cause',
                                style: TextStyle(fontSize: width * 0.04),
                              ),
                              Text(
                                'Trip to cannes',
                                style: TextStyle(fontSize: width * 0.038, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(endIndent: width * 0.03, indent: width * 0.03),
                    SizedBox(height: height * 0.01),
                    Container(
                      height: height * 0.07,
                      width: width,
                      child: Row(
                        children: [
                          SizedBox(width: width * 0.025),
                          Container(
                            height: height * 0.05,
                            width: width * 0.1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width * 0.02),
                              color: const Color(0xff5C63D6),
                            ),
                            child: Center(
                              child: Icon(Icons.arrow_forward, color: Colors.white, size: width * 0.07),
                            ),
                          ),
                          SizedBox(width: width * 0.025),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: height * 0.009),
                              Text(
                                'From',
                                style: TextStyle(fontSize: width * 0.04),
                              ),
                              Text(
                                '${_startDate.day} ${_startDate.month} ${_startDate.year} ${_startDate.hour}:${_startDate.minute.toString().padLeft(2, '0')} ${_startDate.hour >= 12 ? 'PM' : 'AM'}',
                                style: TextStyle(fontSize: width * 0.038, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(endIndent: width * 0.03, indent: width * 0.03),
                    SizedBox(
                      height: height * 0.38,
                      child: SfCalendar(
                        backgroundColor: const Color(0xFFF2F2F2), // Calendar background color
                        view: CalendarView.month,
                        controller: _calendarController,
                        firstDayOfWeek: 1,
                        showNavigationArrow: true,
                        onTap: (CalendarTapDetails details) {
                          setState(() {
                            if (details.date != null) {
                              _selectedDate = details.date!;
                              _startDate = _selectedDate;
                              _endDate = _selectedDate.add(const Duration(days: 1));
                            }
                          });
                        },
                        selectionDecoration: const BoxDecoration(
                          color: Color(0xff5C63D6),
                          shape: BoxShape.circle,
                        ),
                        monthViewSettings: const MonthViewSettings(
                          showTrailingAndLeadingDates: true,
                          showAgenda: false,
                          monthCellStyle: MonthCellStyle(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        dataSource: _getCalendarDataSource(),
                      ),
                    ),
                    Divider(endIndent: width * 0.03, indent: width * 0.03),
                    Container(
                      height: height * 0.06,
                      width: width,
                      child: Row(
                        children: [
                          SizedBox(width: width * 0.025),
                          Container(
                            height: height * 0.05,
                            width: width * 0.1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width * 0.02),
                              color: const Color(0xff5C63D6),
                            ),
                            child: Center(
                              child: Icon(Icons.arrow_forward_rounded, color: Colors.white, size: width * 0.07),
                            ),
                          ),
                          SizedBox(width: width * 0.025),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: height * 0.009),
                              Text(
                                'End',
                                style: TextStyle(fontSize: width * 0.04),
                              ),
                              Text(
                                '${_endDate.day} ${_endDate.month} ${_endDate.year} ${_endDate.hour}:${_endDate.minute.toString().padLeft(2, '0')} ${_endDate.hour >= 12 ? 'PM' : 'AM'}',
                                style: TextStyle(fontSize: width * 0.03, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: height * 0.05),
            Center(
              child: CustomButton(
                height: height * 0.063,
                width: width * 0.9,
                text: "Apply for 18 Days Leave",
                color: const Color(0xff5C63D6),
                textColor: Colors.white,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Confirm Leave Request'),
                        content: const Text('Are you sure you want to submit your leave request?'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Submit'),
                          ),
                        ],
                      );
                    },
                  );
                },
                textStyle: const TextStyle(),
              ),
            ),
            SizedBox(height: height * 0.05),
          ],
        ),
      ),
    );
  }

  LeaveCalendarDataSource _getCalendarDataSource() {
    List<Appointment> appointments = <Appointment>[];
    appointments.add(
      Appointment(
        startTime: _startDate,
        endTime: _endDate,
        subject: 'Leave',
        color: Colors.blue,
        isAllDay: true,
      ),
    );
    return LeaveCalendarDataSource(appointments);
  }
}

class LeaveCalendarDataSource extends CalendarDataSource {
  LeaveCalendarDataSource(List<Appointment> appointments) {
    this.appointments = appointments;
  }
}
