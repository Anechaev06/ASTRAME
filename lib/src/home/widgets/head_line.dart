import 'package:astrame/src/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class HeadLine extends StatelessWidget {
  const HeadLine({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "ASTRAME",
      style: TextStyle(
        color: AppColors.primaryColor,
        fontWeight: FontWeight.bold,
        fontSize: 40,
      ),
    );
  }
}
