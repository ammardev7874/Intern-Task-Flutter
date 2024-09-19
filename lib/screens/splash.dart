import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interntask/screens/home.dart';
import 'package:interntask/screens/loginPage.dart';
import 'package:interntask/widgets/button.dart';  // Import your custom button

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    // Get the size of the screen
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    // You can now use height and width to adjust your layout
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: const Color(0xFFFCEBDB), // Semi-transparent orange color

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: height * 0.044),
            SizedBox(
              height: height * 0.06,
              width: width,
              child: SvgPicture.asset('assets/images/Group 51.svg'),
            ),
            SizedBox(height: height * 0.12),
            // Replace with your image asset
            SizedBox(
              height: height * 0.35,
              width: width,
              child: Image.asset('assets/images/dodos bg@4x 1.png'),
            ),
            Container(
              width: width,
              height: height * 0.425,
              decoration: BoxDecoration(
                color: const Color(0xFFF2994A),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(height * 0.03),
                  topLeft: Radius.circular(height * 0.03),
                ),
              ),
              child: Column(
                children: [

                  SizedBox(height: height * 0.05), // Add some spacing
                 SizedBox(
                  width: width*0.85,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [ Text(
                    "Welcome!",

                    style: GoogleFonts.openSans(
                        fontSize: height * 0.034,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: height * 0.01), // Add some spacing
                  Text(
                    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                    style: GoogleFonts.openSans(
                        fontSize: height * 0.0168,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),],),),
                  SizedBox(height: height * 0.08), // Add space before the button
                  
                  // Custom Button Widget with set height and width
                  CustomButton(
                    onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginPage()));
                    },
                    text: 'Sign In',
                    textStyle: GoogleFonts.montserrat(),
                    
                    height: height * 0.07,  // Setting custom height
                    width: width * 0.9, color: Colors.white, textColor: Colors.black,     // Setting custom width
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
