


import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/res/dimens.dart';

class CatWidget extends StatelessWidget {
  const CatWidget({
    super.key,
    required this.title,
    required this.onTop,
    required this.colors,
    required this.iconPath,
  });
  final title;
  final onTop;
  final colors;
  final iconPath;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTop,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(AppDimens.small),
            height: size.height * 0.1,
            width: size.height * 0.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppDimens.large),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: colors),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                  child: SvgPicture.asset(iconPath)),
              ],
            ),
          ),
          const SizedBox(
            height: AppDimens.small * 0.5,
          ),
          Text(
            title,
            style: AppTextStyles.title.copyWith(fontSize: 18),
          )
        ],
      ),
    );
  }
}


