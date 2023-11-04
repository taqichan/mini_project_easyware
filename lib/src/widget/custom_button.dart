import 'package:flutter/material.dart';

class CustomBottomWidget extends StatelessWidget {
  const CustomBottomWidget({
    super.key,
    required this.title,
    required this.onTap,
    required this.height,
    required this.width,
  });

  final String title;
  final VoidCallback onTap;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color(0xFF1488CC),
                Color(0xFF2B32B2),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
