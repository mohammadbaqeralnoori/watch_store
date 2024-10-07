import 'package:flutter/material.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/res/dimens.dart';

// ignore: must_be_immutable
class AppTextField extends StatelessWidget {
  final String lable;
  final String perfixLable;
  final String hint;
  TextEditingController controller;
  final Widget icon;
  final TextAlign textAlign;
  TextInputType? inputType;

  AppTextField(
      {super.key,
      required this.lable,
      required this.hint,
      required this.controller,
      this.icon = const SizedBox(),
      this.perfixLable = '',
      this.textAlign = TextAlign.center,
      this.inputType});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(AppDimens.meduim),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: size.width * 0.75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(perfixLable, style: AppTextStyles.title),
                Text(lable, style: AppTextStyles.title,),
              ],
            ),
          ),
          AppDimens.meduim.height,
          SizedBox(
            height: size.height * 0.07,
            width: size.width * 0.75,
            child: TextField(
              textAlign: textAlign,
              controller: controller,
              keyboardType: inputType,
              decoration: InputDecoration(
                hintStyle: AppTextStyles.hint,
                hintText: hint,
                prefixIcon: icon,
              ),
            ),
          )
        ],
      ),
    );
  }
}
