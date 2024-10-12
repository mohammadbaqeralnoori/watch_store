// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimens.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/widgets/app_bar.dart';
import 'package:watch_store/widgets/surface_container.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const CustomAppBar(
          child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          AppStrings.profile,
          style: AppTextStyles.title,
        ),
      )),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppDimens.large),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppDimens.large.height,
                ClipRRect(
                  borderRadius: BorderRadius.circular(300),
                  child: Image.asset(Assets.png.avatar.path),
                ),
                AppDimens.meduim.height,
                const Text(
                  "Mohammad noori",
                  style: AppTextStyles.avatarText,
                ),
                AppDimens.meduim.height,
                const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      AppStrings.activeAddress,
                      style: AppTextStyles.title,
                    )),
                Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      children: [
                        SvgPicture.asset(Assets.svg.leftArrow),
                        const Expanded(
                          child: Text(
                            AppStrings.lurem,
                            style: AppTextStyles.title,
                            softWrap: true,
                            maxLines: 2,
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    )),
                AppDimens.small.height,
                Container(
                  height: 2,
                  width: double.infinity,
                  color: AppColors.surfaceColor,
                ),
                AppDimens.small.height,
                ProfileItem(svgIcon: Assets.svg.cart, content: "45845",),
                ProfileItem(svgIcon: Assets.svg.phone, content: "09371778560",),
                ProfileItem(svgIcon: Assets.svg.user, content: "محمد باقر",),
                const SurfaceContainer(child: Align(
                  alignment: Alignment.centerRight,
                  child: Text("قوانین و مقررات"))),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key,
    required this.svgIcon,
    required this.content,
  });

  final svgIcon;
  final content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppDimens.small),
      child: Align(
          alignment: Alignment.centerRight,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  content,
                  style: AppTextStyles.title,
                  softWrap: true,
                  maxLines: 2,
                  textAlign: TextAlign.right,
                ),
              ),
              AppDimens.small.width,
              SvgPicture.asset(svgIcon),
            ],
          )),
    );
  }
}
