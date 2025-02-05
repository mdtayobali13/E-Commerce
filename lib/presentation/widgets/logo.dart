import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key, required this.imagePath});
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(width: 0),
          color: Colors.grey[50]),
      child: Image.asset(
        imagePath,
        height: 40,
      ),
    );
  }
}