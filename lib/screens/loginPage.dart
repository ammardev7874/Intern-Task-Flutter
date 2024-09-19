import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interntask/widgets/bottomNav.dart';
import 'package:interntask/widgets/customPainter.dart';
import 'package:interntask/widgets/textField.dart';
import '../widgets/button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the size of the screen using MediaQuery
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.4,
              width: width,
              child: Stack(
                children: [
                  // Background Image
                  Positioned(
                    left: 0,
                    top: 0,
                    child: SizedBox(
                      width: width * 0.5,
                      child: Image.asset(
                        'assets/images/Ellipse 4.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Ellipse 5 SVG
                  Positioned(
                    left: width * 0.34,
                    top: 0,
                    child: SvgPicture.asset(
                      "assets/images/Ellipse 5.svg",
                      width: width * 0.7,
                    ),
                  ),
                  // Group 64 SVG
                  Positioned(
                    top: height * 0.02,
                    left: width * 0.425,
                    child: SvgPicture.asset(
                      "assets/images/Group 64.svg",
                      height: height * 0.063,
                    ),
                  ),
                  // Group 63 SVG
                  Positioned(
                    left: width * 0.4,
                    top: height * 0.1865,
                    child: SvgPicture.asset(
                      "assets/images/Group 63.svg",
                      width: width * 0.19,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Column(
                children: [
                  SizedBox(height: height * 0.09), // Spacing from the top

                  // Use LabeledTextField for Email
                  LabeledTextField(
                    label: 'Email',
                    controller: TextEditingController(),
                    style: GoogleFonts.montserrat(), // Apply Montserrat font
                      heightFraction: 0.07, // Adjust this value as needed

                  ),
                  SizedBox(height: height * 0.02), // Spacing from the top

                  // Use LabeledTextField for Password
                  LabeledTextField(
                    
                    label: 'Password',
                    obscureText: true,
                    controller: TextEditingController(),
                      heightFraction: 0.06, // Adjust this value as needed

                    style: GoogleFonts.montserrat(), // Apply Montserrat font
                  ),

                  // Remember Me checkbox
                  Row(
                    children: [
                      const Checkbox(
                        value: false,
                        onChanged: null, // Disable interaction
                        activeColor: Colors.black, // Checked color
                        checkColor: Colors.black, // Checkmark color
                      ),
                      Text(
                        'Remember Me',
                        style: GoogleFonts.montserrat(), // Apply Montserrat font
                      ),
                      SizedBox(width: width * 0.1) // Spacing between checkbox and text
                    ],
                  ),
                  SizedBox(height: height * 0.02), // Spacing before button

                  // Login button
                  CustomButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BottomNav()),
                      );
                    },
                    text: 'Login',
                    height: height * 0.058,
                    width: width * 0.9,
                    color: const Color(0xFF4FC7B1),
                    textColor: Colors.white,
                    textStyle: GoogleFonts.montserrat(), // Apply Montserrat font
                  ),
                  SizedBox(height: height * 0.03), // Spacing between button and next row

                  // Forgot Password and Sign Up buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space buttons evenly
                    children: [
                      TextButton(
                        onPressed: () {
                          // Handle forgot password
                        },
                        child: Text(
                          'Forgot Password?',
                          style: GoogleFonts.montserrat(
                            color: const Color(0xff1A75FF),
                            fontSize: height*0.0205,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Handle sign up
                        },
                        child: Text(
                          'Sign Up',
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: height*0.0205,
                          ),
                        ),
                      ),
                    ],
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
