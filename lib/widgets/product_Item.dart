import 'package:flutter/material.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimens.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.productName,
    required this.price,
    this.oldPrice = 0,
    this.discont = 0,
    this.time = 0,
  });

  final productName;
  final price;
  final oldPrice;
  final discont;
  final time;
  

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: const EdgeInsets.all(AppDimens.small),
          margin: const EdgeInsets.all(AppDimens.meduim),
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(AppDimens.meduim),
            gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: AppColors.productBgGradiant),
          ),
          width: 200,
          child: Column(
            children: [
              Image.asset(Assets.png.unnamed.path),
              Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    productName,
                    style: AppTextStyles.productTitle,
                  )),
              AppDimens.meduim.height,
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${63500.separateWithComma} تومان",
                        style: AppTextStyles.title,
                      ),
                      Visibility(
                        visible: discont > 0 ? true : false,
                        child: Text(
                          12200.separateWithComma,
                          style:
                              AppTextStyles.oldPriceStyle,
                        ),
                      ),
                    ],
                  ),
                  Visibility(
                    visible: discont > 0 ? true : false,
                    child: Container(
                      padding: const EdgeInsets.all(
                          AppDimens.small * 0.5),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(60),
                          color: Colors.red),
                      child: Text("$discont %"),
                    ),
                  )
                ],
              ),
              AppDimens.large.height,
              Visibility(
                visible: time > 0 ? true : false,
                child: Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.blue,
                ),
              ),
              AppDimens.meduim.height,
              Visibility(
                visible: time > 0 ? true : false,
                child: const Text(
                  "09:26:22",
                  style: AppTextStyles.prodTimerStyle,
                ),
              )
            ],
          ),
        );
  }
}
