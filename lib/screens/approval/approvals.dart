

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
    },
    {
      'type': 'Full Day Application',
      'date': 'Mon, 16 Nov',
      'status': 'Approved',
      'reason': 'Sick',
    },
    {
      'type': '3 Days Application',
      'date': 'Mon, 22 Nov - Fri, 25 Nov',
      'status': 'Declined',
      'reason': 'Casual',
    },
    {
      'type': 'Full Day Application',
      'date': 'Thu, 01 Nov',
      'status': 'Approved',
      'reason': 'Sick',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Application List'),
        leading: Icon(Icons.menu),
       
      ),
      body: ListView.builder(
        itemCount: applicationData.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(
                applicationData[index]['type'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(applicationData[index]['date']),
                  SizedBox(height: 4),
                  Text(
                    'Reason: ${applicationData[index]['reason']}',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              trailing: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: _getStatusColor(applicationData[index]['status']),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  applicationData[index]['status'],
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'Awaiting':
        return Colors.orange;
      case 'Approved':
        return Colors.green;
      case 'Declined':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
}