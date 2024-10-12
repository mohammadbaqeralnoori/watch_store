

import 'package:flutter/material.dart';
import 'package:watch_store/route/names.dart';
import 'package:watch_store/screen/auth/verify_code_screen.dart';
import 'package:watch_store/screen/mainscreen/main_screen.dart';
import 'package:watch_store/screen/product_list_screen.dart';
import 'package:watch_store/screen/product_single_screen.dart';
import 'package:watch_store/screen/register_screen.dart';
import 'package:watch_store/screen/auth/send_sms_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {


  ScreenNames.sendSmsScreen : (context) => SendSmsScreen(),
  ScreenNames.verifyCodeScreen : (context) => const VerifyCodeScreen(),
  ScreenNames.registertScreen : (context) => const RegisterScreen(),
  ScreenNames.mainScreen : (context) => const MainScreen(),
  ScreenNames.productListScreen : (context) => const ProductListScreen(),
  ScreenNames.productSingleScreen : (context) => const ProductSingleScreen(),
};