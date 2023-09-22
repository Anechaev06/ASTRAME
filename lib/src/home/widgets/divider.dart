import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class BottomDivider extends StatelessWidget {
  const BottomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      bottom: -7,
      left: 0,
      right: 0,
      child: Divider(
        color: AppColors.primaryColor,
        thickness: 5,
      ),
    );
  }
}
