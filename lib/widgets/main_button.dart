import 'package:flutter/material.dart';
import 'package:watch_store/components/app_button_style.dart';
import 'package:watch_store/components/text_style.dart';

// ignore: must_be_immutable
class MainButton extends StatelessWidget {
  final String text;
  void Function() onPressed;
  MainButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.07,
      width: size.width * 0.75,
      
      child: ElevatedButton(
        
        style: AppButtonStyle.mainButtonStyle,
        
        onPressed: onPressed, child: Text(text, style: AppTextStyles.mainbutton)),
    );
  }
}
