import 'package:flutter/material.dart';

class HeadLine extends StatelessWidget {
  const HeadLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("ASTRAME", style: Theme.of(context).textTheme.headlineLarge);
  }
}
