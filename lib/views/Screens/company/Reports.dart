import 'package:flutter/material.dart';

class ReportsScreen extends StatefulWidget {
  const ReportsScreen({Key? key}) : super(key: key);

  @override
  State<ReportsScreen> createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  bool _isAttendanceExpanded = false;
  bool _isSalaryExpanded = false;
  bool _isNotesExpanded = false;
  bool _isEmployeeListExpanded = false;

  @override
  Widget build(BuildContext context) {
    // Get screen height and width
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: Padding(
        padding: EdgeInsets.all(width * 0.04), // Responsive padding
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Attendance Section
              ListTile(
                title: Text(
                  'Attendance',
                  style: TextStyle(fontSize: width * 0.047,fontWeight: FontWeight.w500), // Responsive font size
                ),
                trailing: IconButton(
                  icon: Icon(
                    _isAttendanceExpanded
                        ? Icons.expand_less
                        : Icons.expand_more, size: width*0.07,
                        color: Color(0xff4FB59C),
                  ),
                  onPressed: () {
                    setState(() {
                      _isAttendanceExpanded = !_isAttendanceExpanded;
                    });
                  },
                ),
                onTap: () {
                  setState(() {
                    _isAttendanceExpanded = !_isAttendanceExpanded;
                  });
                },
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 0),
                height: _isAttendanceExpanded ? height * 0.25 : 0, // Responsive height
                child: Visibility(
                  visible: _isAttendanceExpanded,
                  child: Row(
                    children: [
                      SizedBox(width: width*0.14,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                                                         
                          Text('Attendance Summary Report',
                          style: TextStyle(fontSize: width*0.04), maxLines: 1,),
                                                          Divider(),
                      
                          Text('Detailed Attendance Report',
                          style: TextStyle(fontSize: width*0.04), maxLines: 1,),
                                                          Divider(),
                      
                          Text('Late Arrival Report',
                          style: TextStyle(fontSize: width*0.04), maxLines: 1,),
                                                          Divider(),
                      
                          Text('Leave Report',
                          style: TextStyle(fontSize: width*0.04), maxLines: 1,),
                                                          Divider(),
                      
                          Text('Overtime Report',
                          style: TextStyle(fontSize: width*0.04), maxLines: 1,),
                                                          
                      
                      
                        ],
                      ),
                    ],
                  ),
                ),
              ),
          
          Divider(),
              // Salary Section
              ListTile(
                title: Text(
                  'Salary',
                  style: TextStyle(fontSize: width * 0.047,fontWeight: FontWeight.w500), // Responsive font size
                ),
                trailing: IconButton(
           icon: Icon(
                    _isSalaryExpanded
                        ? Icons.expand_less
                        : Icons.expand_more, size: width*0.07,
                        color: Color(0xff4FB59C),
                  ),
                  onPressed: () {
                    setState(() {
                      _isSalaryExpanded = !_isSalaryExpanded;
                    });
                  },
                ),
                onTap: () {
                  setState(() {
                    _isSalaryExpanded = !_isSalaryExpanded;
                  });
                },
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 10),
                height: _isSalaryExpanded ? height * 0.25 : 0, // Responsive height
                child: Visibility(
                  visible: _isSalaryExpanded,
           child: Row(
                    children: [
                      SizedBox(width: width*0.14,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                                                         
                          Text('Attendance Summary Report',
                          style: TextStyle(fontSize: width*0.04), maxLines: 1,),
                                                          Divider(),
                      
                          Text('Detailed Attendance Report',
                          style: TextStyle(fontSize: width*0.04), maxLines: 1,),
                                                          Divider(),
                      
                          Text('Late Arrival Report',
                          style: TextStyle(fontSize: width*0.04), maxLines: 1,),
                                                          Divider(),
                      
                          Text('Leave Report',
                          style: TextStyle(fontSize: width*0.04), maxLines: 1,),
                                                          Divider(),
                      
                          Text('Overtime Report',
                          style: TextStyle(fontSize: width*0.04), maxLines: 1,),
                                                          
                      
                      
                        ],
                      ),
                    ],
                  ),            
                    ),
              ),
          
          Divider(),
          
              // Notes Section
              ListTile(
                title: Text(
                  'Notes',
                  style: TextStyle(fontSize: width * 0.047,fontWeight: FontWeight.w500), // Responsive font size
                ),
                trailing: IconButton(
                   icon: Icon(
                    _isNotesExpanded
                        ? Icons.expand_less
                        : Icons.expand_more, size: width*0.07,
                        color: Color(0xff4FB59C),
                  ),
                  onPressed: () {
                    setState(() {
                      _isNotesExpanded = !_isNotesExpanded;
                    });
                  },
                ),
                onTap: () {
                  setState(() {
                    _isNotesExpanded = !_isNotesExpanded;
                  });
                },
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 10),
                height: _isNotesExpanded ? height * 0.25 : 0, // Responsive height
                child: Visibility(
                  visible: _isNotesExpanded,
   child: Row(
                    children: [
                      SizedBox(width: width*0.14,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                                                         
                          Text('Attendance Summary Report',
                          style: TextStyle(fontSize: width*0.04), maxLines: 1,),
                                                          Divider(),
                      
                          Text('Detailed Attendance Report',
                          style: TextStyle(fontSize: width*0.04), maxLines: 1,),
                                                          Divider(),
                      
                          Text('Late Arrival Report',
                          style: TextStyle(fontSize: width*0.04), maxLines: 1,),
                                                          Divider(),
                      
                          Text('Leave Report',
                          style: TextStyle(fontSize: width*0.04), maxLines: 1,),
                                                          Divider(),
                      
                          Text('Overtime Report',
                          style: TextStyle(fontSize: width*0.04), maxLines: 1,),
                                                          
                      
                      
                        ],
                      ),
                    ],
                  ),                            ),
              ),
          
          Divider(),
          
              // Employee List Section
              ListTile(
                title: Text(
                  'Employee List',
                  style: TextStyle(fontSize: width * 0.047,fontWeight: FontWeight.w500), // Responsive font size
                ),
                trailing: IconButton(
                   icon: Icon(
                    _isEmployeeListExpanded
                        ? Icons.expand_less
                        : Icons.expand_more, size: width*0.07,
                        color: Color(0xff4FB59C),
                  ),
                  onPressed: () {
                    setState(() {
                      _isEmployeeListExpanded = !_isEmployeeListExpanded;
                    });
                  },
                ),
                onTap: () {
                  setState(() {
                    _isEmployeeListExpanded = !_isEmployeeListExpanded;
                  });
                },
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 10),
                height: _isEmployeeListExpanded ? height * 0.25 : 0, // Responsive height
                child: Visibility(
                  visible: _isEmployeeListExpanded,
   child: Row(
                    children: [
                      SizedBox(width: width*0.14,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                                                         
                          Text('Attendance Summary Report',
                          style: TextStyle(fontSize: width*0.04), maxLines: 1,),
                                                          Divider(),
                      
                          Text('Detailed Attendance Report',
                          style: TextStyle(fontSize: width*0.04), maxLines: 1,),
                                                          Divider(),
                      
                          Text('Late Arrival Report',
                          style: TextStyle(fontSize: width*0.04), maxLines: 1,),
                                                          Divider(),
                      
                          Text('Leave Report',
                          style: TextStyle(fontSize: width*0.04), maxLines: 1,),
                                                          Divider(),
                      
                          Text('Overtime Report',
                          style: TextStyle(fontSize: width*0.04), maxLines: 1,),
                                                          
                      
                      
                        ],
                      ),
                    ],
                  ),                            ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
