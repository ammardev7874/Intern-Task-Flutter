import 'package:flutter/material.dart';
import 'package:interntask/widgets/appbar.dart';
import 'package:interntask/widgets/button.dart'; // Import your custom AppBar

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
     appBar:  CustomAppBar(
        title: 'Home',
        imagePath: 'assets/images/ProfilePic (1).png',
        leftIcon: null,
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
      body: Container(height: height,
      width: width,color: Color(0xFFF2F2F2),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: height * 0.175 ,// 20% of screen height
                width: width*0.965,
                child: Stack(
                  children: [
                    Card(
                      color: Color(0xffFFFFFF),
                      margin: EdgeInsets.symmetric(
                        vertical: height * 0.02, // Margin as a percentage of height
                        horizontal: width * 0.04, // Margin as a percentage of width
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 0,
                      child: Padding(
                        padding: EdgeInsets.all(width * 0.04), // Padding as a percentage of width
                        child: Center(
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Update',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: height * 0.014), // Space between text elements
                                  const Text(
                                    'is simply dummy text of the printing &',
                                      style: TextStyle(fontSize: 12.5),                            ),
                                       const Text(
                                    'typesetting industry.',
                                      style: TextStyle(fontSize: 12.5),                            ),
                                  
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                     Positioned(
                      bottom: height*0.0000,
                      left: width*0.58,
                       child: Container(height: height*0.185,
                       width: width*0.32,
                         child: Image.asset(
                                    'assets/images/image 1@4x 1.png',fit: BoxFit.cover,
                                  ),
                                  
                       ),
                     ),
                  ],
                ),
              ),
              Container(
                height: height * 0.43, 
                                width: width*0.965,
// 30% of screen height
                child: Card(
                  elevation: 0,
                                    color: Color(0xffFFFFFF),

                  margin: EdgeInsets.symmetric(
                    vertical: height * 0.02,
                    horizontal: width * 0.04,
                    
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(width * 0.04),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(children: [
                            SizedBox(width: width*0.07,),
                            Container(
                            
                         child: Image.asset(
                                    'assets/images/Vector 8 (1).png',fit: BoxFit.cover,
                                  ),
                                  
                       ),
                                                   SizedBox(width: width*0.15,),

                       Container(
                         child: Image.asset(
                                    'assets/images/Group 1374.png',fit: BoxFit.cover,
                                  ),
                                  
                       ),
                                                                          SizedBox(width: width*0.13,),

                       Container(
                         child: Image.asset(
                                    'assets/images/Vector 9.png',fit: BoxFit.cover,
                                  ),
                                  
                       ),
                       ],),
                       SizedBox(height: height*0.02,),
                          Container(height: height*0.1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(width: width * 0.04), // Spacing between icons and text
                                Container(height: height*0.068,width: width*0.15,decoration: BoxDecoration(color: Color(0xFFFEEDED),borderRadius: BorderRadius.circular(width*0.02)),child: Center(child: const Text('00',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),))),
                                SizedBox(width: width * 0.04),
                                Container(height: height*0.068,width: width*0.15,decoration: BoxDecoration(color: Color(0xFFFEEDED),borderRadius: BorderRadius.circular(width*0.02)),child: Center(child: const Text('00',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),))),
                                SizedBox(width: width * 0.04),
                                Container(height: height*0.068,width: width*0.15,decoration: BoxDecoration(color: Color(0xFFFEEDED),borderRadius: BorderRadius.circular(width*0.02)),child: Center(child: const Text('00',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),))),
                                SizedBox(width: width * 0.04),
                                const Text('HRS'),
                              ],
                            ),
                          ),
                          SizedBox(height: height * 0.02),
                          Divider(thickness: height*0.005,color: Color(0xFFE9E3E3),),
                                                    SizedBox(height: height * 0.015),

                          const Text(
                            'GENERAL 09:00 AM TO 06:00 PM',
                            style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: height * 0.02),
                          Container(height: height*.05,width: width*0.4,child: Center(child: Text("CHECK IN",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),decoration: BoxDecoration(color: Color(0xFF4FC7B1),borderRadius: BorderRadius.circular(height*0.02),),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.3, 
                                width: width*0.965,
// 30% of screen height
                child: Card(
                  
                                    color: Color(0xffFFFFFF),
                  margin: EdgeInsets.symmetric(
                    vertical: height * 0.02,
                    horizontal: width * 0.04,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                  child: Padding(
                    padding: EdgeInsets.all(width * 0.04),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container( height: height*0.06,
                              width: width*0.13,
                              decoration: BoxDecoration(color: Color(0xFFBCD2EE),borderRadius: BorderRadius.circular(height*0.1)),
                                child: Image.asset(
                                  'assets/images/Group 1371.png',
                                  height: width * 0.10,
                                  width: width * 0.10,
                                ),
                              ),
                              SizedBox(width: width * 0.055),
                              const Text('Leave Report',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          SizedBox(height: height * 0.07),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container( height: height*0.06,
                              width: width*0.13,
                              decoration: BoxDecoration(color: Color(0xFFC0EDE5),borderRadius: BorderRadius.circular(height*0.1)),
                                child: Image.asset(
                                  'assets/images/Polygon 5.png',
                                  height: width * 0.18,
                                  width: width * 0.18,
                                ),
                              ),
                              SizedBox(width: width * 0.055),
                              const Text('Annual Report',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
