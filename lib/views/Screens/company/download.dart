import 'package:flutter/material.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({super.key});

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFFF2F2F2),
    
  body: Center(
    child: Container(height: 300,width: 200,
    child: Column(
      children: [
        Image.asset("assets/images/no-data.png",fit: BoxFit.cover,),
        Text("No Data Found",style: TextStyle(fontSize: 20),)
      ],
    ),
    
    ),
  ),
    );
  }
}