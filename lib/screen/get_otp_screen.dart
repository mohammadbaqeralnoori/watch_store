import 'package:flutter/material.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/dimens.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/route/names.dart';
import 'package:watch_store/widgets/app_text_field.dart';
import 'package:watch_store/widgets/main_button.dart';

class GetOtpScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  GetOtpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(Assets.png.mainLogo.path),
            AppDimens.meduim.height,
            Text(AppStrings.otpCodeSendFor
                .replaceAll(AppStrings.replace, "09371778560"), style: AppTextStyles.title,),
            AppDimens.small.height,
            const Text(AppStrings.wrongNumberEditNumber, style: AppTextStyles.primaryThemeTextStyle,),
            AppDimens.large.height,
            AppTextField(
              lable: AppStrings.enterVerificationCode,
              hint: AppStrings.hintVerificationCode,
              controller: _controller,
              perfixLable: "2:56",
            ),
            MainButton(
              text: AppStrings.next,
              onPressed: () =>
                Navigator.pushNamed(context, ScreenNames.registertScreen)
             
            )
          ],
        ),
      )),
    );
  }
}
