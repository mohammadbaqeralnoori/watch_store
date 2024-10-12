import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/widgets/count_container.dart';

class CartBadge extends StatelessWidget {
  const CartBadge({super.key, this.count = 0});
  // ignore: prefer_typing_uninitialized_variables
  final count;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(
          height: 32,
          width: 32,
        ),
        SvgPicture.asset(
          Assets.svg.cart,
          colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
        ),
        countContainer(),
      ],
    );
  }

  
}