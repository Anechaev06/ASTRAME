import 'package:flutter/material.dart';

class Name extends StatelessWidget {
  const Name({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double imageSize = screenWidth > 800 ? 120 : 80;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Vlad Nechaev",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                "entrepreneur & flutter developer",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ),
        ClipOval(
          child: Image.asset(
            "assets/ava.png",
            width: imageSize,
            height: imageSize,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
