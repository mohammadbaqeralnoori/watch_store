import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimens.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/widgets/app_slider.dart';
import 'package:watch_store/widgets/cat_widget.dart';
import 'package:watch_store/widgets/product_Item.dart';
import 'package:watch_store/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SearchBtn(
                onTap: () {},
              ),
              const AppSlider(
                imagList: [],
              ),
              // cat...
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CatWidget(
                      title: AppStrings.desktop,
                      onTop: () {},
                      colors: AppColors.catDesktopColors,
                      iconPath: Assets.svg.desktop),
                  CatWidget(
                      title: AppStrings.digital,
                      onTop: () {},
                      colors: AppColors.catDigitalColors,
                      iconPath: Assets.svg.digital),
                  CatWidget(
                      title: AppStrings.smart,
                      onTop: () {},
                      colors: AppColors.catSmartColors,
                      iconPath: Assets.svg.smart),
                  CatWidget(
                      title: AppStrings.classic,
                      onTop: () {},
                      colors: AppColors.catClasicColors,
                      iconPath: Assets.svg.clasic),
                ],
              ),
              AppDimens.large.height,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                reverse: true,
                child: Row(
                  children: [
                    SizedBox(
                      height: 300,
                      child: ListView.builder(
                          physics: const ClampingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: 8,
                          shrinkWrap: true,
                          reverse: true,
                          itemBuilder: (context, index) => 
                          
                          ProductItem(productName: "productName", price: 200, time: 100,discont: 30,)),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: VerticalText(),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


class VerticalText extends StatelessWidget {
  const VerticalText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RotatedBox(
        quarterTurns: -1,
        child: Column(
          children: [
            Row(
              children: [
                Transform.rotate(
                  angle: 1.5,
                  child: SvgPicture.asset(Assets.svg.back)),
                  AppDimens.meduim.width,
                const Text("مشاهده همه"),
              ],
            ),
            const Text("شگفت انگیز", style: AppTextStyles.amazingStyle,),
          ],
        ),
      ),
    );
  }
}
