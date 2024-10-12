import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/dimens.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/route/names.dart';
import 'package:watch_store/screen/auth/cubit/auth_cubit.dart';
import 'package:watch_store/widgets/app_text_field.dart';
import 'package:watch_store/widgets/main_button.dart';

// ignore: must_be_immutable
class SendSmsScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  SendSmsScreen({super.key});
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
            AppDimens.large.height,
            AppTextField(
              lable: AppStrings.enterYourNumber,
              hint: AppStrings.hintPhoneNumber,
              controller: _controller,
            ),
            BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) {
                if (state is SentState) {
                  Navigator.pushNamed(context, ScreenNames.verifyCodeScreen,
                      arguments: state.mobile);
                } else if (state is ErrorState) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        duration: Duration(milliseconds: 800),
                        backgroundColor: Colors.red,
                        content: Text("خطایی رخ داده است")));
                }
              },
              builder: (context, state) {
                if (state is LoggedInState) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return MainButton(
                  text: AppStrings.next,
                  onPressed: () {
                  BlocProvider.of<AuthCubit>(context).sendSms(_controller.text); 
                  },
                );
              },
            )
          ],
        ),
      )),
    );
  }
}
