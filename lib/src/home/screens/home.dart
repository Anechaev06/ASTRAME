import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final Widget layout = _chooseLayout(screenWidth);

    return Scaffold(
      body: Stack(
        children: [
          layout,
          const BottomDivider(),
        ],
      ),
    );
  }

  Widget _chooseLayout(double width) {
    final double horizontalPadding = _calculateHorizontalPadding(width);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: _commonLayout(),
    );
  }

  double _calculateHorizontalPadding(double width) {
    if (width < 600) {
      return 25.0;
    } else if (width >= 600 && width < 1200) {
      return 100.0;
    } else {
      return 400.0;
    }
  }

  Widget _commonLayout() {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        HeadLine(),
        SizedBox(height: 25),
        Name(),
        SizedBox(height: 25),
        Projects(),
        SizedBox(height: 25),
        Contact(),
      ],
    );
  }
}
