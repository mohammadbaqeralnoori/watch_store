

import 'package:flutter/material.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimens.dart';

class SurfaceContainer extends StatelessWidget {
  
  const SurfaceContainer({
    super.key,
    required this.child,
  });

  // ignore: prefer_typing_uninitialized_variables
  final child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(AppDimens.meduim , AppDimens.meduim, AppDimens.meduim, 0),
      padding: const EdgeInsets.all(AppDimens.meduim),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimens.meduim),
        color: AppColors.surfaceColor
      ),
      child: child,
    );
  }
}
