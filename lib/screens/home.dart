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
      appBar: AppBarWidget(

        title: 'Home',

        searchIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search_sharp)), notificationIcon: IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none_sharp)), leadingImagePath: '',
      ), // Use your custom AppBar here
      body: Container(height: height,
      width: width,color: Color(0xFFF2F2F2),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: height * 0.16, // 20% of screen height
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
                                  SizedBox(height: height * 0.01), // Space between text elements
                                  const Text(
                                    'is simply dummy text of the printing &',
                                      style: TextStyle(fontSize: 14),                            ),
                                       const Text(
                                    'typesetting industry.',
                                      style: TextStyle(fontSize: 14),                            ),
                                  
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                     Positioned(
                      top: height*0.0,
                      left: width*0.58,
                       child: Container(height: height*0.155,
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
                                                   SizedBox(width: width*0.17,),

                       Container(
                         child: Image.asset(
                                    'assets/images/Group 1374.png',fit: BoxFit.cover,
                                  ),
                                  
                       ),
                                                                          SizedBox(width: width*0.17,),

                       Container(
                         child: Image.asset(
                                    'assets/images/Vector 9.png',fit: BoxFit.cover,
                                  ),
                                  
                       ),
                       ],),
                          Container(height: height*0.1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(width: width * 0.04), // Spacing between icons and text
                                Container(height: height*0.068,width: width*0.15,decoration: BoxDecoration(color: Color(0xFFFEEDED),borderRadius: BorderRadius.circular(width*0.02)),child: Center(child: const Text('00',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w500),))),
                                SizedBox(width: width * 0.04),
                                Container(height: height*0.068,width: width*0.15,decoration: BoxDecoration(color: Color(0xFFFEEDED),borderRadius: BorderRadius.circular(width*0.02)),child: Center(child: const Text('00',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w500),))),
                                SizedBox(width: width * 0.04),
                                Container(height: height*0.068,width: width*0.15,decoration: BoxDecoration(color: Color(0xFFFEEDED),borderRadius: BorderRadius.circular(width*0.02)),child: Center(child: const Text('00',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w500),))),
                                SizedBox(width: width * 0.04),
                                const Text('HRS'),
                              ],
                            ),
                          ),
                          SizedBox(height: height * 0.02),
                          Divider(thickness: height*0.005,color: Color(0xFFE9E3E3),),
                          const Text(
                            'GENERAL 09:00 AM TO 06:00 PM',
                            style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: height * 0.02),
                          Container(height: height*.05,width: width*0.25,child: Center(child: Text("CHECK IN",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),decoration: BoxDecoration(color: Color(0xFF4FC7B1),borderRadius: BorderRadius.circular(height*0.1),),)
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
                  elevation: 4,
                  child: Padding(
                    padding: EdgeInsets.all(width * 0.04),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container( height: height*0.07,
                              width: width*0.15,
                              decoration: BoxDecoration(color: Color(0xFFBCD2EE),borderRadius: BorderRadius.circular(height*0.1)),
                                child: Image.asset(
                                  'assets/images/Group 1371.png',
                                  height: width * 0.18,
                                  width: width * 0.18,
                                ),
                              ),
                              SizedBox(width: width * 0.055),
                              const Text('Leave Report',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          SizedBox(height: height * 0.07),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container( height: height*0.07,
                              width: width*0.15,
                              decoration: BoxDecoration(color: Color(0xFFC0EDE5),borderRadius: BorderRadius.circular(height*0.1)),
                                child: Image.asset(
                                  'assets/images/Polygon 5.png',
                                  height: width * 0.18,
                                  width: width * 0.18,
                                ),
                              ),
                              SizedBox(width: width * 0.055),
                              const Text('Annual Report',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
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
