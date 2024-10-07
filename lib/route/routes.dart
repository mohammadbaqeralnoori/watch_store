

import 'package:flutter/material.dart';
import 'package:watch_store/route/names.dart';
import 'package:watch_store/screen/get_otp_screen.dart';
import 'package:watch_store/screen/mainscreen/main_screen.dart';
import 'package:watch_store/screen/product_list_screen.dart';
import 'package:watch_store/screen/product_single_screen%20copy.dart';
import 'package:watch_store/screen/register_screen.dart';
import 'package:watch_store/screen/send_otp_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {


  ScreenNames.root : (context) => SendOtpScreen(),
  ScreenNames.getOtpScreen : (context) => GetOtpScreen(),
  ScreenNames.registertScreen : (context) => RegisterScreen(),
  ScreenNames.mainScreen : (context) => MainScreen(),
  ScreenNames.productListScreen : (context) => const ProductListScreen(),
  ScreenNames.productSingleScreen : (context) => const ProductSingleScreen(),
};