import 'package:astrame/src/core/constants/app_colors.dart';
import 'package:astrame/src/home/widgets/contact.dart';
import 'package:astrame/src/home/widgets/head_line.dart';
import 'package:astrame/src/home/widgets/name.dart';
import 'package:astrame/src/home/widgets/projects.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  Widget _chooseLayout(double width) {
    if (width < 600) {
      return _mobileLayout();
    } else if (width >= 600 && width < 1200) {
      return _tabletLayout();
    } else {
      return _desktopLayout();
    }
  }

  Widget _desktopLayout() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 300),
      child: _commonLayout(),
    );
  }

  Widget _tabletLayout() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: _commonLayout(),
    );
  }

  Widget _mobileLayout() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: _commonLayout(),
    );
  }

  Widget _commonLayout() {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 25),
        HeadLine(),
        SizedBox(height: 25),
        Name(),
        SizedBox(height: 25),
        Projects(),
        SizedBox(height: 25),
        Contact(),
        SizedBox(height: 25),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          _chooseLayout(screenWidth),
          const Positioned(
            bottom: -5,
            left: 0,
            right: 0,
            child: Divider(
              color: AppColors.primaryColor,
              thickness: 2,
            ),
          ),
        ],
      ),
    );
  }
}
