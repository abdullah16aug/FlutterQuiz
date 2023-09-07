
import 'package:flutter/material.dart';
import 'package:quiz/screens/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.buttonText,
      this.isOutlined = false,
      required this.onPressed,
      this.width = 280});

  final String buttonText;
  final bool isOutlined;
  final Function onPressed;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Material(
        borderRadius: BorderRadius.circular(30),
        elevation: 4,
        child: Container(
          width: width,
          padding: const EdgeInsets.all(13),
          decoration: BoxDecoration(
            color: isOutlined ? Colors.white : kTextColor,
            border: Border.all(color: kTextColor, width: 2.5),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: isOutlined ? kTextColor : Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BackgroundWidget extends StatelessWidget {
  final String backgroundImagePath;
  final String title;
  final num height;
  final List<Widget> children; // List of widgets to be displayed on top of the background
  final Widget content;

  BackgroundWidget({
    required this.backgroundImagePath,
    required this.title,
    required this.content,
    required this.height,
    this.children = const [], // Initialize with an empty list by default
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // First Half: Fixed Background Image
          Container(
            height: MediaQuery.of(context).size.height * height, // Half of the screen height
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImagePath),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // Second Half: Content
          Container(
            height: MediaQuery.of(context).size.height * 0.5, // Half of the screen height
            color: Colors.white, // Background color for the second half
            child: Stack(
              children: [
                // Custom widgets added by the user
                ...children,

                // Default content
                Center(child: content),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
