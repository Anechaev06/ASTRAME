import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: _chooseLayout(screenWidth),
      ),
    );
  }

  Widget _chooseLayout(double width) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: _calculateHorizontalPadding(width)),
      child: _commonLayout(),
    );
  }

  double _calculateHorizontalPadding(double width) {
    if (width < 600) return 25.0;
    if (width < 1200) return 125.0;
    return 425.0;
  }

  Widget _commonLayout() {
    const spacer = SizedBox(height: 15);
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        HeadLine(),
        spacer,
        Name(),
        spacer,
        Projects(),
        spacer,
        Contact(),
      ],
    );
  }
}
