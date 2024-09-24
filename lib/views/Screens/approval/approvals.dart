import 'dart:ffi';

import 'package:flutter/material.dart';

class Approval extends StatefulWidget {
  Approval({Key? key}) : super(key: key);

  @override
  _ApprovalState createState() => _ApprovalState();
}

class _ApprovalState extends State<Approval> {
  List<Map<String, dynamic>> applicationData = [
    {
      'type': 'Half Day Application',
      'date': 'Wed, 16 Dec',
      'status': 'Awaiting',
      'reason': 'Casual',
      'm/y': 'December 2022',
    },
    {
      'type': 'Full Day Application',
      'date': 'Mon, 16 Nov',
      'status': 'Approved',
      'reason': 'Sick      ',
      'm/y': 'December 2022',
    },
    {
      'type': '3 Days Application  ',
      'date': 'Mon, 22 Nov ',
      'status': 'Declined',
      'reason': 'Casual',
      'm/y': "",
    },
    {
      'type': 'Full Day Application',
      'date': 'Thu, 01 Nov',
      'status': 'Approved',
      'reason': 'Sick  ',
      'm/y': "",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(height: height,
          width: width * 0.9, // 90% of screen width
          child: ListView.builder(
            
            itemCount: applicationData.length,
            itemBuilder: (context, index) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height*0.02,),
                    Text(
                      applicationData[index]['m/y'],
                      style: TextStyle(fontWeight: FontWeight.w500,fontSize: height*0.016),
                    ),
                                        SizedBox(height: height*0.005,),

                    Container(height: height*0.14,
                      width: width * 0.9, // 90% of screen width
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.2),
                        
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ListTile(
                        
                        title: Row(
                          children: [
                            Text(
                              applicationData[index]['type'],
                              style: TextStyle(fontWeight: FontWeight.w400,fontSize: height*0.017),
                            ),
                            SizedBox(width: width*0.17,),
                            Container(
                              height: height * 0.038, // Adjusted height
                              width: width * 0.25, // Adjusted width
                              decoration: BoxDecoration(
                                color: _getStatusColor(applicationData[index]['status'],
),
                                
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text(
                                  applicationData[index]['status'],
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: height*0.016,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(                                  
applicationData[index]['date'],
style: TextStyle(fontWeight: FontWeight.bold,fontSize: height*0.019,color: Colors.black),),
                            SizedBox(height: height * 0.01,), // Adjusted height
                            Row(
                              children: [
                                Text(
                                  applicationData[index]['reason'],
                                  style: TextStyle(
                                    color: _get1StatusColor(applicationData[index]['status']),
                                    ),
                                    
                                ),  
                                                            SizedBox(width: width*0.57,),
Container(height: height*0.03,width: width*0.07,
                              decoration: BoxDecoration(
                                color: Color(0xffF3F3F1),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Color(0xff7E7878),
                                size: height * 0.025, // Adjusted size
                              ),
                            ),
                              ],
                            ),
                          ],
                        ),
                        // trailing: Column(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     // Container(
                        //     //   height: height * 0.038, // Adjusted height
                        //     //   width: width * 0.25, // Adjusted width
                        //     //   decoration: BoxDecoration(
                        //     //     color: _getStatusColor(applicationData[index]['status']),
                        //     //     borderRadius: BorderRadius.circular(5),
                        //     //   ),
                        //     //   child: Center(
                        //     //     child: Text(
                        //     //       applicationData[index]['status'],
                        //     //       style: TextStyle(
                        //     //         fontSize: height*0.018,
                        //     //         color: Colors.grey,
                        //     //         fontWeight: FontWeight.bold,
                        //     //       ),
                        //     //     ),
                        //     //   ),
                        //     // ),
                        //     // Container(height: height*0.035,width: width*0.09,
                        //     //   decoration: BoxDecoration(
                        //     //     color: Color(0xffF3F3F1),
                        //     //     borderRadius: BorderRadius.circular(5),
                        //     //   ),
                        //     //   child: Icon(
                        //     //     Icons.arrow_forward_ios_rounded,
                        //     //     color: Color(0xff7E7878),
                        //     //     size: height * 0.025, // Adjusted size
                        //     //   ),
                        //     // ),
                        //   ],
                        // ),
                      ),
                    ),
                    
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'Awaiting':
        return Color(0xffFFEFC2);
      case 'Approved':
        return Color(0xffB5F4D1);
      case 'Declined':
        return Color(0xffFDEFEC);
      default:
        return Color(0xffB5F4D1);
    }
  }
  Color _get1StatusColor(String status) {
    switch (status) {
      case 'Awaiting':
        return Color(0xffEFB524);
      case 'Approved':
        return Color(0xff7C83F6);
      case 'Declined':
        return Color(0xffEFB524);
      default:
        return Color(0xff7C83F6);
    }
  }
}
