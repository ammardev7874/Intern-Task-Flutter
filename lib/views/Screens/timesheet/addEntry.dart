import 'package:flutter/material.dart';
import 'package:interntask/widgets/appbar.dart';
import 'package:intl/intl.dart';
import 'package:time_picker_spinner/time_picker_spinner.dart';

class AddEntry extends StatefulWidget {
  @override
  _AddEntryState createState() => _AddEntryState();
}

class _AddEntryState extends State<AddEntry> {
  DateTime? _startTime;
  DateTime? _endTime;
  bool _isEditingStartTime = true; // Flag to determine which time to edit

  void _updateTime(DateTime time) {
    setState(() {
      if (_isEditingStartTime) {
        _startTime = DateTime.now().copyWith(
          hour: time.hour,
          minute: time.minute,
          second: time.second,
        );
      } else {
        _endTime = DateTime.now().copyWith(
          hour: time.hour,
          minute: time.minute,
          second: time.second,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
            appBar: CustomAppBar(
        title: 'NEW LEAVE',
        imagePath: "ll",
        leftIcon: Icons.arrow_back_sharp,
         // Optional left icon
        onLeftIconPressed: () {
          // Handle left icon press
          print('Left icon pressed');
        },
        rightIcon1: null,
        rightIcon2: null,
        onRightIcon1Pressed: () {
          // Handle first right icon press
          print('Search icon pressed');
        },
        onRightIcon2Pressed: () {
          // Handle second right icon press
          print('Notifications icon pressed');
        },
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            
            children: <Widget>[
              SizedBox(height: height*0.0,),
              // Start Time Display
              Row(
                children: [
                  SizedBox(width: width * 0.06), // Responsive width
                  Text(
                    'Start',
                    style: TextStyle(fontSize: width * 0.042,fontWeight: FontWeight.w500,),
                  ),
                                  SizedBox(width: width * 0.465), // Responsive width
          
                  InkWell(
                    onTap: () {
                      setState(() {
                        _isEditingStartTime = true; // Set editing mode for start time
                      });
                    },
                    child: Text(
                      _startTime != null
                          ? DateFormat('EEE, MMM d    HH:mm:ss').format(_startTime!)
                          : 'Select Start Time',
                      style: TextStyle(
                        
                        fontSize: width * 0.033,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.01), // Responsive height
              // End Time Display
              Row(
                children: <Widget>[
                                  SizedBox(width: width * 0.06), // Responsive width
          
                  Text(
                    'End',
                   style: TextStyle(fontSize: width * 0.042,fontWeight: FontWeight.w500,),
                  ),
                                                  SizedBox(width: width * 0.485), // Responsive width
          
                  InkWell(
                    onTap: () {
                      setState(() {
                        _isEditingStartTime = false; // Set editing mode for end time
                      });
                    },
                    child: Text(
                      _endTime != null
                          ? DateFormat('EEE, MMM d    HH:mm:ss').format(_endTime!)
                          : 'Select End Time',
                      style: TextStyle(
                        fontSize: width * 0.033,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.01), // Responsive height
              Divider( thickness: width*0.0015,color: Colors.black,),
              // Time Picker Spinner
              Container(height: height*0.25,
                child: TimePickerSpinner(highlightedTextStyle: TextStyle(fontSize: height*0.038,color: Color(0xff03A9F4,),fontWeight: FontWeight.w500),
                  itemHeight: height*0.08,spacing: width*0.25,itemWidth: width*0.1,
                  is24HourMode: true,
                  isShowSeconds: true,
                  onTimeChange: _updateTime,
                  secondsInterval: 1,
                ),
              ),
              Divider( thickness: width*0.0016,color: Colors.black,),
                          SizedBox(height: height * 0.02), // Responsive height
          
              // Additional Information
              _buildInfoRow(Icons.contact_page_outlined, 'Working', width,height,'None'),
                          Divider(thickness: height*0.0005,),

              SizedBox(height: height * 0.02), // Responsive height
              _buildInfoRow(Icons.description_outlined, 'Project', width,height,'None'),
                          Divider(thickness: height*0.0005,),
          
              SizedBox(height: height * 0.02), // Responsive height
              _buildInfoRow(Icons.list_alt_outlined, 'Task', width,height,'None'),
                            Divider(thickness: height*0.0005,),

              SizedBox(height: height * 0.02), // Responsive height
              _buildInfoRow(Icons.label_outline_rounded, 'Tags', width,height,'None'),

              
              SizedBox(height: height * 0.05), // Responsive height
             
              SizedBox(height: height * 0.02), // Responsive height
            ],
          ),
        ),
      ),
          floatingActionButton: FloatingActionButton(
      onPressed: () {
        // Handle submission logic here
        // For example:
        if (_startTime == null || _endTime == null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Please select both start and end times.'),
            ),
          );
        } else {
          // Process the submission
          print('Start Time: $_startTime');
          print('End Time: $_endTime');
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Times submitted successfully!'),
            ),
          );
        }
      },
      backgroundColor: Color(0xff03A9F4), // Button color
      child: Icon(Icons.check,size: width*0.1,color: Colors.white,), // Use the desired icon
    ),

    );
  }

  Widget _buildInfoRow(IconData icon, String text, double width ,double height, String status) {
    return Container(height: height*0.05,
      child: Row(
        children: <Widget>[
          SizedBox(width: width*0.04,),
          Icon(icon,size: height*0.05,),
          SizedBox(width: width * 0.06), // Responsive width
          Column(crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(fontSize: width * 0.043), // Responsive text size
              ),
               Text(
                status,
                style: TextStyle(fontSize: width * 0.03), // Responsive text size
              ),
            ],
          ),
        ],
      ),
    );
  }
}
