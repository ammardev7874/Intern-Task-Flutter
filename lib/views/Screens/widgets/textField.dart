import 'package:flutter/material.dart';

class LabeledTextField extends StatelessWidget {
  final String label;
  final bool obscureText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final double heightFraction; // Fraction of screen height for text field height

  const LabeledTextField({
    super.key,
    required this.label,
    this.obscureText = false,
    this.controller,
    this.keyboardType,
    this.heightFraction = 0.06, required TextStyle style, // Default height fraction
  });

  @override
  Widget build(BuildContext context) {
    // Get the size of the screen using MediaQuery
    final height = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style:  TextStyle(
            color: Colors.black,
            fontSize: height*0.025,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 0), // Add some space between the label and text field
        SizedBox(
          height: height * heightFraction, // Set height based on screen height
          child: TextField(
            controller: controller,
            obscureText: obscureText,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13.0),
                borderSide: const BorderSide(color: Colors.black, width: 0.7),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13.0),
                borderSide: const BorderSide(color: Colors.black, width: 0.7),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13.0),
                borderSide: const BorderSide(color: Colors.black, width: 0.7),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12), // Add padding inside the TextField
            ),
          ),
        ),
      ],
    );
  }
}
