
import 'package:e_comarce/presentation/utils/app_colors.dart';
import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
        required this.buttonWidth,
        required this.buttonHeight,
        required this.buttonText, required this.onTap});
  final double buttonWidth;
  final double buttonHeight;
  final String buttonText;
  final VoidCallback onTap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: buttonWidth,
        height: buttonHeight,
        decoration: BoxDecoration(
          color:AppColors.buttonColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          buttonText,
          style:TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}