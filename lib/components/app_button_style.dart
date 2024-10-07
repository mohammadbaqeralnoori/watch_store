import 'package:flutter/material.dart';
import 'package:watch_store/res/dimens.dart';

class AppButtonStyle {
  AppButtonStyle._(); // Private constructor to prevent instantiation

  static ButtonStyle mainButtonStyle = ButtonStyle(
    backgroundColor: const WidgetStatePropertyAll<Color>(Colors.blue), // Background color for the button
    foregroundColor: const WidgetStatePropertyAll<Color>(Colors.white), // Text color or icon color
    shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimens.meduim), // Rounded corners
      ),
    ),
  );
}
